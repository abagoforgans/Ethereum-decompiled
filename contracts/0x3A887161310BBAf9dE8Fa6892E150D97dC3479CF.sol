contract main {




// =====================  Runtime code  =====================


const tokenExchangeLeastRate = 10

const tokenExchangeInitRate = 500


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 tokenExchangeRate;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint32 sub_286dfb83;
mapping of uint256 refundEth;
mapping of struct stor10;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_286dfb83(?) {
    return sub_286dfb83[arg1]
}

function decimals() {
    return decimals
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function refundEth(address arg1) {
    return refundEth[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function maxSupply() {
    return (200 * 10^6 * 10^decimals)
}

function setOwner(address arg1) {
    require owner == msg.sender
    require arg1 != owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_97ef04ca(?) {
    require owner == msg.sender
    require arg1 > 10
    require arg1 <= 200 * 10^6
    tokenExchangeRate = arg1
    emit ChangeExchangeRate(arg1);
}

function profitEth() payable {
    require owner == msg.sender
    if stor10[(block.timestamp / 168 * 24 * 3600) - 1 << 224].field_0 + msg.value < stor10[(block.timestamp / 168 * 24 * 3600) - 1 << 224].field_0:
        revert with 0, 'SafeMath add failed'
    stor10[(block.timestamp / 168 * 24 * 3600) - 1 << 224].field_0 += msg.value
    if not stor10[(block.timestamp / 168 * 24 * 3600) - 1 << 224].field_256:
        stor10[(block.timestamp / 168 * 24 * 3600) - 1 << 224].field_256 = totalSupply
    emit Profit((block.timestamp / 168 * 24 * 3600) - 1 << 224, stor10[(block.timestamp / 168 * 24 * 3600) - 1 << 224].field_0 + msg.value, msg.sender);
}

function getEthPerfit(address arg1) {
    if not sub_286dfb83[address(arg1)]:
        return 0
    if sub_286dfb83[address(arg1)] >= uint32((block.timestamp / 168 * 24 * 3600) - 1):
        return refundEth[address(arg1)]
    if balanceOf[address(arg1)] <= 0:
        return refundEth[address(arg1)]
    require sub_286dfb83[address(arg1)] > 0
    require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(arg1)]
    if sub_286dfb83[address(arg1)] == uint32((block.timestamp / 168 * 24 * 3600) - 1):
        if refundEth[address(arg1)] < refundEth[address(arg1)]:
            revert with 0, 'SafeMath add failed'
        return refundEth[address(arg1)]
    if not balanceOf[address(arg1)]:
        if refundEth[address(arg1)] < refundEth[address(arg1)]:
            revert with 0, 'SafeMath add failed'
        return refundEth[address(arg1)]
    idx = sub_286dfb83[address(arg1)]
    s = 0
    s = 0
    s = 0
    while uint32(idx) < uint32((block.timestamp / 168 * 24 * 3600) - 1):
        mem[0] = uint32(idx)
        mem[32] = 10
        if stor10[idx << 224].field_0 <= 0:
            idx = idx + 1
            s = stor10[idx << 224].field_256
            s = stor10[idx << 224].field_0
            s = s
            continue 
        if stor10[idx << 224].field_256 <= 0:
            idx = idx + 1
            s = stor10[idx << 224].field_256
            s = stor10[idx << 224].field_0
            s = s
            continue 
        if not stor10[idx << 224].field_0:
            require stor10[idx << 224].field_256 > 0
            require stor10[idx << 224].field_256
            if s + (0 / stor10[idx << 224].field_256) < s:
                revert with 0, 'SafeMath add failed'
            idx = idx + 1
            s = stor10[idx << 224].field_256
            s = stor10[idx << 224].field_0
            s = s + (0 / stor10[idx << 224].field_256)
            continue 
        require stor10[idx << 224].field_0
        if stor10[idx << 224].field_0 * balanceOf[address(arg1)] / stor10[idx << 224].field_0 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath mul failed'
        require stor10[idx << 224].field_256 > 0
        require stor10[idx << 224].field_256
        if s + (stor10[idx << 224].field_0 * balanceOf[address(arg1)] / stor10[idx << 224].field_256) < s:
            revert with 0, 'SafeMath add failed'
        idx = idx + 1
        s = stor10[idx << 224].field_256
        s = stor10[idx << 224].field_0
        s = s + (stor10[idx << 224].field_0 * balanceOf[address(arg1)] / stor10[idx << 224].field_256)
        continue 
    if refundEth[address(arg1)] + s < refundEth[address(arg1)]:
        revert with 0, 'SafeMath add failed'
    return (refundEth[address(arg1)] + s)
}

function withdraw() {
    require sub_286dfb83[address(msg.sender)] > 0
    require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(msg.sender)]
    if sub_286dfb83[address(msg.sender)]:
        if uint32((block.timestamp / 168 * 24 * 3600) - 1) != sub_286dfb83[address(msg.sender)]:
            if balanceOf[address(msg.sender)]:
                require sub_286dfb83[address(msg.sender)] > 0
                require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(msg.sender)]
                if sub_286dfb83[address(msg.sender)] == uint32((block.timestamp / 168 * 24 * 3600) - 1):
                    if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(msg.sender)]:
                        if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        idx = sub_286dfb83[address(msg.sender)]
                        s = 0
                        s = 0
                        s = 0
                        while uint32(idx) < uint32((block.timestamp / 168 * 24 * 3600) - 1):
                            mem[0] = uint32(idx)
                            mem[32] = 10
                            if stor10[idx << 224].field_0 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if stor10[idx << 224].field_256 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if not stor10[idx << 224].field_0:
                                require stor10[idx << 224].field_256 > 0
                                require stor10[idx << 224].field_256
                                if s + (0 / stor10[idx << 224].field_256) < s:
                                    revert with 0, 'SafeMath add failed'
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s + (0 / stor10[idx << 224].field_256)
                                continue 
                            require stor10[idx << 224].field_0
                            if stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_0 != balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor10[idx << 224].field_256 > 0
                            require stor10[idx << 224].field_256
                            if s + (stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_256) < s:
                                revert with 0, 'SafeMath add failed'
                            idx = idx + 1
                            s = stor10[idx << 224].field_256
                            s = stor10[idx << 224].field_0
                            s = s + (stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_256)
                            continue 
                        if refundEth[address(msg.sender)] + s < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(msg.sender)] += s
    sub_286dfb83[address(msg.sender)] = uint32((block.timestamp / 168 * 24 * 3600) - 1)
    require refundEth[address(msg.sender)] > 0
    refundEth[address(msg.sender)] = 0
    call msg.sender with:
       value refundEth[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(refundEth[address(msg.sender)], msg.sender);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(msg.sender)]
    if sub_286dfb83[address(msg.sender)]:
        if uint32((block.timestamp / 168 * 24 * 3600) - 1) != sub_286dfb83[address(msg.sender)]:
            if balanceOf[address(msg.sender)]:
                require sub_286dfb83[address(msg.sender)] > 0
                require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(msg.sender)]
                if sub_286dfb83[address(msg.sender)] == uint32((block.timestamp / 168 * 24 * 3600) - 1):
                    if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(msg.sender)]:
                        if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        idx = sub_286dfb83[address(msg.sender)]
                        s = 0
                        s = 0
                        s = 0
                        while uint32(idx) < uint32((block.timestamp / 168 * 24 * 3600) - 1):
                            mem[0] = uint32(idx)
                            mem[32] = 10
                            if stor10[idx << 224].field_0 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if stor10[idx << 224].field_256 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if not stor10[idx << 224].field_0:
                                require stor10[idx << 224].field_256 > 0
                                require stor10[idx << 224].field_256
                                if s + (0 / stor10[idx << 224].field_256) < s:
                                    revert with 0, 'SafeMath add failed'
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s + (0 / stor10[idx << 224].field_256)
                                continue 
                            require stor10[idx << 224].field_0
                            if stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_0 != balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor10[idx << 224].field_256 > 0
                            require stor10[idx << 224].field_256
                            if s + (stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_256) < s:
                                revert with 0, 'SafeMath add failed'
                            idx = idx + 1
                            s = stor10[idx << 224].field_256
                            s = stor10[idx << 224].field_0
                            s = s + (stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_256)
                            continue 
                        if refundEth[address(msg.sender)] + s < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(msg.sender)] += s
    sub_286dfb83[address(msg.sender)] = uint32((block.timestamp / 168 * 24 * 3600) - 1)
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath sub failed'
    totalSupply -= arg1
    stor10[(block.timestamp / 168 * 24 * 3600) - 1 << 224].field_256 = totalSupply
    emit Burn(arg1, msg.sender);
    return 1
}

