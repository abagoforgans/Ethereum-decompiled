contract main {


// =======================  Init code  ======================


address stor2;
uint256 stor3;
mapping of uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address stor14;

function _fallback() payable {
    stor5 = 0
    stor6 = 10^18
    stor9 = 0
    stor13 = 50
    require not msg.value
    mem[96 len -6822] = code.data[7309 len -6822]
    mem[64] = -6726
    require mem[128] >= mem[96]
    require mem[192] > 0
    stor2 = msg.sender
    stor11 = mem[96]
    stor12 = mem[128]
    stor10 = mem[192]
    stor3 = mem[mem[160] + 96]
    idx = 0
    while idx < stor3:
        require idx < mem[mem[160] + 96]
        mem[0] = mem[(32 * idx) + mem[160] + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + mem[160] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor14 = stor2
    return code.data[487 len 6822]
}



// =====================  Runtime code  =====================


#
#  - reportProfit(int256 arg1, address arg2)
#
const name = 'LUNA'

const decimals = 18

const managementFees = 10

const symbol = 'LUNA'

const hardCap = 32000 * 10^18


uint256 stor0;
uint256 totalSupply;
mapping of uint256 stor1;
address stor2;
uint256 teamNum;
mapping of uint8 stor4;
bool stor5;
uint256 stor5; offset 1
uint256 tokensFrozen;
uint256 tokenValue;
array of struct stor7;
mapping of uint256 stor8;
uint256 aum;
uint256 tokensPerEth;
uint256 icoStart;
uint256 icoEnd;
uint256 dripRate;
address currentSaleAddress;

function icoEnd() {
    return icoEnd
}

function aum() {
    return aum
}

function totalSupply() {
    return uint256(totalSupply)
}

function tokenValue() {
    return tokenValue
}

function teamNum() {
    return teamNum
}

function tokensFrozen() {
    return tokensFrozen
}

function icoStart() {
    return icoStart
}

function currentSaleAddress() {
    return currentSaleAddress
}

function tokensPerEth() {
    return tokensPerEth
}

function dripRate() {
    return dripRate
}

function liquidate() {
    require bool(stor4[address(msg.sender)]) == 1
    selfdestruct(stor2)
}

function participate(address arg1) payable {
    require arg1
    require block.timestamp >= icoStart
    require block.timestamp <= icoEnd
    require msg.value > 0
    if not msg.value:
        require uint256(totalSupply) >= uint256(totalSupply)
        require uint256(totalSupply) <= 32000 * 10^18
        require stor1[address(arg1)] >= stor1[address(arg1)]
        require uint256(totalSupply) >= uint256(totalSupply)
        bool(stor5.field_0) = 0
        uint255(stor5.field_1) = uint255(stor0)
        aum = uint256(totalSupply)
        call stor2 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Participate(0, arg1);
        emit Transfer(0, 0, arg1);
    else:
        require msg.value
        require msg.value * tokensPerEth / msg.value == tokensPerEth
        require uint256(totalSupply) + (msg.value * tokensPerEth) >= uint256(totalSupply)
        require uint256(totalSupply) + (msg.value * tokensPerEth) <= 32000 * 10^18
        require stor1[address(arg1)] + (msg.value * tokensPerEth) >= stor1[address(arg1)]
        stor1[address(arg1)] += msg.value * tokensPerEth
        require uint256(totalSupply) + (msg.value * tokensPerEth) >= uint256(totalSupply)
        uint256(totalSupply) += msg.value * tokensPerEth
        bool(stor5.field_0) = 0
        uint255(stor5.field_1) = uint255(stor0)
        aum = uint256(totalSupply)
        call stor2 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Participate((msg.value * tokensPerEth), arg1);
        emit Transfer((msg.value * tokensPerEth), 0, arg1);
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= icoStart
    require block.timestamp <= icoEnd
    require msg.value > 0
    if not msg.value:
        require uint256(totalSupply) >= uint256(totalSupply)
        require uint256(totalSupply) <= 32000 * 10^18
        require stor1[address(msg.sender)] >= stor1[address(msg.sender)]
        require uint256(totalSupply) >= uint256(totalSupply)
        bool(stor5.field_0) = 0
        uint255(stor5.field_1) = uint255(stor0)
        aum = uint256(totalSupply)
        call stor2 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Participate(0, msg.sender);
        emit Transfer(0, 0, msg.sender);
    else:
        require msg.value
        require msg.value * tokensPerEth / msg.value == tokensPerEth
        require uint256(totalSupply) + (msg.value * tokensPerEth) >= uint256(totalSupply)
        require uint256(totalSupply) + (msg.value * tokensPerEth) <= 32000 * 10^18
        require stor1[address(msg.sender)] + (msg.value * tokensPerEth) >= stor1[address(msg.sender)]
        stor1[address(msg.sender)] += msg.value * tokensPerEth
        require uint256(totalSupply) + (msg.value * tokensPerEth) >= uint256(totalSupply)
        uint256(totalSupply) += msg.value * tokensPerEth
        bool(stor5.field_0) = 0
        uint255(stor5.field_1) = uint255(stor0)
        aum = uint256(totalSupply)
        call stor2 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Participate((msg.value * tokensPerEth), msg.sender);
        emit Transfer((msg.value * tokensPerEth), 0, msg.sender);
}

function getOwedDividend(address arg1) {
    if stor8[address(arg1)] == stor7.length:
        return 0, 64, 0
    if not stor1[address(arg1)]:
        if bool(stor4[address(arg1)]) != 1:
            return 0, 64, 0
    mem[224] = stor7.length - stor8[address(arg1)]
    s = 0
    idx = stor8[address(arg1)]
    s = stor1[address(arg1)]
    t = 0
    while idx < stor7.length:
        if not s:
            if stor7[idx].field_0:
                if not 0 / stor7[idx].field_0:
                    mem[0] = arg1
                    mem[32] = 4
                    if bool(stor4[address(arg1)]) != 1:
                        if t >= t:
                            if idx - stor8[address(arg1)] < mem[224]:
                                mem[(32 * idx - stor8[address(arg1)]) + 256] = 0
                                if s >= s:
                                    s = 0
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                    else:
                        if idx < stor7.length:
                            mem[0] = 7
                            if teamNum:
                                if stor7[idx].field_512 / teamNum >= 0:
                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                        if idx - stor8[address(arg1)] < mem[224]:
                                            mem[(32 * idx - stor8[address(arg1)]) + 256] = stor7[idx].field_512 / teamNum
                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                s = stor7[idx].field_512 / teamNum
                                                idx = idx + 1
                                                s = s + (stor7[idx].field_512 / teamNum)
                                                t = t + (stor7[idx].field_512 / teamNum)
                                                continue 
                else:
                    if 0 / stor7[idx].field_0:
                        if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                            mem[0] = arg1
                            mem[32] = 4
                            if bool(stor4[address(arg1)]) != 1:
                                if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                    if idx - stor8[address(arg1)] < mem[224]:
                                        mem[(32 * idx - stor8[address(arg1)]) + 256] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                        if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                            s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                            idx = idx + 1
                                            s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                            t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                            continue 
                            else:
                                if idx < stor7.length:
                                    mem[0] = 7
                                    if teamNum:
                                        if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                if idx - stor8[address(arg1)] < mem[224]:
                                                    mem[(32 * idx - stor8[address(arg1)]) + 256] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                        s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                        idx = idx + 1
                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                        continue 
        else:
            if s:
                if 10^18 * s / s == 10^18:
                    if stor7[idx].field_0:
                        if not 10^18 * s / stor7[idx].field_0:
                            mem[0] = arg1
                            mem[32] = 4
                            if bool(stor4[address(arg1)]) != 1:
                                if t >= t:
                                    if idx - stor8[address(arg1)] < mem[224]:
                                        mem[(32 * idx - stor8[address(arg1)]) + 256] = 0
                                        if s >= s:
                                            s = 0
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                            else:
                                if idx < stor7.length:
                                    mem[0] = 7
                                    if teamNum:
                                        if stor7[idx].field_512 / teamNum >= 0:
                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                if idx - stor8[address(arg1)] < mem[224]:
                                                    mem[(32 * idx - stor8[address(arg1)]) + 256] = stor7[idx].field_512 / teamNum
                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                        s = stor7[idx].field_512 / teamNum
                                                        idx = idx + 1
                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                        continue 
                        else:
                            if 10^18 * s / stor7[idx].field_0:
                                if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    if bool(stor4[address(arg1)]) != 1:
                                        if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                            if idx - stor8[address(arg1)] < mem[224]:
                                                mem[(32 * idx - stor8[address(arg1)]) + 256] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                    s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                    idx = idx + 1
                                                    s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                    t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                    continue 
                                    else:
                                        if idx < stor7.length:
                                            mem[0] = 7
                                            if teamNum:
                                                if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                        if idx - stor8[address(arg1)] < mem[224]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + 256] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                idx = idx + 1
                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                continue 
        revert
    mem[(32 * stor7.length - stor8[address(arg1)]) + 256] = t
    mem[(32 * stor7.length - stor8[address(arg1)]) + 288] = 64
    mem[(32 * stor7.length - stor8[address(arg1)]) + 320] = mem[224]
    mem[(32 * stor7.length - stor8[address(arg1)]) + 352 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
    return t, 64, mem[(32 * stor7.length - stor8[address(arg1)]) + 320 len (32 * mem[224]) + 32]
}

function balanceOf(address arg1) {
    if stor8[address(arg1)] == stor7.length:
        if stor1[address(arg1)] >= stor1[address(arg1)]:
            return stor1[address(arg1)]
    else:
        if stor1[address(arg1)]:
            mem[224] = stor7.length - stor8[address(arg1)]
            s = 0
            idx = stor8[address(arg1)]
            s = stor1[address(arg1)]
            t = 0
            while idx < stor7.length:
                if not s:
                    if stor7[idx].field_0:
                        if not 0 / stor7[idx].field_0:
                            mem[0] = arg1
                            mem[32] = 4
                            if bool(stor4[address(arg1)]) != 1:
                                if t >= t:
                                    if idx - stor8[address(arg1)] < mem[224]:
                                        mem[(32 * idx - stor8[address(arg1)]) + 256] = 0
                                        if s >= s:
                                            s = 0
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                            else:
                                if idx < stor7.length:
                                    mem[0] = 7
                                    if teamNum:
                                        if stor7[idx].field_512 / teamNum >= 0:
                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                if idx - stor8[address(arg1)] < mem[224]:
                                                    mem[(32 * idx - stor8[address(arg1)]) + 256] = stor7[idx].field_512 / teamNum
                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                        s = stor7[idx].field_512 / teamNum
                                                        idx = idx + 1
                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                        continue 
                        else:
                            if 0 / stor7[idx].field_0:
                                if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    if bool(stor4[address(arg1)]) != 1:
                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                            if idx - stor8[address(arg1)] < mem[224]:
                                                mem[(32 * idx - stor8[address(arg1)]) + 256] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                    s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                    idx = idx + 1
                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                    continue 
                                    else:
                                        if idx < stor7.length:
                                            mem[0] = 7
                                            if teamNum:
                                                if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                    if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                        if idx - stor8[address(arg1)] < mem[224]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + 256] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                            if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                idx = idx + 1
                                                                s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                continue 
                else:
                    if s:
                        if 10^18 * s / s == 10^18:
                            if stor7[idx].field_0:
                                if not 10^18 * s / stor7[idx].field_0:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    if bool(stor4[address(arg1)]) != 1:
                                        if t >= t:
                                            if idx - stor8[address(arg1)] < mem[224]:
                                                mem[(32 * idx - stor8[address(arg1)]) + 256] = 0
                                                if s >= s:
                                                    s = 0
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                    else:
                                        if idx < stor7.length:
                                            mem[0] = 7
                                            if teamNum:
                                                if stor7[idx].field_512 / teamNum >= 0:
                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                        if idx - stor8[address(arg1)] < mem[224]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + 256] = stor7[idx].field_512 / teamNum
                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                s = stor7[idx].field_512 / teamNum
                                                                idx = idx + 1
                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                continue 
                                else:
                                    if 10^18 * s / stor7[idx].field_0:
                                        if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                            mem[0] = arg1
                                            mem[32] = 4
                                            if bool(stor4[address(arg1)]) != 1:
                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                    if idx - stor8[address(arg1)] < mem[224]:
                                                        mem[(32 * idx - stor8[address(arg1)]) + 256] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                            s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                            idx = idx + 1
                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                            continue 
                                            else:
                                                if idx < stor7.length:
                                                    mem[0] = 7
                                                    if teamNum:
                                                        if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                            if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                if idx - stor8[address(arg1)] < mem[224]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + 256] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                        s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        idx = idx + 1
                                                                        s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        continue 
                revert
            if stor1[address(arg1)] + t >= stor1[address(arg1)]:
                return (stor1[address(arg1)] + t)
        else:
            if bool(stor4[address(arg1)]) != 1:
                if stor1[address(arg1)] >= stor1[address(arg1)]:
                    return stor1[address(arg1)]
            else:
                mem[224] = stor7.length - stor8[address(arg1)]
                s = 0
                idx = stor8[address(arg1)]
                s = stor1[address(arg1)]
                t = 0
                while idx < stor7.length:
                    if not s:
                        if stor7[idx].field_0:
                            if not 0 / stor7[idx].field_0:
                                mem[0] = arg1
                                mem[32] = 4
                                if bool(stor4[address(arg1)]) != 1:
                                    if t >= t:
                                        if idx - stor8[address(arg1)] < mem[224]:
                                            mem[(32 * idx - stor8[address(arg1)]) + 256] = 0
                                            if s >= s:
                                                s = 0
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                continue 
                                else:
                                    if idx < stor7.length:
                                        mem[0] = 7
                                        if teamNum:
                                            if stor7[idx].field_512 / teamNum >= 0:
                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                    if idx - stor8[address(arg1)] < mem[224]:
                                                        mem[(32 * idx - stor8[address(arg1)]) + 256] = stor7[idx].field_512 / teamNum
                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                            s = stor7[idx].field_512 / teamNum
                                                            idx = idx + 1
                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                            continue 
                            else:
                                if 0 / stor7[idx].field_0:
                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                        mem[0] = arg1
                                        mem[32] = 4
                                        if bool(stor4[address(arg1)]) != 1:
                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                if idx - stor8[address(arg1)] < mem[224]:
                                                    mem[(32 * idx - stor8[address(arg1)]) + 256] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                        idx = idx + 1
                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                        continue 
                                        else:
                                            if idx < stor7.length:
                                                mem[0] = 7
                                                if teamNum:
                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                            if idx - stor8[address(arg1)] < mem[224]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + 256] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    idx = idx + 1
                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    continue 
                    else:
                        if s:
                            if 10^18 * s / s == 10^18:
                                if stor7[idx].field_0:
                                    if not 10^18 * s / stor7[idx].field_0:
                                        mem[0] = arg1
                                        mem[32] = 4
                                        if bool(stor4[address(arg1)]) != 1:
                                            if t >= t:
                                                if idx - stor8[address(arg1)] < mem[224]:
                                                    mem[(32 * idx - stor8[address(arg1)]) + 256] = 0
                                                    if s >= s:
                                                        s = 0
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                        else:
                                            if idx < stor7.length:
                                                mem[0] = 7
                                                if teamNum:
                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                            if idx - stor8[address(arg1)] < mem[224]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + 256] = stor7[idx].field_512 / teamNum
                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                    s = stor7[idx].field_512 / teamNum
                                                                    idx = idx + 1
                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                    continue 
                                    else:
                                        if 10^18 * s / stor7[idx].field_0:
                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                        if idx - stor8[address(arg1)] < mem[224]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + 256] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                idx = idx + 1
                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[224]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + 256] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            idx = idx + 1
                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                    revert
                if stor1[address(arg1)] + t >= stor1[address(arg1)]:
                    return (stor1[address(arg1)] + t)
    revert
}

