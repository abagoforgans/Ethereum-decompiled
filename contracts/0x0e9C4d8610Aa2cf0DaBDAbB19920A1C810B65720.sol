contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 matureBalanceOf;
mapping of uint256 agingBalanceOf;
array of uint256 stor9;
array of struct stor10;
mapping of uint256 allowance;
uint256 stor12;
mapping of address stor13;
mapping of uint256 stor14;
mapping of uint256 stor15;

function name() {
    return name[0 len name.length]
}

function matureBalanceOf(address arg1) {
    return matureBalanceOf[arg1]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function agingBalanceOf(address arg1, uint256 arg2) {
    return agingBalanceOf[arg1][arg2]
}

function _fallback() {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function addAgingTimesForPool(address arg1, uint256 arg2) {
    require owner == msg.sender
    stor15[address(arg1)] = arg2
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function calculateDividends(uint256 arg1) {
    require arg1 < stor10.length
    require block.timestamp >= stor10[arg1].field_0
    require arg1 < stor10.length
    require not stor10[arg1].field_512
    idx = 1
    while idx <= stor12:
        require arg1 < stor10.length
        balanceOf[stor13[idx]] += balanceOf[stor13[idx]] * stor10[arg1].field_256 / 10000
        require arg1 < stor10.length
        mem[0] = stor13[idx]
        mem[32] = 7
        matureBalanceOf[stor13[idx]] += matureBalanceOf[stor13[idx]] * stor10[arg1].field_256 / 10000
        idx = idx + 1
        continue 
}

function mintToken(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    if arg3 <= block.timestamp:
        matureBalanceOf[address(arg1)] += arg2
    else:
        if not stor14[address(arg1)]:
            stor14[address(arg1)] = 1
            stor12++
            stor13[stor12 + 1] = arg1
        idx = 0
        s = 0
        while idx < stor9.length:
            mem[0] = 9
            if stor9[idx] != arg3:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if not s:
            stor9.length++
            if not stor9.length <= stor9.length + 1:
                idx = stor9.length + 1
                while stor9.length > idx:
                    stor9[idx] = 0
                    idx = idx + 1
                    continue 
            stor9[stor9.length] = arg3
        agingBalanceOf[address(arg1)][arg3] += arg2
        emit AgingTransfer(arg2, arg3, owner, arg1);
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if stor9[idx] < block.timestamp:
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = sha3(address(arg1), 8)
            if agingBalanceOf[address(arg1)][stor9[idx]] > 0:
                s = 0
                while s < 24:
                    require s < stor10.length
                    if block.timestamp < stor10[s].field_0:
                        require idx < stor9.length
                        matureBalanceOf[address(arg1)] += agingBalanceOf[address(arg1)][stor9[idx]]
                        mem[0] = stor9[idx]
                        mem[32] = sha3(address(arg1), 8)
                        agingBalanceOf[address(arg1)][stor9[idx]] = 0
                        idx = idx + 1
                        continue 
                    require s < stor10.length
                    if not stor10[s].field_512:
                        require idx < stor9.length
                        matureBalanceOf[address(arg1)] += agingBalanceOf[address(arg1)][stor9[idx]]
                        mem[0] = stor9[idx]
                        mem[32] = sha3(address(arg1), 8)
                        agingBalanceOf[address(arg1)][stor9[idx]] = 0
                        idx = idx + 1
                        continue 
                    require s < stor10.length
                    require idx < stor9.length
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = sha3(address(arg1), 8)
                    agingBalanceOf[address(arg1)][stor9[idx]] += agingBalanceOf[address(arg1)][stor9[idx]] * stor10[s].field_256 / 10000
                    s = s + 1
                    continue 
                require idx < stor9.length
                matureBalanceOf[address(arg1)] += agingBalanceOf[address(arg1)][stor9[idx]]
                mem[0] = stor9[idx]
                mem[32] = sha3(address(arg1), 8)
                agingBalanceOf[address(arg1)][stor9[idx]] = 0
        idx = idx + 1
        continue 
    require matureBalanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require matureBalanceOf[address(arg2)] + arg3 > matureBalanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    matureBalanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if stor15[address(arg1)] <= 0:
        matureBalanceOf[address(arg2)] += arg3
    else:
        if stor15[address(arg1)] <= block.timestamp:
            matureBalanceOf[address(arg2)] += arg3
        else:
            if stor14[address(arg2)]:
                s = 0
                t = 0
                while s < stor9.length:
                    mem[0] = 9
                    if stor9[s] != stor15[address(arg1)]:
                        s = s + 1
                        t = t
                        continue 
                    s = s + 1
                    t = 1
                    continue 
                if not t:
                    stor9.length++
                    if not stor9.length <= stor9.length + 1:
                        idx = stor9.length + 1
                        while stor9.length > idx:
                            stor9[idx] = 0
                            idx = idx + 1
                            continue 
                    stor9[stor9.length] = stor15[address(arg1)]
            else:
                stor14[address(arg2)] = 1
                stor12++
                stor13[stor12 + 1] = arg2
                idx = 0
                s = 0
                while idx < stor9.length:
                    mem[0] = 9
                    if stor9[idx] != stor15[address(arg1)]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 1
                    continue 
                if not s:
                    stor9.length++
                    if not stor9.length <= stor9.length + 1:
                        idx = stor9.length + 1
                        while stor9.length > idx:
                            stor9[idx] = 0
                            idx = idx + 1
                            continue 
                    stor9[stor9.length] = stor15[address(arg1)]
            agingBalanceOf[address(arg2)][stor15[address(arg1)]] += arg3
            emit AgingTransfer(arg3, stor15[address(arg1)], arg1, arg2);
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if stor9[idx] < block.timestamp:
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = sha3(address(msg.sender), 8)
            if agingBalanceOf[address(msg.sender)][stor9[idx]] > 0:
                s = 0
                while s < 24:
                    require s < stor10.length
                    if block.timestamp < stor10[s].field_0:
                        require idx < stor9.length
                        matureBalanceOf[address(msg.sender)] += agingBalanceOf[address(msg.sender)][stor9[idx]]
                        mem[0] = stor9[idx]
                        mem[32] = sha3(address(msg.sender), 8)
                        agingBalanceOf[address(msg.sender)][stor9[idx]] = 0
                        idx = idx + 1
                        continue 
                    require s < stor10.length
                    if not stor10[s].field_512:
                        require idx < stor9.length
                        matureBalanceOf[address(msg.sender)] += agingBalanceOf[address(msg.sender)][stor9[idx]]
                        mem[0] = stor9[idx]
                        mem[32] = sha3(address(msg.sender), 8)
                        agingBalanceOf[address(msg.sender)][stor9[idx]] = 0
                        idx = idx + 1
                        continue 
                    require s < stor10.length
                    require idx < stor9.length
                    require idx < stor9.length
                    mem[0] = stor9[idx]
                    mem[32] = sha3(address(msg.sender), 8)
                    agingBalanceOf[address(msg.sender)][stor9[idx]] += agingBalanceOf[address(msg.sender)][stor9[idx]] * stor10[s].field_256 / 10000
                    s = s + 1
                    continue 
                require idx < stor9.length
                matureBalanceOf[address(msg.sender)] += agingBalanceOf[address(msg.sender)][stor9[idx]]
                mem[0] = stor9[idx]
                mem[32] = sha3(address(msg.sender), 8)
                agingBalanceOf[address(msg.sender)][stor9[idx]] = 0
        idx = idx + 1
        continue 
    require matureBalanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require matureBalanceOf[address(arg1)] + arg2 > matureBalanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    matureBalanceOf[address(msg.sender)] -= arg2
    if stor15[address(msg.sender)] <= 0:
        matureBalanceOf[address(arg1)] += arg2
    else:
        if stor15[address(msg.sender)] <= block.timestamp:
            matureBalanceOf[address(arg1)] += arg2
        else:
            if stor14[address(arg1)]:
                idx = 0
                s = 0
                while idx < stor9.length:
                    mem[0] = 9
                    if stor9[idx] != stor15[address(msg.sender)]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 1
                    continue 
                if not s:
                    stor9.length++
                    if not stor9.length <= stor9.length + 1:
                        idx = stor9.length + 1
                        while stor9.length > idx:
                            stor9[idx] = 0
                            idx = idx + 1
                            continue 
                    stor9[stor9.length] = stor15[address(msg.sender)]
            else:
                stor14[address(arg1)] = 1
                stor12++
                stor13[stor12 + 1] = arg1
                s = 0
                t = 0
                while s < stor9.length:
                    mem[0] = 9
                    if stor9[s] != stor15[address(msg.sender)]:
                        s = s + 1
                        t = t
                        continue 
                    s = s + 1
                    t = 1
                    continue 
                if not t:
                    stor9.length++
                    if not stor9.length <= stor9.length + 1:
                        idx = stor9.length + 1
                        while stor9.length > idx:
                            stor9[idx] = 0
                            idx = idx + 1
                            continue 
                    stor9[stor9.length] = stor15[address(msg.sender)]
            agingBalanceOf[address(arg1)][stor15[address(msg.sender)]] += arg2
            emit AgingTransfer(arg2, stor15[address(msg.sender)], msg.sender, arg1);
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