function _fallback() payable {
    require msg.sender == tx.origin
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'pocket lint: not a valid currency'
    if msg.value > 100000 * 10^decimals:
        revert with 0, 'no vitalik, no'
    if not msg.value:
        if totalSupply < 0:
            revert with 0, 'SafeMath add failed'
        require totalSupply <= 200 * 10^6 * 10^decimals
    else:
        require msg.value
        if msg.value * tokenExchangeRate / msg.value != tokenExchangeRate:
            revert with 0, 'SafeMath mul failed'
        if (msg.value * tokenExchangeRate) + totalSupply < msg.value * tokenExchangeRate:
            revert with 0, 'SafeMath add failed'
        require (msg.value * tokenExchangeRate) + totalSupply <= 200 * 10^6 * 10^decimals
    require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(msg.sender)]
    if sub_286dfb83[address(msg.sender)]:
        if uint32((block.timestamp / 168 * 24 * 3600) - 1) != sub_286dfb83[address(msg.sender)]:
            if balanceOf[address(msg.sender)]:
                require sub_286dfb83[address(msg.sender)] > 0
                require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(msg.sender)]
                if sub_286dfb83[address(msg.sender)] == uint32((block.timestamp / 168 * 24 * 3600) - 1):
                    if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(msg.sender)]:
                        if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        idx = sub_286dfb83[address(msg.sender)]
                        s = 0
                        s = 0
                        s = 0
                        while uint32(idx) < uint32((block.timestamp / 168 * 24 * 3600) - 1):
                            mem[0] = uint32(idx)
                            mem[32] = 10
                            if stor10[idx << 224].field_0 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if stor10[idx << 224].field_256 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if not stor10[idx << 224].field_0:
                                require stor10[idx << 224].field_256 > 0
                                require stor10[idx << 224].field_256
                                if s + (0 / stor10[idx << 224].field_256) < s:
                                    revert with 0, 'SafeMath add failed'
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s + (0 / stor10[idx << 224].field_256)
                                continue 
                            require stor10[idx << 224].field_0
                            if stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_0 != balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor10[idx << 224].field_256 > 0
                            require stor10[idx << 224].field_256
                            if s + (stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_256) < s:
                                revert with 0, 'SafeMath add failed'
                            idx = idx + 1
                            s = stor10[idx << 224].field_256
                            s = stor10[idx << 224].field_0
                            s = s + (stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_256)
                            continue 
                        if refundEth[address(msg.sender)] + s < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(msg.sender)] += s
    sub_286dfb83[address(msg.sender)] = uint32((block.timestamp / 168 * 24 * 3600) - 1)
    if not msg.value:
        if balanceOf[address(msg.sender)] < 0:
            revert with 0, 'SafeMath add failed'
        if totalSupply < 0:
            revert with 0, 'SafeMath add failed'
    else:
        require msg.value
        if msg.value * tokenExchangeRate / msg.value != tokenExchangeRate:
            revert with 0, 'SafeMath mul failed'
        if (msg.value * tokenExchangeRate) + balanceOf[address(msg.sender)] < msg.value * tokenExchangeRate:
            revert with 0, 'SafeMath add failed'
        balanceOf[address(msg.sender)] += msg.value * tokenExchangeRate
        if (msg.value * tokenExchangeRate) + totalSupply < msg.value * tokenExchangeRate:
            revert with 0, 'SafeMath add failed'
        totalSupply += msg.value * tokenExchangeRate
    stor10[(block.timestamp / 168 * 24 * 3600) - 1 << 224].field_256 = totalSupply
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit Buy(msg.value, msg.sender);
    emit Transfer(msg.value, 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(msg.sender)]
    if sub_286dfb83[address(msg.sender)]:
        if uint32((block.timestamp / 168 * 24 * 3600) - 1) != sub_286dfb83[address(msg.sender)]:
            if balanceOf[address(msg.sender)]:
                require sub_286dfb83[address(msg.sender)] > 0
                require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(msg.sender)]
                if sub_286dfb83[address(msg.sender)] == uint32((block.timestamp / 168 * 24 * 3600) - 1):
                    if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(msg.sender)]:
                        if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        idx = sub_286dfb83[address(msg.sender)]
                        s = 0
                        s = 0
                        s = 0
                        while uint32(idx) < uint32((block.timestamp / 168 * 24 * 3600) - 1):
                            mem[0] = uint32(idx)
                            mem[32] = 10
                            if stor10[idx << 224].field_0 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if stor10[idx << 224].field_256 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if not stor10[idx << 224].field_0:
                                require stor10[idx << 224].field_256 > 0
                                require stor10[idx << 224].field_256
                                if s + (0 / stor10[idx << 224].field_256) < s:
                                    revert with 0, 'SafeMath add failed'
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s + (0 / stor10[idx << 224].field_256)
                                continue 
                            require stor10[idx << 224].field_0
                            if stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_0 != balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor10[idx << 224].field_256 > 0
                            require stor10[idx << 224].field_256
                            if s + (stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_256) < s:
                                revert with 0, 'SafeMath add failed'
                            idx = idx + 1
                            s = stor10[idx << 224].field_256
                            s = stor10[idx << 224].field_0
                            s = s + (stor10[idx << 224].field_0 * balanceOf[address(msg.sender)] / stor10[idx << 224].field_256)
                            continue 
                        if refundEth[address(msg.sender)] + s < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(msg.sender)] += s
    sub_286dfb83[address(msg.sender)] = uint32((block.timestamp / 168 * 24 * 3600) - 1)
    require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(arg1)]
    if sub_286dfb83[address(arg1)]:
        if uint32((block.timestamp / 168 * 24 * 3600) - 1) != sub_286dfb83[address(arg1)]:
            if balanceOf[address(arg1)]:
                require sub_286dfb83[address(arg1)] > 0
                require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(arg1)]
                if sub_286dfb83[address(arg1)] == uint32((block.timestamp / 168 * 24 * 3600) - 1):
                    if refundEth[address(arg1)] < refundEth[address(arg1)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(arg1)]:
                        if refundEth[address(arg1)] < refundEth[address(arg1)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        idx = sub_286dfb83[address(arg1)]
                        s = 0
                        s = 0
                        s = 0
                        while uint32(idx) < uint32((block.timestamp / 168 * 24 * 3600) - 1):
                            mem[0] = uint32(idx)
                            mem[32] = 10
                            if stor10[idx << 224].field_0 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if stor10[idx << 224].field_256 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if not stor10[idx << 224].field_0:
                                require stor10[idx << 224].field_256 > 0
                                require stor10[idx << 224].field_256
                                if s + (0 / stor10[idx << 224].field_256) < s:
                                    revert with 0, 'SafeMath add failed'
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s + (0 / stor10[idx << 224].field_256)
                                continue 
                            require stor10[idx << 224].field_0
                            if stor10[idx << 224].field_0 * balanceOf[address(arg1)] / stor10[idx << 224].field_0 != balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor10[idx << 224].field_256 > 0
                            require stor10[idx << 224].field_256
                            if s + (stor10[idx << 224].field_0 * balanceOf[address(arg1)] / stor10[idx << 224].field_256) < s:
                                revert with 0, 'SafeMath add failed'
                            idx = idx + 1
                            s = stor10[idx << 224].field_256
                            s = stor10[idx << 224].field_0
                            s = s + (stor10[idx << 224].field_0 * balanceOf[address(arg1)] / stor10[idx << 224].field_256)
                            continue 
                        if refundEth[address(arg1)] + s < refundEth[address(arg1)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(arg1)] += s
    sub_286dfb83[address(arg1)] = uint32((block.timestamp / 168 * 24 * 3600) - 1)
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath add failed'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(arg1)]
    if sub_286dfb83[address(arg1)]:
        if uint32((block.timestamp / 168 * 24 * 3600) - 1) != sub_286dfb83[address(arg1)]:
            if balanceOf[address(arg1)]:
                require sub_286dfb83[address(arg1)] > 0
                require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(arg1)]
                if sub_286dfb83[address(arg1)] == uint32((block.timestamp / 168 * 24 * 3600) - 1):
                    if refundEth[address(arg1)] < refundEth[address(arg1)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(arg1)]:
                        if refundEth[address(arg1)] < refundEth[address(arg1)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        idx = sub_286dfb83[address(arg1)]
                        s = 0
                        s = 0
                        s = 0
                        while uint32(idx) < uint32((block.timestamp / 168 * 24 * 3600) - 1):
                            mem[0] = uint32(idx)
                            mem[32] = 10
                            if stor10[idx << 224].field_0 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if stor10[idx << 224].field_256 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if not stor10[idx << 224].field_0:
                                require stor10[idx << 224].field_256 > 0
                                require stor10[idx << 224].field_256
                                if s + (0 / stor10[idx << 224].field_256) < s:
                                    revert with 0, 'SafeMath add failed'
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s + (0 / stor10[idx << 224].field_256)
                                continue 
                            require stor10[idx << 224].field_0
                            if stor10[idx << 224].field_0 * balanceOf[address(arg1)] / stor10[idx << 224].field_0 != balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor10[idx << 224].field_256 > 0
                            require stor10[idx << 224].field_256
                            if s + (stor10[idx << 224].field_0 * balanceOf[address(arg1)] / stor10[idx << 224].field_256) < s:
                                revert with 0, 'SafeMath add failed'
                            idx = idx + 1
                            s = stor10[idx << 224].field_256
                            s = stor10[idx << 224].field_0
                            s = s + (stor10[idx << 224].field_0 * balanceOf[address(arg1)] / stor10[idx << 224].field_256)
                            continue 
                        if refundEth[address(arg1)] + s < refundEth[address(arg1)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(arg1)] += s
    sub_286dfb83[address(arg1)] = uint32((block.timestamp / 168 * 24 * 3600) - 1)
    require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(arg2)]
    if sub_286dfb83[address(arg2)]:
        if uint32((block.timestamp / 168 * 24 * 3600) - 1) != sub_286dfb83[address(arg2)]:
            if balanceOf[address(arg2)]:
                require sub_286dfb83[address(arg2)] > 0
                require uint32((block.timestamp / 168 * 24 * 3600) - 1) >= sub_286dfb83[address(arg2)]
                if sub_286dfb83[address(arg2)] == uint32((block.timestamp / 168 * 24 * 3600) - 1):
                    if refundEth[address(arg2)] < refundEth[address(arg2)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(arg2)]:
                        if refundEth[address(arg2)] < refundEth[address(arg2)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        idx = sub_286dfb83[address(arg2)]
                        s = 0
                        s = 0
                        s = 0
                        while uint32(idx) < uint32((block.timestamp / 168 * 24 * 3600) - 1):
                            mem[0] = uint32(idx)
                            mem[32] = 10
                            if stor10[idx << 224].field_0 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if stor10[idx << 224].field_256 <= 0:
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s
                                continue 
                            if not stor10[idx << 224].field_0:
                                require stor10[idx << 224].field_256 > 0
                                require stor10[idx << 224].field_256
                                if s + (0 / stor10[idx << 224].field_256) < s:
                                    revert with 0, 'SafeMath add failed'
                                idx = idx + 1
                                s = stor10[idx << 224].field_256
                                s = stor10[idx << 224].field_0
                                s = s + (0 / stor10[idx << 224].field_256)
                                continue 
                            require stor10[idx << 224].field_0
                            if stor10[idx << 224].field_0 * balanceOf[address(arg2)] / stor10[idx << 224].field_0 != balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor10[idx << 224].field_256 > 0
                            require stor10[idx << 224].field_256
                            if s + (stor10[idx << 224].field_0 * balanceOf[address(arg2)] / stor10[idx << 224].field_256) < s:
                                revert with 0, 'SafeMath add failed'
                            idx = idx + 1
                            s = stor10[idx << 224].field_256
                            s = stor10[idx << 224].field_0
                            s = s + (stor10[idx << 224].field_0 * balanceOf[address(arg2)] / stor10[idx << 224].field_256)
                            continue 
                        if refundEth[address(arg2)] + s < refundEth[address(arg2)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(arg2)] += s
    sub_286dfb83[address(arg2)] = uint32((block.timestamp / 168 * 24 * 3600) - 1)
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath add failed'
    balanceOf[address(arg2)] += arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