function freeze(uint256 arg1) {
    require msg.sender == currentSaleAddress
    if stor8[address(msg.sender)] == stor7.length:
        idx = 0
        while idx < 0:
            require idx < 0
            if mem[(32 * idx) + 256] > 0:
                mem[0] = msg.sender
                mem[32] = 8
                require idx < 0
                _574 = mem[(32 * idx) + 256]
                mem[256] = stor8[address(msg.sender)] + idx
                mem[288] = _574
                emit Reconcile(stor8[address(msg.sender)] + idx, _574, msg.sender);
                require idx < 0
                mem[256] = mem[(32 * idx) + 256]
                emit Transfer(mem[256], 0, msg.sender);
            idx = idx + 1
            continue 
    else:
        if stor1[address(msg.sender)]:
            mem[256] = stor7.length - stor8[address(msg.sender)]
            s = 0
            idx = stor8[address(msg.sender)]
            s = stor1[address(msg.sender)]
            t = 0
            while idx < stor7.length:
                if not s:
                    if stor7[idx].field_0:
                        if not 0 / stor7[idx].field_0:
                            mem[0] = msg.sender
                            mem[32] = 4
                            if bool(stor4[address(msg.sender)]) != 1:
                                if t >= t:
                                    if idx - stor8[address(msg.sender)] < mem[256]:
                                        mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0
                                        if s >= s:
                                            s = 0
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                            else:
                                if idx < stor7.length:
                                    mem[0] = 7
                                    if teamNum:
                                        if stor7[idx].field_512 / teamNum >= 0:
                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                if idx - stor8[address(msg.sender)] < mem[256]:
                                                    mem[(32 * idx - stor8[address(msg.sender)]) + 288] = stor7[idx].field_512 / teamNum
                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                        s = stor7[idx].field_512 / teamNum
                                                        idx = idx + 1
                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                        continue 
                        else:
                            if 0 / stor7[idx].field_0:
                                if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                    mem[0] = msg.sender
                                    mem[32] = 4
                                    if bool(stor4[address(msg.sender)]) != 1:
                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                            if idx - stor8[address(msg.sender)] < mem[256]:
                                                mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                    s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                    idx = idx + 1
                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                    continue 
                                    else:
                                        if idx < stor7.length:
                                            mem[0] = 7
                                            if teamNum:
                                                if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                    if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                        if idx - stor8[address(msg.sender)] < mem[256]:
                                                            mem[(32 * idx - stor8[address(msg.sender)]) + 288] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                            if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                idx = idx + 1
                                                                s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                continue 
                else:
                    if s:
                        if 10^18 * s / s == 10^18:
                            if stor7[idx].field_0:
                                if not 10^18 * s / stor7[idx].field_0:
                                    mem[0] = msg.sender
                                    mem[32] = 4
                                    if bool(stor4[address(msg.sender)]) != 1:
                                        if t >= t:
                                            if idx - stor8[address(msg.sender)] < mem[256]:
                                                mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0
                                                if s >= s:
                                                    s = 0
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                    else:
                                        if idx < stor7.length:
                                            mem[0] = 7
                                            if teamNum:
                                                if stor7[idx].field_512 / teamNum >= 0:
                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                        if idx - stor8[address(msg.sender)] < mem[256]:
                                                            mem[(32 * idx - stor8[address(msg.sender)]) + 288] = stor7[idx].field_512 / teamNum
                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                s = stor7[idx].field_512 / teamNum
                                                                idx = idx + 1
                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                continue 
                                else:
                                    if 10^18 * s / stor7[idx].field_0:
                                        if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                            mem[0] = msg.sender
                                            mem[32] = 4
                                            if bool(stor4[address(msg.sender)]) != 1:
                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                    if idx - stor8[address(msg.sender)] < mem[256]:
                                                        mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                            s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                            idx = idx + 1
                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                            continue 
                                            else:
                                                if idx < stor7.length:
                                                    mem[0] = 7
                                                    if teamNum:
                                                        if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                            if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                if idx - stor8[address(msg.sender)] < mem[256]:
                                                                    mem[(32 * idx - stor8[address(msg.sender)]) + 288] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                        s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        idx = idx + 1
                                                                        s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        continue 
                revert
            _1135 = mem[256]
            idx = 0
            while idx < _1135:
                require idx < mem[256]
                if mem[(32 * idx) + 288] > 0:
                    mem[0] = msg.sender
                    mem[32] = 8
                    require idx < mem[256]
                    _1220 = mem[(32 * idx) + 288]
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = stor8[address(msg.sender)] + idx
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 320] = _1220
                    emit Reconcile(stor8[address(msg.sender)] + idx, _1220, msg.sender);
                    require idx < mem[256]
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = mem[(32 * idx) + 288]
                    emit Transfer(mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288], 0, msg.sender);
                idx = idx + 1
                continue 
            if t > 0:
                require stor1[address(msg.sender)] + t >= stor1[address(msg.sender)]
                stor1[address(msg.sender)] += t
        else:
            if bool(stor4[address(msg.sender)]) != 1:
                idx = 0
                while idx < 0:
                    require idx < 0
                    if mem[(32 * idx) + 256] > 0:
                        mem[0] = msg.sender
                        mem[32] = 8
                        require idx < 0
                        _569 = mem[(32 * idx) + 256]
                        mem[256] = stor8[address(msg.sender)] + idx
                        mem[288] = _569
                        emit Reconcile(stor8[address(msg.sender)] + idx, _569, msg.sender);
                        require idx < 0
                        mem[256] = mem[(32 * idx) + 256]
                        emit Transfer(mem[256], 0, msg.sender);
                    idx = idx + 1
                    continue 
            else:
                mem[256] = stor7.length - stor8[address(msg.sender)]
                s = 0
                idx = stor8[address(msg.sender)]
                s = stor1[address(msg.sender)]
                t = 0
                while idx < stor7.length:
                    if not s:
                        if stor7[idx].field_0:
                            if not 0 / stor7[idx].field_0:
                                mem[0] = msg.sender
                                mem[32] = 4
                                if bool(stor4[address(msg.sender)]) != 1:
                                    if t >= t:
                                        if idx - stor8[address(msg.sender)] < mem[256]:
                                            mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0
                                            if s >= s:
                                                s = 0
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                continue 
                                else:
                                    if idx < stor7.length:
                                        mem[0] = 7
                                        if teamNum:
                                            if stor7[idx].field_512 / teamNum >= 0:
                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                    if idx - stor8[address(msg.sender)] < mem[256]:
                                                        mem[(32 * idx - stor8[address(msg.sender)]) + 288] = stor7[idx].field_512 / teamNum
                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                            s = stor7[idx].field_512 / teamNum
                                                            idx = idx + 1
                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                            continue 
                            else:
                                if 0 / stor7[idx].field_0:
                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                        mem[0] = msg.sender
                                        mem[32] = 4
                                        if bool(stor4[address(msg.sender)]) != 1:
                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                if idx - stor8[address(msg.sender)] < mem[256]:
                                                    mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                        idx = idx + 1
                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                        continue 
                                        else:
                                            if idx < stor7.length:
                                                mem[0] = 7
                                                if teamNum:
                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                            if idx - stor8[address(msg.sender)] < mem[256]:
                                                                mem[(32 * idx - stor8[address(msg.sender)]) + 288] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    idx = idx + 1
                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    continue 
                    else:
                        if s:
                            if 10^18 * s / s == 10^18:
                                if stor7[idx].field_0:
                                    if not 10^18 * s / stor7[idx].field_0:
                                        mem[0] = msg.sender
                                        mem[32] = 4
                                        if bool(stor4[address(msg.sender)]) != 1:
                                            if t >= t:
                                                if idx - stor8[address(msg.sender)] < mem[256]:
                                                    mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0
                                                    if s >= s:
                                                        s = 0
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                        else:
                                            if idx < stor7.length:
                                                mem[0] = 7
                                                if teamNum:
                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                            if idx - stor8[address(msg.sender)] < mem[256]:
                                                                mem[(32 * idx - stor8[address(msg.sender)]) + 288] = stor7[idx].field_512 / teamNum
                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                    s = stor7[idx].field_512 / teamNum
                                                                    idx = idx + 1
                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                    continue 
                                    else:
                                        if 10^18 * s / stor7[idx].field_0:
                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                mem[0] = msg.sender
                                                mem[32] = 4
                                                if bool(stor4[address(msg.sender)]) != 1:
                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                        if idx - stor8[address(msg.sender)] < mem[256]:
                                                            mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                idx = idx + 1
                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(msg.sender)] < mem[256]:
                                                                        mem[(32 * idx - stor8[address(msg.sender)]) + 288] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            idx = idx + 1
                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                    revert
                _1137 = mem[256]
                idx = 0
                while idx < _1137:
                    require idx < mem[256]
                    if mem[(32 * idx) + 288] > 0:
                        mem[0] = msg.sender
                        mem[32] = 8
                        require idx < mem[256]
                        _1230 = mem[(32 * idx) + 288]
                        mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = stor8[address(msg.sender)] + idx
                        mem[(32 * stor7.length - stor8[address(msg.sender)]) + 320] = _1230
                        emit Reconcile(stor8[address(msg.sender)] + idx, _1230, msg.sender);
                        require idx < mem[256]
                        mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = mem[(32 * idx) + 288]
                        emit Transfer(mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288], 0, msg.sender);
                    idx = idx + 1
                    continue 
                if t > 0:
                    require stor1[address(msg.sender)] + t >= stor1[address(msg.sender)]
                    stor1[address(msg.sender)] += t
    stor8[address(msg.sender)] = stor7.length
    require arg1 <= stor1[address(msg.sender)]
    require arg1 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg1
    require arg1 <= uint256(totalSupply)
    uint256(totalSupply) -= arg1
    require tokensFrozen + arg1 >= tokensFrozen
    tokensFrozen += arg1
    if not tokenValue:
        require 0 <= aum
    else:
        require tokenValue
        require tokenValue * arg1 / tokenValue == arg1
        require tokenValue * arg1 / 10^18 <= aum
        aum -= tokenValue * arg1 / 10^18
    emit Freeze(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    if stor8[address(msg.sender)] == stor7.length:
        idx = 0
        while idx < 0:
            require idx < 0
            if mem[(32 * idx) + 256] > 0:
                mem[0] = msg.sender
                mem[32] = 8
                require idx < 0
                _5582 = mem[(32 * idx) + 256]
                mem[256] = stor8[address(msg.sender)] + idx
                mem[288] = _5582
                emit Reconcile(stor8[address(msg.sender)] + idx, _5582, msg.sender);
                require idx < 0
                mem[256] = mem[(32 * idx) + 256]
                emit Transfer(mem[256], 0, msg.sender);
            idx = idx + 1
            continue 
        stor8[address(msg.sender)] = stor7.length
        if stor8[address(arg1)] == stor7.length:
            idx = 0
            while idx < 0:
                require idx < 0
                if mem[(32 * idx) + 416] > 0:
                    mem[0] = arg1
                    mem[32] = 8
                    require idx < 0
                    _14846 = mem[(32 * idx) + 416]
                    mem[416] = stor8[address(arg1)] + idx
                    mem[448] = _14846
                    emit Reconcile(stor8[address(arg1)] + idx, _14846, arg1);
                    require idx < 0
                    mem[416] = mem[(32 * idx) + 416]
                    emit Transfer(mem[416], 0, arg1);
                idx = idx + 1
                continue 
        else:
            if stor1[address(arg1)]:
                mem[512] = stor7.length - stor8[address(arg1)]
                s = 0
                idx = stor8[address(arg1)]
                s = stor1[address(arg1)]
                t = 0
                while idx < stor7.length:
                    if not s:
                        if stor7[idx].field_0:
                            if not 0 / stor7[idx].field_0:
                                mem[0] = arg1
                                mem[32] = 4
                                if bool(stor4[address(arg1)]) != 1:
                                    if t >= t:
                                        if idx - stor8[address(arg1)] < mem[512]:
                                            mem[(32 * idx - stor8[address(arg1)]) + 544] = 0
                                            if s >= s:
                                                s = 0
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                continue 
                                else:
                                    if idx < stor7.length:
                                        mem[0] = 7
                                        if teamNum:
                                            if stor7[idx].field_512 / teamNum >= 0:
                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                    if idx - stor8[address(arg1)] < mem[512]:
                                                        mem[(32 * idx - stor8[address(arg1)]) + 544] = stor7[idx].field_512 / teamNum
                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                            s = stor7[idx].field_512 / teamNum
                                                            idx = idx + 1
                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                            continue 
                            else:
                                if 0 / stor7[idx].field_0:
                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                        mem[0] = arg1
                                        mem[32] = 4
                                        if bool(stor4[address(arg1)]) != 1:
                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                if idx - stor8[address(arg1)] < mem[512]:
                                                    mem[(32 * idx - stor8[address(arg1)]) + 544] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                        idx = idx + 1
                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                        continue 
                                        else:
                                            if idx < stor7.length:
                                                mem[0] = 7
                                                if teamNum:
                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                            if idx - stor8[address(arg1)] < mem[512]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + 544] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    idx = idx + 1
                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    continue 
                    else:
                        if s:
                            if 10^18 * s / s == 10^18:
                                if stor7[idx].field_0:
                                    if not 10^18 * s / stor7[idx].field_0:
                                        mem[0] = arg1
                                        mem[32] = 4
                                        if bool(stor4[address(arg1)]) != 1:
                                            if t >= t:
                                                if idx - stor8[address(arg1)] < mem[512]:
                                                    mem[(32 * idx - stor8[address(arg1)]) + 544] = 0
                                                    if s >= s:
                                                        s = 0
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                        else:
                                            if idx < stor7.length:
                                                mem[0] = 7
                                                if teamNum:
                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                            if idx - stor8[address(arg1)] < mem[512]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + 544] = stor7[idx].field_512 / teamNum
                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                    s = stor7[idx].field_512 / teamNum
                                                                    idx = idx + 1
                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                    continue 
                                    else:
                                        if 10^18 * s / stor7[idx].field_0:
                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                        if idx - stor8[address(arg1)] < mem[512]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + 544] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                idx = idx + 1
                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[512]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + 544] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            idx = idx + 1
                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                    revert
                _23671 = mem[512]
                idx = 0
                while idx < _23671:
                    require idx < mem[512]
                    if mem[(32 * idx) + 544] > 0:
                        mem[0] = arg1
                        mem[32] = 8
                        require idx < mem[512]
                        _24942 = mem[(32 * idx) + 544]
                        mem[(32 * stor7.length - stor8[address(arg1)]) + 544] = stor8[address(arg1)] + idx
                        mem[(32 * stor7.length - stor8[address(arg1)]) + 576] = _24942
                        emit Reconcile(stor8[address(arg1)] + idx, _24942, arg1);
                        require idx < mem[512]
                        mem[(32 * stor7.length - stor8[address(arg1)]) + 544] = mem[(32 * idx) + 544]
                        emit Transfer(mem[(32 * stor7.length - stor8[address(arg1)]) + 544], 0, arg1);
                    idx = idx + 1
                    continue 
                if t > 0:
                    require stor1[address(arg1)] + t >= stor1[address(arg1)]
                    stor1[address(arg1)] += t
            else:
                if bool(stor4[address(arg1)]) != 1:
                    idx = 0
                    while idx < 0:
                        require idx < 0
                        if mem[(32 * idx) + 416] > 0:
                            mem[0] = arg1
                            mem[32] = 8
                            require idx < 0
                            _14842 = mem[(32 * idx) + 416]
                            mem[416] = stor8[address(arg1)] + idx
                            mem[448] = _14842
                            emit Reconcile(stor8[address(arg1)] + idx, _14842, arg1);
                            require idx < 0
                            mem[416] = mem[(32 * idx) + 416]
                            emit Transfer(mem[416], 0, arg1);
                        idx = idx + 1
                        continue 
                else:
                    mem[512] = stor7.length - stor8[address(arg1)]
                    s = 0
                    idx = stor8[address(arg1)]
                    s = stor1[address(arg1)]
                    t = 0
                    while idx < stor7.length:
                        if not s:
                            if stor7[idx].field_0:
                                if not 0 / stor7[idx].field_0:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    if bool(stor4[address(arg1)]) != 1:
                                        if t >= t:
                                            if idx - stor8[address(arg1)] < mem[512]:
                                                mem[(32 * idx - stor8[address(arg1)]) + 544] = 0
                                                if s >= s:
                                                    s = 0
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                    else:
                                        if idx < stor7.length:
                                            mem[0] = 7
                                            if teamNum:
                                                if stor7[idx].field_512 / teamNum >= 0:
                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                        if idx - stor8[address(arg1)] < mem[512]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + 544] = stor7[idx].field_512 / teamNum
                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                s = stor7[idx].field_512 / teamNum
                                                                idx = idx + 1
                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                continue 
                                else:
                                    if 0 / stor7[idx].field_0:
                                        if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                            mem[0] = arg1
                                            mem[32] = 4
                                            if bool(stor4[address(arg1)]) != 1:
                                                if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                    if idx - stor8[address(arg1)] < mem[512]:
                                                        mem[(32 * idx - stor8[address(arg1)]) + 544] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                        if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                            s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                            idx = idx + 1
                                                            s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                            t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                            continue 
                                            else:
                                                if idx < stor7.length:
                                                    mem[0] = 7
                                                    if teamNum:
                                                        if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                if idx - stor8[address(arg1)] < mem[512]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + 544] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                        s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        idx = idx + 1
                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        continue 
                        else:
                            if s:
                                if 10^18 * s / s == 10^18:
                                    if stor7[idx].field_0:
                                        if not 10^18 * s / stor7[idx].field_0:
                                            mem[0] = arg1
                                            mem[32] = 4
                                            if bool(stor4[address(arg1)]) != 1:
                                                if t >= t:
                                                    if idx - stor8[address(arg1)] < mem[512]:
                                                        mem[(32 * idx - stor8[address(arg1)]) + 544] = 0
                                                        if s >= s:
                                                            s = 0
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                            else:
                                                if idx < stor7.length:
                                                    mem[0] = 7
                                                    if teamNum:
                                                        if stor7[idx].field_512 / teamNum >= 0:
                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                if idx - stor8[address(arg1)] < mem[512]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + 544] = stor7[idx].field_512 / teamNum
                                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                        s = stor7[idx].field_512 / teamNum
                                                                        idx = idx + 1
                                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                                        continue 
                                        else:
                                            if 10^18 * s / stor7[idx].field_0:
                                                if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                            if idx - stor8[address(arg1)] < mem[512]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + 544] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                    s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    idx = idx + 1
                                                                    s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[512]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + 544] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                idx = idx + 1
                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                        revert
                    _23673 = mem[512]
                    idx = 0
                    while idx < _23673:
                        require idx < mem[512]
                        if mem[(32 * idx) + 544] > 0:
                            mem[0] = arg1
                            mem[32] = 8
                            require idx < mem[512]
                            _24950 = mem[(32 * idx) + 544]
                            mem[(32 * stor7.length - stor8[address(arg1)]) + 544] = stor8[address(arg1)] + idx
                            mem[(32 * stor7.length - stor8[address(arg1)]) + 576] = _24950
                            emit Reconcile(stor8[address(arg1)] + idx, _24950, arg1);
                            require idx < mem[512]
                            mem[(32 * stor7.length - stor8[address(arg1)]) + 544] = mem[(32 * idx) + 544]
                            emit Transfer(mem[(32 * stor7.length - stor8[address(arg1)]) + 544], 0, arg1);
                        idx = idx + 1
                        continue 
                    if t > 0:
                        require stor1[address(arg1)] + t >= stor1[address(arg1)]
                        stor1[address(arg1)] += t
    else:
        if stor1[address(msg.sender)]:
            mem[256] = stor7.length - stor8[address(msg.sender)]
            s = 0
            idx = stor8[address(msg.sender)]
            t = stor1[address(msg.sender)]
            u = 0
            while idx < stor7.length:
                if not t:
                    if stor7[idx].field_0:
                        if not 0 / stor7[idx].field_0:
                            mem[0] = msg.sender
                            mem[32] = 4
                            if bool(stor4[address(msg.sender)]) != 1:
                                if u >= u:
                                    if idx - stor8[address(msg.sender)] < mem[256]:
                                        mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0
                                        if t >= t:
                                            s = 0
                                            idx = idx + 1
                                            t = t
                                            u = u
                                            continue 
                            else:
                                if idx < stor7.length:
                                    mem[0] = 7
                                    if teamNum:
                                        if stor7[idx].field_512 / teamNum >= 0:
                                            if u + (stor7[idx].field_512 / teamNum) >= u:
                                                if idx - stor8[address(msg.sender)] < mem[256]:
                                                    mem[(32 * idx - stor8[address(msg.sender)]) + 288] = stor7[idx].field_512 / teamNum
                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                        s = stor7[idx].field_512 / teamNum
                                                        idx = idx + 1
                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                        u = u + (stor7[idx].field_512 / teamNum)
                                                        continue 
                        else:
                            if 0 / stor7[idx].field_0:
                                if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                    mem[0] = msg.sender
                                    mem[32] = 4
                                    if bool(stor4[address(msg.sender)]) != 1:
                                        if u + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= u:
                                            if idx - stor8[address(msg.sender)] < mem[256]:
                                                mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                    s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                    idx = idx + 1
                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                    u = u + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                    continue 
                                    else:
                                        if idx < stor7.length:
                                            mem[0] = 7
                                            if teamNum:
                                                if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                    if u + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= u:
                                                        if idx - stor8[address(msg.sender)] < mem[256]:
                                                            mem[(32 * idx - stor8[address(msg.sender)]) + 288] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                idx = idx + 1
                                                                t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                u = u + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                continue 
                else:
                    if t:
                        if 10^18 * t / t == 10^18:
                            if stor7[idx].field_0:
                                if not 10^18 * t / stor7[idx].field_0:
                                    mem[0] = msg.sender
                                    mem[32] = 4
                                    if bool(stor4[address(msg.sender)]) != 1:
                                        if u >= u:
                                            if idx - stor8[address(msg.sender)] < mem[256]:
                                                mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0
                                                if t >= t:
                                                    s = 0
                                                    idx = idx + 1
                                                    t = t
                                                    u = u
                                                    continue 
                                    else:
                                        if idx < stor7.length:
                                            mem[0] = 7
                                            if teamNum:
                                                if stor7[idx].field_512 / teamNum >= 0:
                                                    if u + (stor7[idx].field_512 / teamNum) >= u:
                                                        if idx - stor8[address(msg.sender)] < mem[256]:
                                                            mem[(32 * idx - stor8[address(msg.sender)]) + 288] = stor7[idx].field_512 / teamNum
                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                s = stor7[idx].field_512 / teamNum
                                                                idx = idx + 1
                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                u = u + (stor7[idx].field_512 / teamNum)
                                                                continue 
                                else:
                                    if 10^18 * t / stor7[idx].field_0:
                                        if 10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * t / stor7[idx].field_0 == stor7[idx].field_256:
                                            mem[0] = msg.sender
                                            mem[32] = 4
                                            if bool(stor4[address(msg.sender)]) != 1:
                                                if u + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= u:
                                                    if idx - stor8[address(msg.sender)] < mem[256]:
                                                        mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                        if t + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                            s = 10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                            idx = idx + 1
                                                            t = t + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                            u = u + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                            continue 
                                            else:
                                                if idx < stor7.length:
                                                    mem[0] = 7
                                                    if teamNum:
                                                        if (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                            if u + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= u:
                                                                if idx - stor8[address(msg.sender)] < mem[256]:
                                                                    mem[(32 * idx - stor8[address(msg.sender)]) + 288] = (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    if t + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                        s = (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        idx = idx + 1
                                                                        t = t + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        u = u + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        continue 
                revert
            _14519 = mem[256]
            t = 0
            while t < _14519:
                require t < mem[256]
                if mem[(32 * t) + 288] > 0:
                    mem[0] = msg.sender
                    mem[32] = 8
                    require t < mem[256]
                    _14790 = mem[(32 * t) + 288]
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = stor8[address(msg.sender)] + t
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 320] = _14790
                    emit Reconcile(stor8[address(msg.sender)] + t, _14790, msg.sender);
                    require t < mem[256]
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = mem[(32 * t) + 288]
                    emit Transfer(mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288], 0, msg.sender);
                t = t + 1
                continue 
            if u <= 0:
                stor8[address(msg.sender)] = stor7.length
                mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = 0
                mem[(32 * stor7.length - stor8[address(msg.sender)]) + 320] = 0
                mem[(32 * stor7.length - stor8[address(msg.sender)]) + 352] = 0
                mem[(32 * stor7.length - stor8[address(msg.sender)]) + 384] = 0
                _msize = max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)])
                mem[_msize + 320] = 0
                mem[0] = arg1
                mem[32] = 8
                if stor8[address(arg1)] == stor7.length:
                    idx = 0
                    while idx < 0:
                        require idx < mem[_msize + 320]
                        if mem[(32 * idx) + (_msize + 320) + 32] > 0:
                            mem[0] = arg1
                            mem[32] = 8
                            require idx < mem[_msize + 320]
                            _24766 = mem[(32 * idx) + (_msize + 320) + 32]
                            mem[(_msize + 320) + 32] = stor8[address(arg1)] + idx
                            mem[(_msize + 320) + 64] = _24766
                            emit Reconcile(stor8[address(arg1)] + idx, _24766, arg1);
                            require idx < mem[_msize + 320]
                            mem[(_msize + 320) + 32] = mem[(32 * idx) + (_msize + 320) + 32]
                            emit Transfer((stor8[address(arg1)] + idx), 0, arg1);
                        idx = idx + 1
                        continue 
                else:
                    if stor1[address(arg1)]:
                        if msize < (max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)]) + 320) + 32:
                            mem[(_msize + 320) + 32] = stor7.length - stor8[address(arg1)]
                            s = 0
                            idx = stor8[address(arg1)]
                            s = stor1[address(arg1)]
                            t = 0
                            while idx < stor7.length:
                                if not s:
                                    if stor7[idx].field_0:
                                        if not 0 / stor7[idx].field_0:
                                            mem[0] = arg1
                                            mem[32] = 4
                                            if bool(stor4[address(arg1)]) != 1:
                                                if t >= t:
                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                        if s >= s:
                                                            s = 0
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                            else:
                                                if idx < stor7.length:
                                                    mem[0] = 7
                                                    if teamNum:
                                                        if stor7[idx].field_512 / teamNum >= 0:
                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                        s = stor7[idx].field_512 / teamNum
                                                                        idx = idx + 1
                                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                                        continue 
                                        else:
                                            if 0 / stor7[idx].field_0:
                                                if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                    s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    idx = idx + 1
                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                    if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                idx = idx + 1
                                                                                s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                else:
                                    if s:
                                        if 10^18 * s / s == 10^18:
                                            if stor7[idx].field_0:
                                                if not 10^18 * s / stor7[idx].field_0:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t >= t:
                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                                if s >= s:
                                                                    s = 0
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if stor7[idx].field_512 / teamNum >= 0:
                                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = stor7[idx].field_512 / teamNum
                                                                                idx = idx + 1
                                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                                else:
                                                    if 10^18 * s / stor7[idx].field_0:
                                                        if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                            s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            idx = idx + 1
                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                            if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        idx = idx + 1
                                                                                        s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                revert
                            _32814 = mem[(_msize + 320) + 32]
                            idx = 0
                            while idx < _32814:
                                require idx < mem[(_msize + 320) + 32]
                                if mem[(32 * idx) + (_msize + 320) + 64] > 0:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    require idx < mem[(_msize + 320) + 32]
                                    _33962 = mem[(32 * idx) + (_msize + 320) + 64]
                                    mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = stor8[address(arg1)] + idx
                                    mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 96] = _33962
                                    emit Reconcile(stor8[address(arg1)] + idx, _33962, arg1);
                                    require idx < mem[(_msize + 320) + 32]
                                    mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = mem[(32 * idx) + (_msize + 320) + 64]
                                    emit Transfer(mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64], 0, arg1);
                                idx = idx + 1
                                continue 
                        else:
                            _msize = max((32 * idx - stor8[address(msg.sender)]) + 288, (32 * stor7.length - stor8[address(msg.sender)]) + 384, _msize + 384, max((32 * idx - stor8[address(msg.sender)]) + 224, (32 * stor7.length - stor8[address(msg.sender)]) + 320, _msize + 320) + 96)
                            mem[_msize + 32] = stor7.length - stor8[address(arg1)]
                            mem[64] = (_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32
                            s = 0
                            idx = stor8[address(arg1)]
                            s = stor1[address(arg1)]
                            t = 0
                            while idx < stor7.length:
                                if not s:
                                    if stor7[idx].field_0:
                                        if not 0 / stor7[idx].field_0:
                                            mem[0] = arg1
                                            mem[32] = 4
                                            if bool(stor4[address(arg1)]) != 1:
                                                if t >= t:
                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                        if s >= s:
                                                            s = 0
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                            else:
                                                if idx < stor7.length:
                                                    mem[0] = 7
                                                    if teamNum:
                                                        if stor7[idx].field_512 / teamNum >= 0:
                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                        s = stor7[idx].field_512 / teamNum
                                                                        idx = idx + 1
                                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                                        continue 
                                        else:
                                            if 0 / stor7[idx].field_0:
                                                if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                    s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    idx = idx + 1
                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                    if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                idx = idx + 1
                                                                                s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                else:
                                    if s:
                                        if 10^18 * s / s == 10^18:
                                            if stor7[idx].field_0:
                                                if not 10^18 * s / stor7[idx].field_0:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t >= t:
                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                                if s >= s:
                                                                    s = 0
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if stor7[idx].field_512 / teamNum >= 0:
                                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = stor7[idx].field_512 / teamNum
                                                                                idx = idx + 1
                                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                                else:
                                                    if 10^18 * s / stor7[idx].field_0:
                                                        if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                            s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            idx = idx + 1
                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                            if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        idx = idx + 1
                                                                                        s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                revert
                            _32815 = mem[_msize + 32]
                            idx = 0
                            while idx < _32815:
                                require idx < mem[_msize + 32]
                                if mem[(32 * idx) + (_msize + 32) + 32] > 0:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    require idx < mem[_msize + 32]
                                    _33966 = mem[(32 * idx) + (_msize + 32) + 32]
                                    mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = stor8[address(arg1)] + idx
                                    mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 64] = _33966
                                    emit Reconcile(stor8[address(arg1)] + idx, _33966, arg1);
                                    require idx < mem[_msize + 32]
                                    mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = mem[(32 * idx) + (_msize + 32) + 32]
                                    emit Transfer(mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32], 0, arg1);
                                idx = idx + 1
                                continue 
                        if t > 0:
                            require stor1[address(arg1)] + t >= stor1[address(arg1)]
                            stor1[address(arg1)] += t
                    else:
                        mem[0] = arg1
                        mem[32] = 4
                        if bool(stor4[address(arg1)]) != 1:
                            idx = 0
                            while idx < 0:
                                require idx < mem[_msize + 320]
                                if mem[(32 * idx) + (_msize + 320) + 32] > 0:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    require idx < mem[_msize + 320]
                                    _24762 = mem[(32 * idx) + (_msize + 320) + 32]
                                    mem[(_msize + 320) + 32] = stor8[address(arg1)] + idx
                                    mem[(_msize + 320) + 64] = _24762
                                    emit Reconcile(stor8[address(arg1)] + idx, _24762, arg1);
                                    require idx < mem[_msize + 320]
                                    mem[(_msize + 320) + 32] = mem[(32 * idx) + (_msize + 320) + 32]
                                    emit Transfer((stor8[address(arg1)] + idx), 0, arg1);
                                idx = idx + 1
                                continue 
                        else:
                            if msize < (max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)]) + 320) + 32:
                                mem[(_msize + 320) + 32] = stor7.length - stor8[address(arg1)]
                                s = 0
                                idx = stor8[address(arg1)]
                                s = stor1[address(arg1)]
                                t = 0
                                while idx < stor7.length:
                                    if not s:
                                        if stor7[idx].field_0:
                                            if not 0 / stor7[idx].field_0:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t >= t:
                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                            if s >= s:
                                                                s = 0
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if stor7[idx].field_512 / teamNum >= 0:
                                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = stor7[idx].field_512 / teamNum
                                                                            idx = idx + 1
                                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                                            else:
                                                if 0 / stor7[idx].field_0:
                                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        idx = idx + 1
                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    idx = idx + 1
                                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                    else:
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                if stor7[idx].field_0:
                                                    if not 10^18 * s / stor7[idx].field_0:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t >= t:
                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                                    if s >= s:
                                                                        s = 0
                                                                        idx = idx + 1
                                                                        s = s
                                                                        t = t
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = stor7[idx].field_512 / teamNum
                                                                                    idx = idx + 1
                                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                                    else:
                                                        if 10^18 * s / stor7[idx].field_0:
                                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                mem[0] = arg1
                                                                mem[32] = 4
                                                                if bool(stor4[address(arg1)]) != 1:
                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                idx = idx + 1
                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                continue 
                                                                else:
                                                                    if idx < stor7.length:
                                                                        mem[0] = 7
                                                                        if teamNum:
                                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            idx = idx + 1
                                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            continue 
                                    revert
                                _32816 = mem[(_msize + 320) + 32]
                                idx = 0
                                while idx < _32816:
                                    require idx < mem[(_msize + 320) + 32]
                                    if mem[(32 * idx) + (_msize + 320) + 64] > 0:
                                        mem[0] = arg1
                                        mem[32] = 8
                                        require idx < mem[(_msize + 320) + 32]
                                        _33970 = mem[(32 * idx) + (_msize + 320) + 64]
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = stor8[address(arg1)] + idx
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 96] = _33970
                                        emit Reconcile(stor8[address(arg1)] + idx, _33970, arg1);
                                        require idx < mem[(_msize + 320) + 32]
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = mem[(32 * idx) + (_msize + 320) + 64]
                                        emit Transfer(mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64], 0, arg1);
                                    idx = idx + 1
                                    continue 
                            else:
                                _msize = max((32 * idx - stor8[address(msg.sender)]) + 288, (32 * stor7.length - stor8[address(msg.sender)]) + 384, _msize + 384, max((32 * idx - stor8[address(msg.sender)]) + 224, (32 * stor7.length - stor8[address(msg.sender)]) + 320, _msize + 320) + 96)
                                mem[_msize + 32] = stor7.length - stor8[address(arg1)]
                                mem[64] = (_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32
                                s = 0
                                idx = stor8[address(arg1)]
                                s = stor1[address(arg1)]
                                t = 0
                                while idx < stor7.length:
                                    if not s:
                                        if stor7[idx].field_0:
                                            if not 0 / stor7[idx].field_0:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t >= t:
                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                            if s >= s:
                                                                s = 0
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if stor7[idx].field_512 / teamNum >= 0:
                                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = stor7[idx].field_512 / teamNum
                                                                            idx = idx + 1
                                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                                            else:
                                                if 0 / stor7[idx].field_0:
                                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        idx = idx + 1
                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    idx = idx + 1
                                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                    else:
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                if stor7[idx].field_0:
                                                    if not 10^18 * s / stor7[idx].field_0:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t >= t:
                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                                    if s >= s:
                                                                        s = 0
                                                                        idx = idx + 1
                                                                        s = s
                                                                        t = t
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = stor7[idx].field_512 / teamNum
                                                                                    idx = idx + 1
                                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                                    else:
                                                        if 10^18 * s / stor7[idx].field_0:
                                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                mem[0] = arg1
                                                                mem[32] = 4
                                                                if bool(stor4[address(arg1)]) != 1:
                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                idx = idx + 1
                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                continue 
                                                                else:
                                                                    if idx < stor7.length:
                                                                        mem[0] = 7
                                                                        if teamNum:
                                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            idx = idx + 1
                                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            continue 
                                    revert
                                _32817 = mem[_msize + 32]
                                idx = 0
                                while idx < _32817:
                                    require idx < mem[_msize + 32]
                                    if mem[(32 * idx) + (_msize + 32) + 32] > 0:
                                        mem[0] = arg1
                                        mem[32] = 8
                                        require idx < mem[_msize + 32]
                                        _33974 = mem[(32 * idx) + (_msize + 32) + 32]
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = stor8[address(arg1)] + idx
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 64] = _33974
                                        emit Reconcile(stor8[address(arg1)] + idx, _33974, arg1);
                                        require idx < mem[_msize + 32]
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = mem[(32 * idx) + (_msize + 32) + 32]
                                        emit Transfer(mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32], 0, arg1);
                                    idx = idx + 1
                                    continue 
                            if t > 0:
                                require stor1[address(arg1)] + t >= stor1[address(arg1)]
                                stor1[address(arg1)] += t
            else:
                require stor1[address(msg.sender)] + u >= stor1[address(msg.sender)]
                stor1[address(msg.sender)] += u
                stor8[address(msg.sender)] = stor7.length
                mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = 0
                mem[(32 * stor7.length - stor8[address(msg.sender)]) + 320] = 0
                mem[(32 * stor7.length - stor8[address(msg.sender)]) + 352] = 0
                mem[(32 * stor7.length - stor8[address(msg.sender)]) + 384] = 0
                _msize = max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)])
                mem[_msize + 320] = 0
                mem[0] = arg1
                mem[32] = 8
                if stor8[address(arg1)] == stor7.length:
                    idx = 0
                    while idx < 0:
                        require idx < mem[_msize + 320]
                        if mem[(32 * idx) + (_msize + 320) + 32] > 0:
                            mem[0] = arg1
                            mem[32] = 8
                            require idx < mem[_msize + 320]
                            _24790 = mem[(32 * idx) + (_msize + 320) + 32]
                            mem[(_msize + 320) + 32] = stor8[address(arg1)] + idx
                            mem[(_msize + 320) + 64] = _24790
                            emit Reconcile(stor8[address(arg1)] + idx, _24790, arg1);
                            require idx < mem[_msize + 320]
                            mem[(_msize + 320) + 32] = mem[(32 * idx) + (_msize + 320) + 32]
                            emit Transfer((stor8[address(arg1)] + idx), 0, arg1);
                        idx = idx + 1
                        continue 
                else:
                    if stor1[address(arg1)]:
                        if msize < (max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)]) + 320) + 32:
                            mem[(_msize + 320) + 32] = stor7.length - stor8[address(arg1)]
                            s = 0
                            idx = stor8[address(arg1)]
                            s = stor1[address(arg1)]
                            t = 0
                            while idx < stor7.length:
                                if not s:
                                    if stor7[idx].field_0:
                                        if not 0 / stor7[idx].field_0:
                                            mem[0] = arg1
                                            mem[32] = 4
                                            if bool(stor4[address(arg1)]) != 1:
                                                if t >= t:
                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                        if s >= s:
                                                            s = 0
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                            else:
                                                if idx < stor7.length:
                                                    mem[0] = 7
                                                    if teamNum:
                                                        if stor7[idx].field_512 / teamNum >= 0:
                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                        s = stor7[idx].field_512 / teamNum
                                                                        idx = idx + 1
                                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                                        continue 
                                        else:
                                            if 0 / stor7[idx].field_0:
                                                if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                    s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    idx = idx + 1
                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                    if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                idx = idx + 1
                                                                                s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                else:
                                    if s:
                                        if 10^18 * s / s == 10^18:
                                            if stor7[idx].field_0:
                                                if not 10^18 * s / stor7[idx].field_0:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t >= t:
                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                                if s >= s:
                                                                    s = 0
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if stor7[idx].field_512 / teamNum >= 0:
                                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = stor7[idx].field_512 / teamNum
                                                                                idx = idx + 1
                                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                                else:
                                                    if 10^18 * s / stor7[idx].field_0:
                                                        if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                            s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            idx = idx + 1
                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                            if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        idx = idx + 1
                                                                                        s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                revert
                            _32822 = mem[(_msize + 320) + 32]
                            idx = 0
                            while idx < _32822:
                                require idx < mem[(_msize + 320) + 32]
                                if mem[(32 * idx) + (_msize + 320) + 64] > 0:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    require idx < mem[(_msize + 320) + 32]
                                    _33994 = mem[(32 * idx) + (_msize + 320) + 64]
                                    mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = stor8[address(arg1)] + idx
                                    mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 96] = _33994
                                    emit Reconcile(stor8[address(arg1)] + idx, _33994, arg1);
                                    require idx < mem[(_msize + 320) + 32]
                                    mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = mem[(32 * idx) + (_msize + 320) + 64]
                                    emit Transfer(mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64], 0, arg1);
                                idx = idx + 1
                                continue 
                        else:
                            _msize = max((32 * idx - stor8[address(msg.sender)]) + 288, (32 * stor7.length - stor8[address(msg.sender)]) + 384, _msize + 384, max((32 * idx - stor8[address(msg.sender)]) + 224, (32 * stor7.length - stor8[address(msg.sender)]) + 320, _msize + 320) + 96)
                            mem[_msize + 32] = stor7.length - stor8[address(arg1)]
                            mem[64] = (_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32
                            s = 0
                            idx = stor8[address(arg1)]
                            s = stor1[address(arg1)]
                            t = 0
                            while idx < stor7.length:
                                if not s:
                                    if stor7[idx].field_0:
                                        if not 0 / stor7[idx].field_0:
                                            mem[0] = arg1
                                            mem[32] = 4
                                            if bool(stor4[address(arg1)]) != 1:
                                                if t >= t:
                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                        if s >= s:
                                                            s = 0
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                            else:
                                                if idx < stor7.length:
                                                    mem[0] = 7
                                                    if teamNum:
                                                        if stor7[idx].field_512 / teamNum >= 0:
                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                        s = stor7[idx].field_512 / teamNum
                                                                        idx = idx + 1
                                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                                        continue 
                                        else:
                                            if 0 / stor7[idx].field_0:
                                                if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                    s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    idx = idx + 1
                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                    if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                idx = idx + 1
                                                                                s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                else:
                                    if s:
                                        if 10^18 * s / s == 10^18:
                                            if stor7[idx].field_0:
                                                if not 10^18 * s / stor7[idx].field_0:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t >= t:
                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                                if s >= s:
                                                                    s = 0
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if stor7[idx].field_512 / teamNum >= 0:
                                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = stor7[idx].field_512 / teamNum
                                                                                idx = idx + 1
                                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                                else:
                                                    if 10^18 * s / stor7[idx].field_0:
                                                        if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                            s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            idx = idx + 1
                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                            if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        idx = idx + 1
                                                                                        s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                revert
                            _32823 = mem[_msize + 32]
                            idx = 0
                            while idx < _32823:
                                require idx < mem[_msize + 32]
                                if mem[(32 * idx) + (_msize + 32) + 32] > 0:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    require idx < mem[_msize + 32]
                                    _33998 = mem[(32 * idx) + (_msize + 32) + 32]
                                    mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = stor8[address(arg1)] + idx
                                    mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 64] = _33998
                                    emit Reconcile(stor8[address(arg1)] + idx, _33998, arg1);
                                    require idx < mem[_msize + 32]
                                    mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = mem[(32 * idx) + (_msize + 32) + 32]
                                    emit Transfer(mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32], 0, arg1);
                                idx = idx + 1
                                continue 
                        if t > 0:
                            require stor1[address(arg1)] + t >= stor1[address(arg1)]
                            stor1[address(arg1)] += t
                    else:
                        mem[0] = arg1
                        mem[32] = 4
                        if bool(stor4[address(arg1)]) != 1:
                            idx = 0
                            while idx < 0:
                                require idx < mem[_msize + 320]
                                if mem[(32 * idx) + (_msize + 320) + 32] > 0:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    require idx < mem[_msize + 320]
                                    _24786 = mem[(32 * idx) + (_msize + 320) + 32]
                                    mem[(_msize + 320) + 32] = stor8[address(arg1)] + idx
                                    mem[(_msize + 320) + 64] = _24786
                                    emit Reconcile(stor8[address(arg1)] + idx, _24786, arg1);
                                    require idx < mem[_msize + 320]
                                    mem[(_msize + 320) + 32] = mem[(32 * idx) + (_msize + 320) + 32]
                                    emit Transfer((stor8[address(arg1)] + idx), 0, arg1);
                                idx = idx + 1
                                continue 
                        else:
                            if msize < (max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)]) + 320) + 32:
                                mem[(_msize + 320) + 32] = stor7.length - stor8[address(arg1)]
                                s = 0
                                idx = stor8[address(arg1)]
                                s = stor1[address(arg1)]
                                t = 0
                                while idx < stor7.length:
                                    if not s:
                                        if stor7[idx].field_0:
                                            if not 0 / stor7[idx].field_0:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t >= t:
                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                            if s >= s:
                                                                s = 0
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if stor7[idx].field_512 / teamNum >= 0:
                                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = stor7[idx].field_512 / teamNum
                                                                            idx = idx + 1
                                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                                            else:
                                                if 0 / stor7[idx].field_0:
                                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        idx = idx + 1
                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    idx = idx + 1
                                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                    else:
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                if stor7[idx].field_0:
                                                    if not 10^18 * s / stor7[idx].field_0:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t >= t:
                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                                    if s >= s:
                                                                        s = 0
                                                                        idx = idx + 1
                                                                        s = s
                                                                        t = t
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = stor7[idx].field_512 / teamNum
                                                                                    idx = idx + 1
                                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                                    else:
                                                        if 10^18 * s / stor7[idx].field_0:
                                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                mem[0] = arg1
                                                                mem[32] = 4
                                                                if bool(stor4[address(arg1)]) != 1:
                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                idx = idx + 1
                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                continue 
                                                                else:
                                                                    if idx < stor7.length:
                                                                        mem[0] = 7
                                                                        if teamNum:
                                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            idx = idx + 1
                                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            continue 
                                    revert
                                _32824 = mem[(_msize + 320) + 32]
                                idx = 0
                                while idx < _32824:
                                    require idx < mem[(_msize + 320) + 32]
                                    if mem[(32 * idx) + (_msize + 320) + 64] > 0:
                                        mem[0] = arg1
                                        mem[32] = 8
                                        require idx < mem[(_msize + 320) + 32]
                                        _34002 = mem[(32 * idx) + (_msize + 320) + 64]
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = stor8[address(arg1)] + idx
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 96] = _34002
                                        emit Reconcile(stor8[address(arg1)] + idx, _34002, arg1);
                                        require idx < mem[(_msize + 320) + 32]
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = mem[(32 * idx) + (_msize + 320) + 64]
                                        emit Transfer(mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64], 0, arg1);
                                    idx = idx + 1
                                    continue 
                            else:
                                _msize = max((32 * idx - stor8[address(msg.sender)]) + 288, (32 * stor7.length - stor8[address(msg.sender)]) + 384, _msize + 384, max((32 * idx - stor8[address(msg.sender)]) + 224, (32 * stor7.length - stor8[address(msg.sender)]) + 320, _msize + 320) + 96)
                                mem[_msize + 32] = stor7.length - stor8[address(arg1)]
                                mem[64] = (_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32
                                s = 0
                                idx = stor8[address(arg1)]
                                s = stor1[address(arg1)]
                                t = 0
                                while idx < stor7.length:
                                    if not s:
                                        if stor7[idx].field_0:
                                            if not 0 / stor7[idx].field_0:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t >= t:
                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                            if s >= s:
                                                                s = 0
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if stor7[idx].field_512 / teamNum >= 0:
                                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = stor7[idx].field_512 / teamNum
                                                                            idx = idx + 1
                                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                                            else:
                                                if 0 / stor7[idx].field_0:
                                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        idx = idx + 1
                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    idx = idx + 1
                                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                    else:
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                if stor7[idx].field_0:
                                                    if not 10^18 * s / stor7[idx].field_0:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t >= t:
                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                                    if s >= s:
                                                                        s = 0
                                                                        idx = idx + 1
                                                                        s = s
                                                                        t = t
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = stor7[idx].field_512 / teamNum
                                                                                    idx = idx + 1
                                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                                    else:
                                                        if 10^18 * s / stor7[idx].field_0:
                                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                mem[0] = arg1
                                                                mem[32] = 4
                                                                if bool(stor4[address(arg1)]) != 1:
                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                idx = idx + 1
                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                continue 
                                                                else:
                                                                    if idx < stor7.length:
                                                                        mem[0] = 7
                                                                        if teamNum:
                                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            idx = idx + 1
                                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            continue 
                                    revert
                                _32825 = mem[_msize + 32]
                                idx = 0
                                while idx < _32825:
                                    require idx < mem[_msize + 32]
                                    if mem[(32 * idx) + (_msize + 32) + 32] > 0:
                                        mem[0] = arg1
                                        mem[32] = 8
                                        require idx < mem[_msize + 32]
                                        _34006 = mem[(32 * idx) + (_msize + 32) + 32]
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = stor8[address(arg1)] + idx
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 64] = _34006
                                        emit Reconcile(stor8[address(arg1)] + idx, _34006, arg1);
                                        require idx < mem[_msize + 32]
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = mem[(32 * idx) + (_msize + 32) + 32]
                                        emit Transfer(mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32], 0, arg1);
                                    idx = idx + 1
                                    continue 
                            if t > 0:
                                require stor1[address(arg1)] + t >= stor1[address(arg1)]
                                stor1[address(arg1)] += t
        else:
            if bool(stor4[address(msg.sender)]) != 1:
                idx = 0
                while idx < 0:
                    require idx < 0
                    if mem[(32 * idx) + 256] > 0:
                        mem[0] = msg.sender
                        mem[32] = 8
                        require idx < 0
                        _5578 = mem[(32 * idx) + 256]
                        mem[256] = stor8[address(msg.sender)] + idx
                        mem[288] = _5578
                        emit Reconcile(stor8[address(msg.sender)] + idx, _5578, msg.sender);
                        require idx < 0
                        mem[256] = mem[(32 * idx) + 256]
                        emit Transfer(mem[256], 0, msg.sender);
                    idx = idx + 1
                    continue 
                stor8[address(msg.sender)] = stor7.length
                if stor8[address(arg1)] == stor7.length:
                    idx = 0
                    while idx < 0:
                        require idx < 0
                        if mem[(32 * idx) + 416] > 0:
                            mem[0] = arg1
                            mem[32] = 8
                            require idx < 0
                            _14822 = mem[(32 * idx) + 416]
                            mem[416] = stor8[address(arg1)] + idx
                            mem[448] = _14822
                            emit Reconcile(stor8[address(arg1)] + idx, _14822, arg1);
                            require idx < 0
                            mem[416] = mem[(32 * idx) + 416]
                            emit Transfer(mem[416], 0, arg1);
                        idx = idx + 1
                        continue 
                else:
                    if stor1[address(arg1)]:
                        mem[512] = stor7.length - stor8[address(arg1)]
                        s = 0
                        idx = stor8[address(arg1)]
                        s = stor1[address(arg1)]
                        t = 0
                        while idx < stor7.length:
                            if not s:
                                if stor7[idx].field_0:
                                    if not 0 / stor7[idx].field_0:
                                        mem[0] = arg1
                                        mem[32] = 4
                                        if bool(stor4[address(arg1)]) != 1:
                                            if t >= t:
                                                if idx - stor8[address(arg1)] < mem[512]:
                                                    mem[(32 * idx - stor8[address(arg1)]) + 544] = 0
                                                    if s >= s:
                                                        s = 0
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                        else:
                                            if idx < stor7.length:
                                                mem[0] = 7
                                                if teamNum:
                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                            if idx - stor8[address(arg1)] < mem[512]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + 544] = stor7[idx].field_512 / teamNum
                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                    s = stor7[idx].field_512 / teamNum
                                                                    idx = idx + 1
                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                    continue 
                                    else:
                                        if 0 / stor7[idx].field_0:
                                            if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                        if idx - stor8[address(arg1)] < mem[512]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + 544] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                            if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                idx = idx + 1
                                                                s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[512]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + 544] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            idx = idx + 1
                                                                            s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                            else:
                                if s:
                                    if 10^18 * s / s == 10^18:
                                        if stor7[idx].field_0:
                                            if not 10^18 * s / stor7[idx].field_0:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t >= t:
                                                        if idx - stor8[address(arg1)] < mem[512]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + 544] = 0
                                                            if s >= s:
                                                                s = 0
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if stor7[idx].field_512 / teamNum >= 0:
                                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[512]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + 544] = stor7[idx].field_512 / teamNum
                                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = stor7[idx].field_512 / teamNum
                                                                            idx = idx + 1
                                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                                            else:
                                                if 10^18 * s / stor7[idx].field_0:
                                                    if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                if idx - stor8[address(arg1)] < mem[512]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + 544] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                        s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        idx = idx + 1
                                                                        s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                        if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[512]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + 544] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    idx = idx + 1
                                                                                    s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                            revert
                        _23663 = mem[512]
                        idx = 0
                        while idx < _23663:
                            require idx < mem[512]
                            if mem[(32 * idx) + 544] > 0:
                                mem[0] = arg1
                                mem[32] = 8
                                require idx < mem[512]
                                _24910 = mem[(32 * idx) + 544]
                                mem[(32 * stor7.length - stor8[address(arg1)]) + 544] = stor8[address(arg1)] + idx
                                mem[(32 * stor7.length - stor8[address(arg1)]) + 576] = _24910
                                emit Reconcile(stor8[address(arg1)] + idx, _24910, arg1);
                                require idx < mem[512]
                                mem[(32 * stor7.length - stor8[address(arg1)]) + 544] = mem[(32 * idx) + 544]
                                emit Transfer(mem[(32 * stor7.length - stor8[address(arg1)]) + 544], 0, arg1);
                            idx = idx + 1
                            continue 
                        if t > 0:
                            require stor1[address(arg1)] + t >= stor1[address(arg1)]
                            stor1[address(arg1)] += t
                    else:
                        if bool(stor4[address(arg1)]) != 1:
                            idx = 0
                            while idx < 0:
                                require idx < 0
                                if mem[(32 * idx) + 416] > 0:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    require idx < 0
                                    _14818 = mem[(32 * idx) + 416]
                                    mem[416] = stor8[address(arg1)] + idx
                                    mem[448] = _14818
                                    emit Reconcile(stor8[address(arg1)] + idx, _14818, arg1);
                                    require idx < 0
                                    mem[416] = mem[(32 * idx) + 416]
                                    emit Transfer(mem[416], 0, arg1);
                                idx = idx + 1
                                continue 
                        else:
                            mem[512] = stor7.length - stor8[address(arg1)]
                            s = 0
                            idx = stor8[address(arg1)]
                            s = stor1[address(arg1)]
                            t = 0
                            while idx < stor7.length:
                                if not s:
                                    if stor7[idx].field_0:
                                        if not 0 / stor7[idx].field_0:
                                            mem[0] = arg1
                                            mem[32] = 4
                                            if bool(stor4[address(arg1)]) != 1:
                                                if t >= t:
                                                    if idx - stor8[address(arg1)] < mem[512]:
                                                        mem[(32 * idx - stor8[address(arg1)]) + 544] = 0
                                                        if s >= s:
                                                            s = 0
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                            else:
                                                if idx < stor7.length:
                                                    mem[0] = 7
                                                    if teamNum:
                                                        if stor7[idx].field_512 / teamNum >= 0:
                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                if idx - stor8[address(arg1)] < mem[512]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + 544] = stor7[idx].field_512 / teamNum
                                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                        s = stor7[idx].field_512 / teamNum
                                                                        idx = idx + 1
                                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                                        continue 
                                        else:
                                            if 0 / stor7[idx].field_0:
                                                if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                            if idx - stor8[address(arg1)] < mem[512]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + 544] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                    s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    idx = idx + 1
                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                    if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[512]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + 544] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                idx = idx + 1
                                                                                s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                else:
                                    if s:
                                        if 10^18 * s / s == 10^18:
                                            if stor7[idx].field_0:
                                                if not 10^18 * s / stor7[idx].field_0:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t >= t:
                                                            if idx - stor8[address(arg1)] < mem[512]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + 544] = 0
                                                                if s >= s:
                                                                    s = 0
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if stor7[idx].field_512 / teamNum >= 0:
                                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[512]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + 544] = stor7[idx].field_512 / teamNum
                                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = stor7[idx].field_512 / teamNum
                                                                                idx = idx + 1
                                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                                else:
                                                    if 10^18 * s / stor7[idx].field_0:
                                                        if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[512]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + 544] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                            s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            idx = idx + 1
                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                            if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[512]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + 544] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        idx = idx + 1
                                                                                        s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                revert
                            _23665 = mem[512]
                            idx = 0
                            while idx < _23665:
                                require idx < mem[512]
                                if mem[(32 * idx) + 544] > 0:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    require idx < mem[512]
                                    _24918 = mem[(32 * idx) + 544]
                                    mem[(32 * stor7.length - stor8[address(arg1)]) + 544] = stor8[address(arg1)] + idx
                                    mem[(32 * stor7.length - stor8[address(arg1)]) + 576] = _24918
                                    emit Reconcile(stor8[address(arg1)] + idx, _24918, arg1);
                                    require idx < mem[512]
                                    mem[(32 * stor7.length - stor8[address(arg1)]) + 544] = mem[(32 * idx) + 544]
                                    emit Transfer(mem[(32 * stor7.length - stor8[address(arg1)]) + 544], 0, arg1);
                                idx = idx + 1
                                continue 
                            if t > 0:
                                require stor1[address(arg1)] + t >= stor1[address(arg1)]
                                stor1[address(arg1)] += t
            else:
                mem[256] = stor7.length - stor8[address(msg.sender)]
                s = 0
                idx = stor8[address(msg.sender)]
                t = stor1[address(msg.sender)]
                u = 0
                while idx < stor7.length:
                    if not t:
                        if stor7[idx].field_0:
                            if not 0 / stor7[idx].field_0:
                                mem[0] = msg.sender
                                mem[32] = 4
                                if bool(stor4[address(msg.sender)]) != 1:
                                    if u >= u:
                                        if idx - stor8[address(msg.sender)] < mem[256]:
                                            mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0
                                            if t >= t:
                                                s = 0
                                                idx = idx + 1
                                                t = t
                                                u = u
                                                continue 
                                else:
                                    if idx < stor7.length:
                                        mem[0] = 7
                                        if teamNum:
                                            if stor7[idx].field_512 / teamNum >= 0:
                                                if u + (stor7[idx].field_512 / teamNum) >= u:
                                                    if idx - stor8[address(msg.sender)] < mem[256]:
                                                        mem[(32 * idx - stor8[address(msg.sender)]) + 288] = stor7[idx].field_512 / teamNum
                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                            s = stor7[idx].field_512 / teamNum
                                                            idx = idx + 1
                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                            u = u + (stor7[idx].field_512 / teamNum)
                                                            continue 
                            else:
                                if 0 / stor7[idx].field_0:
                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                        mem[0] = msg.sender
                                        mem[32] = 4
                                        if bool(stor4[address(msg.sender)]) != 1:
                                            if u + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= u:
                                                if idx - stor8[address(msg.sender)] < mem[256]:
                                                    mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                    if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                        idx = idx + 1
                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                        u = u + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                        continue 
                                        else:
                                            if idx < stor7.length:
                                                mem[0] = 7
                                                if teamNum:
                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                        if u + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= u:
                                                            if idx - stor8[address(msg.sender)] < mem[256]:
                                                                mem[(32 * idx - stor8[address(msg.sender)]) + 288] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    idx = idx + 1
                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    u = u + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                    continue 
                    else:
                        if t:
                            if 10^18 * t / t == 10^18:
                                if stor7[idx].field_0:
                                    if not 10^18 * t / stor7[idx].field_0:
                                        mem[0] = msg.sender
                                        mem[32] = 4
                                        if bool(stor4[address(msg.sender)]) != 1:
                                            if u >= u:
                                                if idx - stor8[address(msg.sender)] < mem[256]:
                                                    mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 0
                                                    if t >= t:
                                                        s = 0
                                                        idx = idx + 1
                                                        t = t
                                                        u = u
                                                        continue 
                                        else:
                                            if idx < stor7.length:
                                                mem[0] = 7
                                                if teamNum:
                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                        if u + (stor7[idx].field_512 / teamNum) >= u:
                                                            if idx - stor8[address(msg.sender)] < mem[256]:
                                                                mem[(32 * idx - stor8[address(msg.sender)]) + 288] = stor7[idx].field_512 / teamNum
                                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                    s = stor7[idx].field_512 / teamNum
                                                                    idx = idx + 1
                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                    u = u + (stor7[idx].field_512 / teamNum)
                                                                    continue 
                                    else:
                                        if 10^18 * t / stor7[idx].field_0:
                                            if 10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * t / stor7[idx].field_0 == stor7[idx].field_256:
                                                mem[0] = msg.sender
                                                mem[32] = 4
                                                if bool(stor4[address(msg.sender)]) != 1:
                                                    if u + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= u:
                                                        if idx - stor8[address(msg.sender)] < mem[256]:
                                                            mem[(32 * idx - stor8[address(msg.sender)]) + 288] = 10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                            if t + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                s = 10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                idx = idx + 1
                                                                t = t + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                u = u + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                if u + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= u:
                                                                    if idx - stor8[address(msg.sender)] < mem[256]:
                                                                        mem[(32 * idx - stor8[address(msg.sender)]) + 288] = (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                        if t + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                            s = (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            idx = idx + 1
                                                                            t = t + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            u = u + (10^18 * t / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                    revert
                _14521 = mem[256]
                t = 0
                while t < _14521:
                    require t < mem[256]
                    if mem[(32 * t) + 288] > 0:
                        mem[0] = msg.sender
                        mem[32] = 8
                        require t < mem[256]
                        _14798 = mem[(32 * t) + 288]
                        mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = stor8[address(msg.sender)] + t
                        mem[(32 * stor7.length - stor8[address(msg.sender)]) + 320] = _14798
                        emit Reconcile(stor8[address(msg.sender)] + t, _14798, msg.sender);
                        require t < mem[256]
                        mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = mem[(32 * t) + 288]
                        emit Transfer(mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288], 0, msg.sender);
                    t = t + 1
                    continue 
                if u <= 0:
                    stor8[address(msg.sender)] = stor7.length
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = 0
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 320] = 0
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 352] = 0
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 384] = 0
                    _msize = max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)])
                    mem[_msize + 320] = 0
                    mem[0] = arg1
                    mem[32] = 8
                    if stor8[address(arg1)] == stor7.length:
                        idx = 0
                        while idx < 0:
                            require idx < mem[_msize + 320]
                            if mem[(32 * idx) + (_msize + 320) + 32] > 0:
                                mem[0] = arg1
                                mem[32] = 8
                                require idx < mem[_msize + 320]
                                _24862 = mem[(32 * idx) + (_msize + 320) + 32]
                                mem[(_msize + 320) + 32] = stor8[address(arg1)] + idx
                                mem[(_msize + 320) + 64] = _24862
                                emit Reconcile(stor8[address(arg1)] + idx, _24862, arg1);
                                require idx < mem[_msize + 320]
                                mem[(_msize + 320) + 32] = mem[(32 * idx) + (_msize + 320) + 32]
                                emit Transfer((stor8[address(arg1)] + idx), 0, arg1);
                            idx = idx + 1
                            continue 
                    else:
                        if stor1[address(arg1)]:
                            if msize < (max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)]) + 320) + 32:
                                mem[(_msize + 320) + 32] = stor7.length - stor8[address(arg1)]
                                s = 0
                                idx = stor8[address(arg1)]
                                s = stor1[address(arg1)]
                                t = 0
                                while idx < stor7.length:
                                    if not s:
                                        if stor7[idx].field_0:
                                            if not 0 / stor7[idx].field_0:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t >= t:
                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                            if s >= s:
                                                                s = 0
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if stor7[idx].field_512 / teamNum >= 0:
                                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = stor7[idx].field_512 / teamNum
                                                                            idx = idx + 1
                                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                                            else:
                                                if 0 / stor7[idx].field_0:
                                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        idx = idx + 1
                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    idx = idx + 1
                                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                    else:
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                if stor7[idx].field_0:
                                                    if not 10^18 * s / stor7[idx].field_0:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t >= t:
                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                                    if s >= s:
                                                                        s = 0
                                                                        idx = idx + 1
                                                                        s = s
                                                                        t = t
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = stor7[idx].field_512 / teamNum
                                                                                    idx = idx + 1
                                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                                    else:
                                                        if 10^18 * s / stor7[idx].field_0:
                                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                mem[0] = arg1
                                                                mem[32] = 4
                                                                if bool(stor4[address(arg1)]) != 1:
                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                idx = idx + 1
                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                continue 
                                                                else:
                                                                    if idx < stor7.length:
                                                                        mem[0] = 7
                                                                        if teamNum:
                                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            idx = idx + 1
                                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            continue 
                                    revert
                                _32846 = mem[(_msize + 320) + 32]
                                idx = 0
                                while idx < _32846:
                                    require idx < mem[(_msize + 320) + 32]
                                    if mem[(32 * idx) + (_msize + 320) + 64] > 0:
                                        mem[0] = arg1
                                        mem[32] = 8
                                        require idx < mem[(_msize + 320) + 32]
                                        _34090 = mem[(32 * idx) + (_msize + 320) + 64]
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = stor8[address(arg1)] + idx
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 96] = _34090
                                        emit Reconcile(stor8[address(arg1)] + idx, _34090, arg1);
                                        require idx < mem[(_msize + 320) + 32]
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = mem[(32 * idx) + (_msize + 320) + 64]
                                        emit Transfer(mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64], 0, arg1);
                                    idx = idx + 1
                                    continue 
                            else:
                                _msize = max((32 * idx - stor8[address(msg.sender)]) + 288, (32 * stor7.length - stor8[address(msg.sender)]) + 384, _msize + 384, max((32 * idx - stor8[address(msg.sender)]) + 224, (32 * stor7.length - stor8[address(msg.sender)]) + 320, _msize + 320) + 96)
                                mem[_msize + 32] = stor7.length - stor8[address(arg1)]
                                mem[64] = (_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32
                                s = 0
                                idx = stor8[address(arg1)]
                                s = stor1[address(arg1)]
                                t = 0
                                while idx < stor7.length:
                                    if not s:
                                        if stor7[idx].field_0:
                                            if not 0 / stor7[idx].field_0:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t >= t:
                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                            if s >= s:
                                                                s = 0
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if stor7[idx].field_512 / teamNum >= 0:
                                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = stor7[idx].field_512 / teamNum
                                                                            idx = idx + 1
                                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                                            else:
                                                if 0 / stor7[idx].field_0:
                                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        idx = idx + 1
                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    idx = idx + 1
                                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                    else:
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                if stor7[idx].field_0:
                                                    if not 10^18 * s / stor7[idx].field_0:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t >= t:
                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                                    if s >= s:
                                                                        s = 0
                                                                        idx = idx + 1
                                                                        s = s
                                                                        t = t
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = stor7[idx].field_512 / teamNum
                                                                                    idx = idx + 1
                                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                                    else:
                                                        if 10^18 * s / stor7[idx].field_0:
                                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                mem[0] = arg1
                                                                mem[32] = 4
                                                                if bool(stor4[address(arg1)]) != 1:
                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                idx = idx + 1
                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                continue 
                                                                else:
                                                                    if idx < stor7.length:
                                                                        mem[0] = 7
                                                                        if teamNum:
                                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            idx = idx + 1
                                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            continue 
                                    revert
                                _32847 = mem[_msize + 32]
                                idx = 0
                                while idx < _32847:
                                    require idx < mem[_msize + 32]
                                    if mem[(32 * idx) + (_msize + 32) + 32] > 0:
                                        mem[0] = arg1
                                        mem[32] = 8
                                        require idx < mem[_msize + 32]
                                        _34094 = mem[(32 * idx) + (_msize + 32) + 32]
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = stor8[address(arg1)] + idx
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 64] = _34094
                                        emit Reconcile(stor8[address(arg1)] + idx, _34094, arg1);
                                        require idx < mem[_msize + 32]
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = mem[(32 * idx) + (_msize + 32) + 32]
                                        emit Transfer(mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32], 0, arg1);
                                    idx = idx + 1
                                    continue 
                            if t > 0:
                                require stor1[address(arg1)] + t >= stor1[address(arg1)]
                                stor1[address(arg1)] += t
                        else:
                            mem[0] = arg1
                            mem[32] = 4
                            if bool(stor4[address(arg1)]) != 1:
                                idx = 0
                                while idx < 0:
                                    require idx < mem[_msize + 320]
                                    if mem[(32 * idx) + (_msize + 320) + 32] > 0:
                                        mem[0] = arg1
                                        mem[32] = 8
                                        require idx < mem[_msize + 320]
                                        _24858 = mem[(32 * idx) + (_msize + 320) + 32]
                                        mem[(_msize + 320) + 32] = stor8[address(arg1)] + idx
                                        mem[(_msize + 320) + 64] = _24858
                                        emit Reconcile(stor8[address(arg1)] + idx, _24858, arg1);
                                        require idx < mem[_msize + 320]
                                        mem[(_msize + 320) + 32] = mem[(32 * idx) + (_msize + 320) + 32]
                                        emit Transfer((stor8[address(arg1)] + idx), 0, arg1);
                                    idx = idx + 1
                                    continue 
                            else:
                                if msize < (max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)]) + 320) + 32:
                                    mem[(_msize + 320) + 32] = stor7.length - stor8[address(arg1)]
                                    s = 0
                                    idx = stor8[address(arg1)]
                                    s = stor1[address(arg1)]
                                    t = 0
                                    while idx < stor7.length:
                                        if not s:
                                            if stor7[idx].field_0:
                                                if not 0 / stor7[idx].field_0:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t >= t:
                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                                if s >= s:
                                                                    s = 0
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if stor7[idx].field_512 / teamNum >= 0:
                                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = stor7[idx].field_512 / teamNum
                                                                                idx = idx + 1
                                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                                else:
                                                    if 0 / stor7[idx].field_0:
                                                        if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                            s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            idx = idx + 1
                                                                            s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        idx = idx + 1
                                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                        else:
                                            if s:
                                                if 10^18 * s / s == 10^18:
                                                    if stor7[idx].field_0:
                                                        if not 10^18 * s / stor7[idx].field_0:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t >= t:
                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                                        if s >= s:
                                                                            s = 0
                                                                            idx = idx + 1
                                                                            s = s
                                                                            t = t
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if stor7[idx].field_512 / teamNum >= 0:
                                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = stor7[idx].field_512 / teamNum
                                                                                        idx = idx + 1
                                                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                                        else:
                                                            if 10^18 * s / stor7[idx].field_0:
                                                                if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                    mem[0] = arg1
                                                                    mem[32] = 4
                                                                    if bool(stor4[address(arg1)]) != 1:
                                                                        if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                    s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                    idx = idx + 1
                                                                                    s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                    t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                    continue 
                                                                    else:
                                                                        if idx < stor7.length:
                                                                            mem[0] = 7
                                                                            if teamNum:
                                                                                if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                                s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                idx = idx + 1
                                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                continue 
                                        revert
                                    _32848 = mem[(_msize + 320) + 32]
                                    idx = 0
                                    while idx < _32848:
                                        require idx < mem[(_msize + 320) + 32]
                                        if mem[(32 * idx) + (_msize + 320) + 64] > 0:
                                            mem[0] = arg1
                                            mem[32] = 8
                                            require idx < mem[(_msize + 320) + 32]
                                            _34098 = mem[(32 * idx) + (_msize + 320) + 64]
                                            mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = stor8[address(arg1)] + idx
                                            mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 96] = _34098
                                            emit Reconcile(stor8[address(arg1)] + idx, _34098, arg1);
                                            require idx < mem[(_msize + 320) + 32]
                                            mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = mem[(32 * idx) + (_msize + 320) + 64]
                                            emit Transfer(mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64], 0, arg1);
                                        idx = idx + 1
                                        continue 
                                else:
                                    _msize = max((32 * idx - stor8[address(msg.sender)]) + 288, (32 * stor7.length - stor8[address(msg.sender)]) + 384, _msize + 384, max((32 * idx - stor8[address(msg.sender)]) + 224, (32 * stor7.length - stor8[address(msg.sender)]) + 320, _msize + 320) + 96)
                                    mem[_msize + 32] = stor7.length - stor8[address(arg1)]
                                    mem[64] = (_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32
                                    s = 0
                                    idx = stor8[address(arg1)]
                                    s = stor1[address(arg1)]
                                    t = 0
                                    while idx < stor7.length:
                                        if not s:
                                            if stor7[idx].field_0:
                                                if not 0 / stor7[idx].field_0:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t >= t:
                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                                if s >= s:
                                                                    s = 0
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if stor7[idx].field_512 / teamNum >= 0:
                                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = stor7[idx].field_512 / teamNum
                                                                                idx = idx + 1
                                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                                else:
                                                    if 0 / stor7[idx].field_0:
                                                        if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                            s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            idx = idx + 1
                                                                            s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        idx = idx + 1
                                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                        else:
                                            if s:
                                                if 10^18 * s / s == 10^18:
                                                    if stor7[idx].field_0:
                                                        if not 10^18 * s / stor7[idx].field_0:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t >= t:
                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                                        if s >= s:
                                                                            s = 0
                                                                            idx = idx + 1
                                                                            s = s
                                                                            t = t
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if stor7[idx].field_512 / teamNum >= 0:
                                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = stor7[idx].field_512 / teamNum
                                                                                        idx = idx + 1
                                                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                                        else:
                                                            if 10^18 * s / stor7[idx].field_0:
                                                                if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                    mem[0] = arg1
                                                                    mem[32] = 4
                                                                    if bool(stor4[address(arg1)]) != 1:
                                                                        if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                    s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                    idx = idx + 1
                                                                                    s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                    t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                    continue 
                                                                    else:
                                                                        if idx < stor7.length:
                                                                            mem[0] = 7
                                                                            if teamNum:
                                                                                if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                                s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                idx = idx + 1
                                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                continue 
                                        revert
                                    _32849 = mem[_msize + 32]
                                    idx = 0
                                    while idx < _32849:
                                        require idx < mem[_msize + 32]
                                        if mem[(32 * idx) + (_msize + 32) + 32] > 0:
                                            mem[0] = arg1
                                            mem[32] = 8
                                            require idx < mem[_msize + 32]
                                            _34102 = mem[(32 * idx) + (_msize + 32) + 32]
                                            mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = stor8[address(arg1)] + idx
                                            mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 64] = _34102
                                            emit Reconcile(stor8[address(arg1)] + idx, _34102, arg1);
                                            require idx < mem[_msize + 32]
                                            mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = mem[(32 * idx) + (_msize + 32) + 32]
                                            emit Transfer(mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32], 0, arg1);
                                        idx = idx + 1
                                        continue 
                                if t > 0:
                                    require stor1[address(arg1)] + t >= stor1[address(arg1)]
                                    stor1[address(arg1)] += t
                else:
                    require stor1[address(msg.sender)] + u >= stor1[address(msg.sender)]
                    stor1[address(msg.sender)] += u
                    stor8[address(msg.sender)] = stor7.length
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 288] = 0
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 320] = 0
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 352] = 0
                    mem[(32 * stor7.length - stor8[address(msg.sender)]) + 384] = 0
                    _msize = max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)])
                    mem[_msize + 320] = 0
                    mem[0] = arg1
                    mem[32] = 8
                    if stor8[address(arg1)] == stor7.length:
                        idx = 0
                        while idx < 0:
                            require idx < mem[_msize + 320]
                            if mem[(32 * idx) + (_msize + 320) + 32] > 0:
                                mem[0] = arg1
                                mem[32] = 8
                                require idx < mem[_msize + 320]
                                _24886 = mem[(32 * idx) + (_msize + 320) + 32]
                                mem[(_msize + 320) + 32] = stor8[address(arg1)] + idx
                                mem[(_msize + 320) + 64] = _24886
                                emit Reconcile(stor8[address(arg1)] + idx, _24886, arg1);
                                require idx < mem[_msize + 320]
                                mem[(_msize + 320) + 32] = mem[(32 * idx) + (_msize + 320) + 32]
                                emit Transfer((stor8[address(arg1)] + idx), 0, arg1);
                            idx = idx + 1
                            continue 
                    else:
                        if stor1[address(arg1)]:
                            if msize < (max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)]) + 320) + 32:
                                mem[(_msize + 320) + 32] = stor7.length - stor8[address(arg1)]
                                s = 0
                                idx = stor8[address(arg1)]
                                s = stor1[address(arg1)]
                                t = 0
                                while idx < stor7.length:
                                    if not s:
                                        if stor7[idx].field_0:
                                            if not 0 / stor7[idx].field_0:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t >= t:
                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                            if s >= s:
                                                                s = 0
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if stor7[idx].field_512 / teamNum >= 0:
                                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = stor7[idx].field_512 / teamNum
                                                                            idx = idx + 1
                                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                                            else:
                                                if 0 / stor7[idx].field_0:
                                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        idx = idx + 1
                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    idx = idx + 1
                                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                    else:
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                if stor7[idx].field_0:
                                                    if not 10^18 * s / stor7[idx].field_0:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t >= t:
                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                                    if s >= s:
                                                                        s = 0
                                                                        idx = idx + 1
                                                                        s = s
                                                                        t = t
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = stor7[idx].field_512 / teamNum
                                                                                    idx = idx + 1
                                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                                    else:
                                                        if 10^18 * s / stor7[idx].field_0:
                                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                mem[0] = arg1
                                                                mem[32] = 4
                                                                if bool(stor4[address(arg1)]) != 1:
                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                idx = idx + 1
                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                continue 
                                                                else:
                                                                    if idx < stor7.length:
                                                                        mem[0] = 7
                                                                        if teamNum:
                                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            idx = idx + 1
                                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            continue 
                                    revert
                                _32854 = mem[(_msize + 320) + 32]
                                idx = 0
                                while idx < _32854:
                                    require idx < mem[(_msize + 320) + 32]
                                    if mem[(32 * idx) + (_msize + 320) + 64] > 0:
                                        mem[0] = arg1
                                        mem[32] = 8
                                        require idx < mem[(_msize + 320) + 32]
                                        _34122 = mem[(32 * idx) + (_msize + 320) + 64]
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = stor8[address(arg1)] + idx
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 96] = _34122
                                        emit Reconcile(stor8[address(arg1)] + idx, _34122, arg1);
                                        require idx < mem[(_msize + 320) + 32]
                                        mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = mem[(32 * idx) + (_msize + 320) + 64]
                                        emit Transfer(mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64], 0, arg1);
                                    idx = idx + 1
                                    continue 
                            else:
                                _msize = max((32 * idx - stor8[address(msg.sender)]) + 288, (32 * stor7.length - stor8[address(msg.sender)]) + 384, _msize + 384, max((32 * idx - stor8[address(msg.sender)]) + 224, (32 * stor7.length - stor8[address(msg.sender)]) + 320, _msize + 320) + 96)
                                mem[_msize + 32] = stor7.length - stor8[address(arg1)]
                                mem[64] = (_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32
                                s = 0
                                idx = stor8[address(arg1)]
                                s = stor1[address(arg1)]
                                t = 0
                                while idx < stor7.length:
                                    if not s:
                                        if stor7[idx].field_0:
                                            if not 0 / stor7[idx].field_0:
                                                mem[0] = arg1
                                                mem[32] = 4
                                                if bool(stor4[address(arg1)]) != 1:
                                                    if t >= t:
                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                            if s >= s:
                                                                s = 0
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                else:
                                                    if idx < stor7.length:
                                                        mem[0] = 7
                                                        if teamNum:
                                                            if stor7[idx].field_512 / teamNum >= 0:
                                                                if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                        if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                            s = stor7[idx].field_512 / teamNum
                                                                            idx = idx + 1
                                                                            s = s + (stor7[idx].field_512 / teamNum)
                                                                            t = t + (stor7[idx].field_512 / teamNum)
                                                                            continue 
                                            else:
                                                if 0 / stor7[idx].field_0:
                                                    if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                        s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        idx = idx + 1
                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                        if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    idx = idx + 1
                                                                                    s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                    else:
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                if stor7[idx].field_0:
                                                    if not 10^18 * s / stor7[idx].field_0:
                                                        mem[0] = arg1
                                                        mem[32] = 4
                                                        if bool(stor4[address(arg1)]) != 1:
                                                            if t >= t:
                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                                    if s >= s:
                                                                        s = 0
                                                                        idx = idx + 1
                                                                        s = s
                                                                        t = t
                                                                        continue 
                                                        else:
                                                            if idx < stor7.length:
                                                                mem[0] = 7
                                                                if teamNum:
                                                                    if stor7[idx].field_512 / teamNum >= 0:
                                                                        if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                                if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                    s = stor7[idx].field_512 / teamNum
                                                                                    idx = idx + 1
                                                                                    s = s + (stor7[idx].field_512 / teamNum)
                                                                                    t = t + (stor7[idx].field_512 / teamNum)
                                                                                    continue 
                                                    else:
                                                        if 10^18 * s / stor7[idx].field_0:
                                                            if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                mem[0] = arg1
                                                                mem[32] = 4
                                                                if bool(stor4[address(arg1)]) != 1:
                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                idx = idx + 1
                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                continue 
                                                                else:
                                                                    if idx < stor7.length:
                                                                        mem[0] = 7
                                                                        if teamNum:
                                                                            if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                            s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            idx = idx + 1
                                                                                            s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            continue 
                                    revert
                                _32855 = mem[_msize + 32]
                                idx = 0
                                while idx < _32855:
                                    require idx < mem[_msize + 32]
                                    if mem[(32 * idx) + (_msize + 32) + 32] > 0:
                                        mem[0] = arg1
                                        mem[32] = 8
                                        require idx < mem[_msize + 32]
                                        _34126 = mem[(32 * idx) + (_msize + 32) + 32]
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = stor8[address(arg1)] + idx
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 64] = _34126
                                        emit Reconcile(stor8[address(arg1)] + idx, _34126, arg1);
                                        require idx < mem[_msize + 32]
                                        mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = mem[(32 * idx) + (_msize + 32) + 32]
                                        emit Transfer(mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32], 0, arg1);
                                    idx = idx + 1
                                    continue 
                            if t > 0:
                                require stor1[address(arg1)] + t >= stor1[address(arg1)]
                                stor1[address(arg1)] += t
                        else:
                            mem[0] = arg1
                            mem[32] = 4
                            if bool(stor4[address(arg1)]) != 1:
                                idx = 0
                                while idx < 0:
                                    require idx < mem[_msize + 320]
                                    if mem[(32 * idx) + (_msize + 320) + 32] > 0:
                                        mem[0] = arg1
                                        mem[32] = 8
                                        require idx < mem[_msize + 320]
                                        _24882 = mem[(32 * idx) + (_msize + 320) + 32]
                                        mem[(_msize + 320) + 32] = stor8[address(arg1)] + idx
                                        mem[(_msize + 320) + 64] = _24882
                                        emit Reconcile(stor8[address(arg1)] + idx, _24882, arg1);
                                        require idx < mem[_msize + 320]
                                        mem[(_msize + 320) + 32] = mem[(32 * idx) + (_msize + 320) + 32]
                                        emit Transfer((stor8[address(arg1)] + idx), 0, arg1);
                                    idx = idx + 1
                                    continue 
                            else:
                                if msize < (max((32 * stor7.length - stor8[address(msg.sender)]) + 160, 32 * idx - stor8[address(msg.sender)]) + 320) + 32:
                                    mem[(_msize + 320) + 32] = stor7.length - stor8[address(arg1)]
                                    s = 0
                                    idx = stor8[address(arg1)]
                                    s = stor1[address(arg1)]
                                    t = 0
                                    while idx < stor7.length:
                                        if not s:
                                            if stor7[idx].field_0:
                                                if not 0 / stor7[idx].field_0:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t >= t:
                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                                if s >= s:
                                                                    s = 0
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if stor7[idx].field_512 / teamNum >= 0:
                                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = stor7[idx].field_512 / teamNum
                                                                                idx = idx + 1
                                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                                else:
                                                    if 0 / stor7[idx].field_0:
                                                        if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                            s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            idx = idx + 1
                                                                            s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        idx = idx + 1
                                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                        else:
                                            if s:
                                                if 10^18 * s / s == 10^18:
                                                    if stor7[idx].field_0:
                                                        if not 10^18 * s / stor7[idx].field_0:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t >= t:
                                                                    if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 0
                                                                        if s >= s:
                                                                            s = 0
                                                                            idx = idx + 1
                                                                            s = s
                                                                            t = t
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if stor7[idx].field_512 / teamNum >= 0:
                                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = stor7[idx].field_512 / teamNum
                                                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = stor7[idx].field_512 / teamNum
                                                                                        idx = idx + 1
                                                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                                        else:
                                                            if 10^18 * s / stor7[idx].field_0:
                                                                if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                    mem[0] = arg1
                                                                    mem[32] = 4
                                                                    if bool(stor4[address(arg1)]) != 1:
                                                                        if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                    s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                    idx = idx + 1
                                                                                    s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                    t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                    continue 
                                                                    else:
                                                                        if idx < stor7.length:
                                                                            mem[0] = 7
                                                                            if teamNum:
                                                                                if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                        if idx - stor8[address(arg1)] < mem[(_msize + 320) + 32]:
                                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 320) + 64] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                                s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                idx = idx + 1
                                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                continue 
                                        revert
                                    _32856 = mem[(_msize + 320) + 32]
                                    idx = 0
                                    while idx < _32856:
                                        require idx < mem[(_msize + 320) + 32]
                                        if mem[(32 * idx) + (_msize + 320) + 64] > 0:
                                            mem[0] = arg1
                                            mem[32] = 8
                                            require idx < mem[(_msize + 320) + 32]
                                            _34130 = mem[(32 * idx) + (_msize + 320) + 64]
                                            mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = stor8[address(arg1)] + idx
                                            mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 96] = _34130
                                            emit Reconcile(stor8[address(arg1)] + idx, _34130, arg1);
                                            require idx < mem[(_msize + 320) + 32]
                                            mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64] = mem[(32 * idx) + (_msize + 320) + 64]
                                            emit Transfer(mem[(_msize + 320) + (32 * stor7.length - stor8[address(arg1)]) + 64], 0, arg1);
                                        idx = idx + 1
                                        continue 
                                else:
                                    _msize = max((32 * idx - stor8[address(msg.sender)]) + 288, (32 * stor7.length - stor8[address(msg.sender)]) + 384, _msize + 384, max((32 * idx - stor8[address(msg.sender)]) + 224, (32 * stor7.length - stor8[address(msg.sender)]) + 320, _msize + 320) + 96)
                                    mem[_msize + 32] = stor7.length - stor8[address(arg1)]
                                    mem[64] = (_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32
                                    s = 0
                                    idx = stor8[address(arg1)]
                                    s = stor1[address(arg1)]
                                    t = 0
                                    while idx < stor7.length:
                                        if not s:
                                            if stor7[idx].field_0:
                                                if not 0 / stor7[idx].field_0:
                                                    mem[0] = arg1
                                                    mem[32] = 4
                                                    if bool(stor4[address(arg1)]) != 1:
                                                        if t >= t:
                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                                if s >= s:
                                                                    s = 0
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                    else:
                                                        if idx < stor7.length:
                                                            mem[0] = 7
                                                            if teamNum:
                                                                if stor7[idx].field_512 / teamNum >= 0:
                                                                    if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                            if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                s = stor7[idx].field_512 / teamNum
                                                                                idx = idx + 1
                                                                                s = s + (stor7[idx].field_512 / teamNum)
                                                                                t = t + (stor7[idx].field_512 / teamNum)
                                                                                continue 
                                                else:
                                                    if 0 / stor7[idx].field_0:
                                                        if 0 / stor7[idx].field_0 * stor7[idx].field_256 / 0 / stor7[idx].field_0 == stor7[idx].field_256:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                        if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                            s = 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                            idx = idx + 1
                                                                            s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                            if t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                    if s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        idx = idx + 1
                                                                                        s = s + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (0 / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                        else:
                                            if s:
                                                if 10^18 * s / s == 10^18:
                                                    if stor7[idx].field_0:
                                                        if not 10^18 * s / stor7[idx].field_0:
                                                            mem[0] = arg1
                                                            mem[32] = 4
                                                            if bool(stor4[address(arg1)]) != 1:
                                                                if t >= t:
                                                                    if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                        mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 0
                                                                        if s >= s:
                                                                            s = 0
                                                                            idx = idx + 1
                                                                            s = s
                                                                            t = t
                                                                            continue 
                                                            else:
                                                                if idx < stor7.length:
                                                                    mem[0] = 7
                                                                    if teamNum:
                                                                        if stor7[idx].field_512 / teamNum >= 0:
                                                                            if t + (stor7[idx].field_512 / teamNum) >= t:
                                                                                if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                    mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = stor7[idx].field_512 / teamNum
                                                                                    if s + (stor7[idx].field_512 / teamNum) >= s:
                                                                                        s = stor7[idx].field_512 / teamNum
                                                                                        idx = idx + 1
                                                                                        s = s + (stor7[idx].field_512 / teamNum)
                                                                                        t = t + (stor7[idx].field_512 / teamNum)
                                                                                        continue 
                                                        else:
                                                            if 10^18 * s / stor7[idx].field_0:
                                                                if 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18 * s / stor7[idx].field_0 == stor7[idx].field_256:
                                                                    mem[0] = arg1
                                                                    mem[32] = 4
                                                                    if bool(stor4[address(arg1)]) != 1:
                                                                        if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= t:
                                                                            if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) >= s:
                                                                                    s = 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18
                                                                                    idx = idx + 1
                                                                                    s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                    t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18)
                                                                                    continue 
                                                                    else:
                                                                        if idx < stor7.length:
                                                                            mem[0] = 7
                                                                            if teamNum:
                                                                                if (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= 10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18:
                                                                                    if t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= t:
                                                                                        if idx - stor8[address(arg1)] < mem[_msize + 32]:
                                                                                            mem[(32 * idx - stor8[address(arg1)]) + (_msize + 32) + 32] = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                            if s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum) >= s:
                                                                                                s = (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                idx = idx + 1
                                                                                                s = s + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                t = t + (10^18 * s / stor7[idx].field_0 * stor7[idx].field_256 / 10^18) + (stor7[idx].field_512 / teamNum)
                                                                                                continue 
                                        revert
                                    _32857 = mem[_msize + 32]
                                    idx = 0
                                    while idx < _32857:
                                        require idx < mem[_msize + 32]
                                        if mem[(32 * idx) + (_msize + 32) + 32] > 0:
                                            mem[0] = arg1
                                            mem[32] = 8
                                            require idx < mem[_msize + 32]
                                            _34134 = mem[(32 * idx) + (_msize + 32) + 32]
                                            mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = stor8[address(arg1)] + idx
                                            mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 64] = _34134
                                            emit Reconcile(stor8[address(arg1)] + idx, _34134, arg1);
                                            require idx < mem[_msize + 32]
                                            mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32] = mem[(32 * idx) + (_msize + 32) + 32]
                                            emit Transfer(mem[(_msize + 32) + (32 * stor7.length - stor8[address(arg1)]) + 32], 0, arg1);
                                        idx = idx + 1
                                        continue 
                                if t > 0:
                                    require stor1[address(arg1)] + t >= stor1[address(arg1)]
                                    stor1[address(arg1)] += t
    stor8[address(arg1)] = stor7.length
    require arg1
    require arg2 <= stor1[address(msg.sender)]
    require arg2 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg2
    require stor1[address(arg1)] + arg2 >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
