contract main {




// =====================  Runtime code  =====================


#
#  - mint(address arg1, uint256 arg2)
#
const tokenExchangeLeastRate = 10

const tokenReduceValue = 5 * 10^6

const coinReduceRate = 90

const tokenExchangeInitRate = 500


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 tokenReduceAmount;
uint256 tokenExchangeRate;
uint256 nextReduceSupply;
address owner;
mapping of uint8 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct lastRefundMonth;
mapping of uint256 refundEth;
mapping of struct stor13;
mapping of uint8 stor14;
mapping of uint256 stor15;

function isRestrictedAddress(address arg1) {
    return bool(uint8(stor8[address(arg1)]))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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

function tokenReduceAmount() {
    return tokenReduceAmount
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

function lastRefundMonth(address arg1) {
    return lastRefundMonth[arg1].field_0
}

function nextReduceSupply() {
    return nextReduceSupply
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function editRestrictedAddress(address arg1) {
    require owner == msg.sender
    uint256(stor8[address(arg1)]) = not bool(uint8(stor8[address(arg1)])) or Mask(248, 8, uint256(stor8[address(arg1)]))
}

function proposeGame(address arg1) {
    require owner == msg.sender
    if stor14[address(arg1)]:
        revert with 0, 'game already in allow list'
    if stor15[address(arg1)]:
        revert with 0, 'game already in proposed list'
    stor15[address(arg1)] = block.timestamp
}

function deleteGame(address arg1) {
    require owner == msg.sender
    if not stor14[address(arg1)]:
        if stor15[address(arg1)] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'game must in allow list or proposed list'
    stor14[address(arg1)] = 0
    stor15[address(arg1)] = 0
}

function addGame(address arg1) {
    require owner == msg.sender
    if stor14[address(arg1)]:
        revert with 0, 'game already in allow list'
    if stor15[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'game must be in proposed list first'
    stor14[address(arg1)] = 1
    stor15[address(arg1)] = 0
}

function gameCountdown(address arg1) {
    if stor15[address(arg1)] <= 0:
        revert with 0, 'game not in proposed list'
    if stor15[address(arg1)] + (48 * 24 * 3600) < stor15[address(arg1)]:
        revert with 0, 'SafeMath add failed'
    if block.timestamp >= stor15[address(arg1)] + (48 * 24 * 3600):
        return 0
    if stor15[address(arg1)] + (48 * 24 * 3600) < stor15[address(arg1)]:
        revert with 0, 'SafeMath add failed'
    if block.timestamp > stor15[address(arg1)] + (48 * 24 * 3600):
        revert with 0, 'SafeMath sub failed'
    return (stor15[address(arg1)] + -block.timestamp + (48 * 24 * 3600))
}

function profitEth() payable {
    if not stor14[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only allowed games permit to call'
    s = (block.timestamp / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(block.timestamp / 8760 * 24 * 3600)) - (11448 * 24 * 3600)
    while idx > block.timestamp:
        if not s - 1 % 4:
            if uint16(uint16(s - 1) % 100):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(s - 1) % 400):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        s = s - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    t = 0
    idx = 1
    t = (24 * 3600 * uint16(s) - 1 / 4) + (-86400 * uint16(s) - 1 / 100) + (24 * 3600 * uint16(s) - 1 / 400) + (8760 * 24 * 3600 * uint16(s - 1970)) - (11448 * 24 * 3600)
    while uint8(idx) <= 12:
        if uint8(idx) == 1:
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
        else:
            if uint8(idx) == 3:
                if t + (744 * 24 * 3600) <= block.timestamp:
                    t = 744 * 24 * 3600
                    idx = idx + 1
                    t = t + (744 * 24 * 3600)
                    continue 
            else:
                if uint8(idx) == 5:
                    if t + (744 * 24 * 3600) <= block.timestamp:
                        t = 744 * 24 * 3600
                        idx = idx + 1
                        t = t + (744 * 24 * 3600)
                        continue 
                else:
                    if uint8(idx) == 7:
                        if t + (744 * 24 * 3600) <= block.timestamp:
                            t = 744 * 24 * 3600
                            idx = idx + 1
                            t = t + (744 * 24 * 3600)
                            continue 
                    else:
                        if uint8(idx) == 8:
                            if t + (744 * 24 * 3600) <= block.timestamp:
                                t = 744 * 24 * 3600
                                idx = idx + 1
                                t = t + (744 * 24 * 3600)
                                continue 
                        else:
                            if uint8(idx) == 10:
                                if t + (744 * 24 * 3600) <= block.timestamp:
                                    t = 744 * 24 * 3600
                                    idx = idx + 1
                                    t = t + (744 * 24 * 3600)
                                    continue 
                            else:
                                if uint8(idx) == 12:
                                    if t + (744 * 24 * 3600) <= block.timestamp:
                                        t = 744 * 24 * 3600
                                        idx = idx + 1
                                        t = t + (744 * 24 * 3600)
                                        continue 
                                else:
                                    if uint8(idx) == 4:
                                        if t + (720 * 24 * 3600) <= block.timestamp:
                                            t = 720 * 24 * 3600
                                            idx = idx + 1
                                            t = t + (720 * 24 * 3600)
                                            continue 
                                    else:
                                        if uint8(idx) == 6:
                                            if t + (720 * 24 * 3600) <= block.timestamp:
                                                t = 720 * 24 * 3600
                                                idx = idx + 1
                                                t = t + (720 * 24 * 3600)
                                                continue 
                                        else:
                                            if uint8(idx) == 9:
                                                if t + (720 * 24 * 3600) <= block.timestamp:
                                                    t = 720 * 24 * 3600
                                                    idx = idx + 1
                                                    t = t + (720 * 24 * 3600)
                                                    continue 
                                            else:
                                                if uint8(idx) == 11:
                                                    if t + (720 * 24 * 3600) <= block.timestamp:
                                                        t = 720 * 24 * 3600
                                                        idx = idx + 1
                                                        t = t + (720 * 24 * 3600)
                                                        continue 
                                                else:
                                                    if s % 4:
                                                        if t + (672 * 24 * 3600) <= block.timestamp:
                                                            t = 672 * 24 * 3600
                                                            idx = idx + 1
                                                            t = t + (672 * 24 * 3600)
                                                            continue 
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if t + (696 * 24 * 3600) <= block.timestamp:
                                                                t = 696 * 24 * 3600
                                                                idx = idx + 1
                                                                t = t + (696 * 24 * 3600)
                                                                continue 
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if t + (696 * 24 * 3600) <= block.timestamp:
                                                                    t = 696 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (696 * 24 * 3600)
                                                                    continue 
                                                            else:
                                                                if t + (672 * 24 * 3600) <= block.timestamp:
                                                                    t = 672 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (672 * 24 * 3600)
                                                                    continue 
        if stor13[(12 * s) + uint8(idx) - 1 << 240].field_0 + msg.value < stor13[(12 * s) + uint8(idx) - 1 << 240].field_0:
            revert with 0, 'SafeMath add failed'
        stor13[(12 * s) + uint8(idx) - 1 << 240].field_0 += msg.value
        if not stor13[(12 * s) + uint8(idx) - 1 << 240].field_256:
            stor13[(12 * s) + uint8(idx) - 1 << 240].field_256 = totalSupply
        emit Profit(s << 240, idx << 248, stor13[(12 * s) + uint8(idx) - 1 << 240].field_0 + msg.value, msg.sender);
    if stor13[(12 * s) - 1 << 240].field_0 + msg.value < stor13[(12 * s) - 1 << 240].field_0:
        revert with 0, 'SafeMath add failed'
    stor13[(12 * s) - 1 << 240].field_0 += msg.value
    if not stor13[(12 * s) - 1 << 240].field_256:
        stor13[(12 * s) - 1 << 240].field_256 = totalSupply
    emit Profit(s << 240, 0, stor13[(12 * s) - 1 << 240].field_0 + msg.value, msg.sender);
}

function getEthPerfit(address arg1) {
    s = (block.timestamp / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(block.timestamp / 8760 * 24 * 3600)) - (11448 * 24 * 3600)
    while idx > block.timestamp:
        if not s - 1 % 4:
            if uint16(uint16(s - 1) % 100):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(s - 1) % 400):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        s = s - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    t = 0
    idx = 1
    t = (24 * 3600 * uint16(s) - 1 / 4) + (-86400 * uint16(s) - 1 / 100) + (24 * 3600 * uint16(s) - 1 / 400) + (8760 * 24 * 3600 * uint16(s - 1970)) - (11448 * 24 * 3600)
    while uint8(idx) <= 12:
        if uint8(idx) == 1:
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
        else:
            if uint8(idx) == 3:
                if t + (744 * 24 * 3600) <= block.timestamp:
                    t = 744 * 24 * 3600
                    idx = idx + 1
                    t = t + (744 * 24 * 3600)
                    continue 
            else:
                if uint8(idx) == 5:
                    if t + (744 * 24 * 3600) <= block.timestamp:
                        t = 744 * 24 * 3600
                        idx = idx + 1
                        t = t + (744 * 24 * 3600)
                        continue 
                else:
                    if uint8(idx) == 7:
                        if t + (744 * 24 * 3600) <= block.timestamp:
                            t = 744 * 24 * 3600
                            idx = idx + 1
                            t = t + (744 * 24 * 3600)
                            continue 
                    else:
                        if uint8(idx) == 8:
                            if t + (744 * 24 * 3600) <= block.timestamp:
                                t = 744 * 24 * 3600
                                idx = idx + 1
                                t = t + (744 * 24 * 3600)
                                continue 
                        else:
                            if uint8(idx) == 10:
                                if t + (744 * 24 * 3600) <= block.timestamp:
                                    t = 744 * 24 * 3600
                                    idx = idx + 1
                                    t = t + (744 * 24 * 3600)
                                    continue 
                            else:
                                if uint8(idx) == 12:
                                    if t + (744 * 24 * 3600) <= block.timestamp:
                                        t = 744 * 24 * 3600
                                        idx = idx + 1
                                        t = t + (744 * 24 * 3600)
                                        continue 
                                else:
                                    if uint8(idx) == 4:
                                        if t + (720 * 24 * 3600) <= block.timestamp:
                                            t = 720 * 24 * 3600
                                            idx = idx + 1
                                            t = t + (720 * 24 * 3600)
                                            continue 
                                    else:
                                        if uint8(idx) == 6:
                                            if t + (720 * 24 * 3600) <= block.timestamp:
                                                t = 720 * 24 * 3600
                                                idx = idx + 1
                                                t = t + (720 * 24 * 3600)
                                                continue 
                                        else:
                                            if uint8(idx) == 9:
                                                if t + (720 * 24 * 3600) <= block.timestamp:
                                                    t = 720 * 24 * 3600
                                                    idx = idx + 1
                                                    t = t + (720 * 24 * 3600)
                                                    continue 
                                            else:
                                                if uint8(idx) == 11:
                                                    if t + (720 * 24 * 3600) <= block.timestamp:
                                                        t = 720 * 24 * 3600
                                                        idx = idx + 1
                                                        t = t + (720 * 24 * 3600)
                                                        continue 
                                                else:
                                                    if s % 4:
                                                        if t + (672 * 24 * 3600) <= block.timestamp:
                                                            t = 672 * 24 * 3600
                                                            idx = idx + 1
                                                            t = t + (672 * 24 * 3600)
                                                            continue 
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if t + (696 * 24 * 3600) <= block.timestamp:
                                                                t = 696 * 24 * 3600
                                                                idx = idx + 1
                                                                t = t + (696 * 24 * 3600)
                                                                continue 
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if t + (696 * 24 * 3600) <= block.timestamp:
                                                                    t = 696 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (696 * 24 * 3600)
                                                                    continue 
                                                            else:
                                                                if t + (672 * 24 * 3600) <= block.timestamp:
                                                                    t = 672 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (672 * 24 * 3600)
                                                                    continue 
        if not lastRefundMonth[address(arg1)].field_0:
            return 0
        if lastRefundMonth[address(arg1)].field_0 >= uint16((12 * s) + uint8(idx) - 1):
            return refundEth[address(arg1)]
        if balanceOf[address(arg1)] <= 0:
            return refundEth[address(arg1)]
        require lastRefundMonth[address(arg1)].field_0 > 0
        require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(arg1)].field_0
        if lastRefundMonth[address(arg1)].field_0 == uint16((12 * s) + uint8(idx) - 1):
            if refundEth[address(arg1)] < refundEth[address(arg1)]:
                revert with 0, 'SafeMath add failed'
            return refundEth[address(arg1)]
        if not balanceOf[address(arg1)]:
            if refundEth[address(arg1)] < refundEth[address(arg1)]:
                revert with 0, 'SafeMath add failed'
            return refundEth[address(arg1)]
        t = lastRefundMonth[address(arg1)].field_0
        u = 0
        u = 0
        u = 0
        while uint32(t) < uint16((12 * s) + uint8(idx) - 1):
            mem[0] = uint32(t)
            mem[32] = 13
            if stor13[t << 224].field_0 <= 0:
                t = t + 1
                u = stor13[t << 224].field_256
                u = stor13[t << 224].field_0
                u = u
                continue 
            if stor13[t << 224].field_256 <= 0:
                t = t + 1
                u = stor13[t << 224].field_256
                u = stor13[t << 224].field_0
                u = u
                continue 
            if not stor13[t << 224].field_0:
                require stor13[t << 224].field_256 > 0
                require stor13[t << 224].field_256
                if u + (0 / stor13[t << 224].field_256) < u:
                    revert with 0, 'SafeMath add failed'
                t = t + 1
                u = stor13[t << 224].field_256
                u = stor13[t << 224].field_0
                u = u + (0 / stor13[t << 224].field_256)
                continue 
            require stor13[t << 224].field_0
            if stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_0 != balanceOf[address(arg1)]:
                revert with 0, 'SafeMath mul failed'
            require stor13[t << 224].field_256 > 0
            require stor13[t << 224].field_256
            if u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256) < u:
                revert with 0, 'SafeMath add failed'
            t = t + 1
            u = stor13[t << 224].field_256
            u = stor13[t << 224].field_0
            u = u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256)
            continue 
        if refundEth[address(arg1)] + u < refundEth[address(arg1)]:
            revert with 0, 'SafeMath add failed'
        return (refundEth[address(arg1)] + u)
    if not lastRefundMonth[address(arg1)].field_0:
        return 0
    if lastRefundMonth[address(arg1)].field_0 >= uint16((12 * s) - 1):
        return refundEth[address(arg1)]
    if balanceOf[address(arg1)] <= 0:
        return refundEth[address(arg1)]
    require lastRefundMonth[address(arg1)].field_0 > 0
    require uint16((12 * s) - 1) >= lastRefundMonth[address(arg1)].field_0
    if lastRefundMonth[address(arg1)].field_0 == uint16((12 * s) - 1):
        if refundEth[address(arg1)] < refundEth[address(arg1)]:
            revert with 0, 'SafeMath add failed'
        return refundEth[address(arg1)]
    if not balanceOf[address(arg1)]:
        if refundEth[address(arg1)] < refundEth[address(arg1)]:
            revert with 0, 'SafeMath add failed'
        return refundEth[address(arg1)]
    t = lastRefundMonth[address(arg1)].field_0
    u = 0
    u = 0
    u = 0
    while uint32(t) < uint16((12 * s) - 1):
        mem[0] = uint32(t)
        mem[32] = 13
        if stor13[t << 224].field_0 <= 0:
            t = t + 1
            u = stor13[t << 224].field_256
            u = stor13[t << 224].field_0
            u = u
            continue 
        if stor13[t << 224].field_256 <= 0:
            t = t + 1
            u = stor13[t << 224].field_256
            u = stor13[t << 224].field_0
            u = u
            continue 
        if not stor13[t << 224].field_0:
            require stor13[t << 224].field_256 > 0
            require stor13[t << 224].field_256
            if u + (0 / stor13[t << 224].field_256) < u:
                revert with 0, 'SafeMath add failed'
            t = t + 1
            u = stor13[t << 224].field_256
            u = stor13[t << 224].field_0
            u = u + (0 / stor13[t << 224].field_256)
            continue 
        require stor13[t << 224].field_0
        if stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_0 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath mul failed'
        require stor13[t << 224].field_256 > 0
        require stor13[t << 224].field_256
        if u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256) < u:
            revert with 0, 'SafeMath add failed'
        t = t + 1
        u = stor13[t << 224].field_256
        u = stor13[t << 224].field_0
        u = u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256)
        continue 
    if refundEth[address(arg1)] + u < refundEth[address(arg1)]:
        revert with 0, 'SafeMath add failed'
    return (refundEth[address(arg1)] + u)
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    s = (block.timestamp / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(block.timestamp / 8760 * 24 * 3600)) - (11448 * 24 * 3600)
    while idx > block.timestamp:
        if not s - 1 % 4:
            if uint16(uint16(s - 1) % 100):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(s - 1) % 400):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        s = s - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    t = 0
    idx = 1
    t = (24 * 3600 * uint16(s) - 1 / 4) + (-86400 * uint16(s) - 1 / 100) + (24 * 3600 * uint16(s) - 1 / 400) + (8760 * 24 * 3600 * uint16(s - 1970)) - (11448 * 24 * 3600)
    while uint8(idx) <= 12:
        if uint8(idx) == 1:
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
        else:
            if uint8(idx) == 3:
                if t + (744 * 24 * 3600) <= block.timestamp:
                    t = 744 * 24 * 3600
                    idx = idx + 1
                    t = t + (744 * 24 * 3600)
                    continue 
            else:
                if uint8(idx) == 5:
                    if t + (744 * 24 * 3600) <= block.timestamp:
                        t = 744 * 24 * 3600
                        idx = idx + 1
                        t = t + (744 * 24 * 3600)
                        continue 
                else:
                    if uint8(idx) == 7:
                        if t + (744 * 24 * 3600) <= block.timestamp:
                            t = 744 * 24 * 3600
                            idx = idx + 1
                            t = t + (744 * 24 * 3600)
                            continue 
                    else:
                        if uint8(idx) == 8:
                            if t + (744 * 24 * 3600) <= block.timestamp:
                                t = 744 * 24 * 3600
                                idx = idx + 1
                                t = t + (744 * 24 * 3600)
                                continue 
                        else:
                            if uint8(idx) == 10:
                                if t + (744 * 24 * 3600) <= block.timestamp:
                                    t = 744 * 24 * 3600
                                    idx = idx + 1
                                    t = t + (744 * 24 * 3600)
                                    continue 
                            else:
                                if uint8(idx) == 12:
                                    if t + (744 * 24 * 3600) <= block.timestamp:
                                        t = 744 * 24 * 3600
                                        idx = idx + 1
                                        t = t + (744 * 24 * 3600)
                                        continue 
                                else:
                                    if uint8(idx) == 4:
                                        if t + (720 * 24 * 3600) <= block.timestamp:
                                            t = 720 * 24 * 3600
                                            idx = idx + 1
                                            t = t + (720 * 24 * 3600)
                                            continue 
                                    else:
                                        if uint8(idx) == 6:
                                            if t + (720 * 24 * 3600) <= block.timestamp:
                                                t = 720 * 24 * 3600
                                                idx = idx + 1
                                                t = t + (720 * 24 * 3600)
                                                continue 
                                        else:
                                            if uint8(idx) == 9:
                                                if t + (720 * 24 * 3600) <= block.timestamp:
                                                    t = 720 * 24 * 3600
                                                    idx = idx + 1
                                                    t = t + (720 * 24 * 3600)
                                                    continue 
                                            else:
                                                if uint8(idx) == 11:
                                                    if t + (720 * 24 * 3600) <= block.timestamp:
                                                        t = 720 * 24 * 3600
                                                        idx = idx + 1
                                                        t = t + (720 * 24 * 3600)
                                                        continue 
                                                else:
                                                    if s % 4:
                                                        if t + (672 * 24 * 3600) <= block.timestamp:
                                                            t = 672 * 24 * 3600
                                                            idx = idx + 1
                                                            t = t + (672 * 24 * 3600)
                                                            continue 
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if t + (696 * 24 * 3600) <= block.timestamp:
                                                                t = 696 * 24 * 3600
                                                                idx = idx + 1
                                                                t = t + (696 * 24 * 3600)
                                                                continue 
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if t + (696 * 24 * 3600) <= block.timestamp:
                                                                    t = 696 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (696 * 24 * 3600)
                                                                    continue 
                                                            else:
                                                                if t + (672 * 24 * 3600) <= block.timestamp:
                                                                    t = 672 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (672 * 24 * 3600)
                                                                    continue 
        require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(msg.sender)].field_0
        if lastRefundMonth[address(msg.sender)].field_0:
            if uint16((12 * s) + uint8(idx) - 1) != lastRefundMonth[address(msg.sender)].field_0:
                if balanceOf[address(msg.sender)]:
                    require lastRefundMonth[address(msg.sender)].field_0 > 0
                    require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(msg.sender)].field_0
                    if lastRefundMonth[address(msg.sender)].field_0 == uint16((12 * s) + uint8(idx) - 1):
                        if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if not balanceOf[address(msg.sender)]:
                            if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                                revert with 0, 'SafeMath add failed'
                        else:
                            t = lastRefundMonth[address(msg.sender)].field_0
                            u = 0
                            u = 0
                            u = 0
                            while uint32(t) < uint16((12 * s) + uint8(idx) - 1):
                                mem[0] = uint32(t)
                                mem[32] = 13
                                if stor13[t << 224].field_0 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if stor13[t << 224].field_256 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if not stor13[t << 224].field_0:
                                    require stor13[t << 224].field_256 > 0
                                    require stor13[t << 224].field_256
                                    if u + (0 / stor13[t << 224].field_256) < u:
                                        revert with 0, 'SafeMath add failed'
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u + (0 / stor13[t << 224].field_256)
                                    continue 
                                require stor13[t << 224].field_0
                                if stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_0 != balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath mul failed'
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256)
                                continue 
                            if refundEth[address(msg.sender)] + u < refundEth[address(msg.sender)]:
                                revert with 0, 'SafeMath add failed'
                            refundEth[address(msg.sender)] += u
        lastRefundMonth[address(msg.sender)].field_0 = uint16((12 * s) + uint8(idx) - 1)
        lastRefundMonth[address(msg.sender)].field_16 = 0
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath sub failed'
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath sub failed'
        totalSupply -= arg1
        stor13[(12 * s) + uint8(idx) - 1 << 240].field_256 = totalSupply
        emit Burn(arg1, msg.sender);
        return 1
    require uint16((12 * s) - 1) >= lastRefundMonth[address(msg.sender)].field_0
    if lastRefundMonth[address(msg.sender)].field_0:
        if uint16((12 * s) - 1) != lastRefundMonth[address(msg.sender)].field_0:
            if balanceOf[address(msg.sender)]:
                require lastRefundMonth[address(msg.sender)].field_0 > 0
                require uint16((12 * s) - 1) >= lastRefundMonth[address(msg.sender)].field_0
                if lastRefundMonth[address(msg.sender)].field_0 == uint16((12 * s) - 1):
                    if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(msg.sender)]:
                        if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        t = lastRefundMonth[address(msg.sender)].field_0
                        u = 0
                        u = 0
                        u = 0
                        while uint32(t) < uint16((12 * s) - 1):
                            mem[0] = uint32(t)
                            mem[32] = 13
                            if stor13[t << 224].field_0 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if stor13[t << 224].field_256 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if not stor13[t << 224].field_0:
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (0 / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (0 / stor13[t << 224].field_256)
                                continue 
                            require stor13[t << 224].field_0
                            if stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_0 != balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor13[t << 224].field_256 > 0
                            require stor13[t << 224].field_256
                            if u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256) < u:
                                revert with 0, 'SafeMath add failed'
                            t = t + 1
                            u = stor13[t << 224].field_256
                            u = stor13[t << 224].field_0
                            u = u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256)
                            continue 
                        if refundEth[address(msg.sender)] + u < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(msg.sender)] += u
    lastRefundMonth[address(msg.sender)].field_0 = uint16((12 * s) - 1)
    lastRefundMonth[address(msg.sender)].field_16 = 0
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath sub failed'
    totalSupply -= arg1
    stor13[(12 * s) - 1 << 240].field_256 = totalSupply
    emit Burn(arg1, msg.sender);
    return 1
}

function withdraw() {
    require not uint8(stor8[address(msg.sender)])
    s = (block.timestamp / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(block.timestamp / 8760 * 24 * 3600)) - (11448 * 24 * 3600)
    while idx > block.timestamp:
        if not s - 1 % 4:
            if uint16(uint16(s - 1) % 100):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(s - 1) % 400):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        s = s - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    t = 0
    idx = 1
    t = (24 * 3600 * uint16(s) - 1 / 4) + (-86400 * uint16(s) - 1 / 100) + (24 * 3600 * uint16(s) - 1 / 400) + (8760 * 24 * 3600 * uint16(s - 1970)) - (11448 * 24 * 3600)
    while uint8(idx) <= 12:
        if uint8(idx) == 1:
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
        else:
            if uint8(idx) == 3:
                if t + (744 * 24 * 3600) <= block.timestamp:
                    t = 744 * 24 * 3600
                    idx = idx + 1
                    t = t + (744 * 24 * 3600)
                    continue 
            else:
                if uint8(idx) == 5:
                    if t + (744 * 24 * 3600) <= block.timestamp:
                        t = 744 * 24 * 3600
                        idx = idx + 1
                        t = t + (744 * 24 * 3600)
                        continue 
                else:
                    if uint8(idx) == 7:
                        if t + (744 * 24 * 3600) <= block.timestamp:
                            t = 744 * 24 * 3600
                            idx = idx + 1
                            t = t + (744 * 24 * 3600)
                            continue 
                    else:
                        if uint8(idx) == 8:
                            if t + (744 * 24 * 3600) <= block.timestamp:
                                t = 744 * 24 * 3600
                                idx = idx + 1
                                t = t + (744 * 24 * 3600)
                                continue 
                        else:
                            if uint8(idx) == 10:
                                if t + (744 * 24 * 3600) <= block.timestamp:
                                    t = 744 * 24 * 3600
                                    idx = idx + 1
                                    t = t + (744 * 24 * 3600)
                                    continue 
                            else:
                                if uint8(idx) == 12:
                                    if t + (744 * 24 * 3600) <= block.timestamp:
                                        t = 744 * 24 * 3600
                                        idx = idx + 1
                                        t = t + (744 * 24 * 3600)
                                        continue 
                                else:
                                    if uint8(idx) == 4:
                                        if t + (720 * 24 * 3600) <= block.timestamp:
                                            t = 720 * 24 * 3600
                                            idx = idx + 1
                                            t = t + (720 * 24 * 3600)
                                            continue 
                                    else:
                                        if uint8(idx) == 6:
                                            if t + (720 * 24 * 3600) <= block.timestamp:
                                                t = 720 * 24 * 3600
                                                idx = idx + 1
                                                t = t + (720 * 24 * 3600)
                                                continue 
                                        else:
                                            if uint8(idx) == 9:
                                                if t + (720 * 24 * 3600) <= block.timestamp:
                                                    t = 720 * 24 * 3600
                                                    idx = idx + 1
                                                    t = t + (720 * 24 * 3600)
                                                    continue 
                                            else:
                                                if uint8(idx) == 11:
                                                    if t + (720 * 24 * 3600) <= block.timestamp:
                                                        t = 720 * 24 * 3600
                                                        idx = idx + 1
                                                        t = t + (720 * 24 * 3600)
                                                        continue 
                                                else:
                                                    if s % 4:
                                                        if t + (672 * 24 * 3600) <= block.timestamp:
                                                            t = 672 * 24 * 3600
                                                            idx = idx + 1
                                                            t = t + (672 * 24 * 3600)
                                                            continue 
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if t + (696 * 24 * 3600) <= block.timestamp:
                                                                t = 696 * 24 * 3600
                                                                idx = idx + 1
                                                                t = t + (696 * 24 * 3600)
                                                                continue 
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if t + (696 * 24 * 3600) <= block.timestamp:
                                                                    t = 696 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (696 * 24 * 3600)
                                                                    continue 
                                                            else:
                                                                if t + (672 * 24 * 3600) <= block.timestamp:
                                                                    t = 672 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (672 * 24 * 3600)
                                                                    continue 
        require lastRefundMonth[address(msg.sender)].field_0 > 0
        require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(msg.sender)].field_0
        if lastRefundMonth[address(msg.sender)].field_0:
            if uint16((12 * s) + uint8(idx) - 1) != lastRefundMonth[address(msg.sender)].field_0:
                if balanceOf[address(msg.sender)]:
                    require lastRefundMonth[address(msg.sender)].field_0 > 0
                    require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(msg.sender)].field_0
                    if lastRefundMonth[address(msg.sender)].field_0 == uint16((12 * s) + uint8(idx) - 1):
                        if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if not balanceOf[address(msg.sender)]:
                            if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                                revert with 0, 'SafeMath add failed'
                        else:
                            t = lastRefundMonth[address(msg.sender)].field_0
                            u = 0
                            u = 0
                            u = 0
                            while uint32(t) < uint16((12 * s) + uint8(idx) - 1):
                                mem[0] = uint32(t)
                                mem[32] = 13
                                if stor13[t << 224].field_0 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if stor13[t << 224].field_256 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if not stor13[t << 224].field_0:
                                    require stor13[t << 224].field_256 > 0
                                    require stor13[t << 224].field_256
                                    if u + (0 / stor13[t << 224].field_256) < u:
                                        revert with 0, 'SafeMath add failed'
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u + (0 / stor13[t << 224].field_256)
                                    continue 
                                require stor13[t << 224].field_0
                                if stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_0 != balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath mul failed'
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256)
                                continue 
                            if refundEth[address(msg.sender)] + u < refundEth[address(msg.sender)]:
                                revert with 0, 'SafeMath add failed'
                            refundEth[address(msg.sender)] += u
        lastRefundMonth[address(msg.sender)].field_0 = uint16((12 * s) + uint8(idx) - 1)
        lastRefundMonth[address(msg.sender)].field_16 = 0
        require refundEth[address(msg.sender)] > 0
        refundEth[address(msg.sender)] = 0
        call msg.sender with:
           value refundEth[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdraw(refundEth[address(msg.sender)], msg.sender);
    require lastRefundMonth[address(msg.sender)].field_0 > 0
    require uint16((12 * s) - 1) >= lastRefundMonth[address(msg.sender)].field_0
    if lastRefundMonth[address(msg.sender)].field_0:
        if uint16((12 * s) - 1) != lastRefundMonth[address(msg.sender)].field_0:
            if balanceOf[address(msg.sender)]:
                require lastRefundMonth[address(msg.sender)].field_0 > 0
                require uint16((12 * s) - 1) >= lastRefundMonth[address(msg.sender)].field_0
                if lastRefundMonth[address(msg.sender)].field_0 == uint16((12 * s) - 1):
                    if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(msg.sender)]:
                        if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        t = lastRefundMonth[address(msg.sender)].field_0
                        u = 0
                        u = 0
                        u = 0
                        while uint32(t) < uint16((12 * s) - 1):
                            mem[0] = uint32(t)
                            mem[32] = 13
                            if stor13[t << 224].field_0 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if stor13[t << 224].field_256 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if not stor13[t << 224].field_0:
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (0 / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (0 / stor13[t << 224].field_256)
                                continue 
                            require stor13[t << 224].field_0
                            if stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_0 != balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor13[t << 224].field_256 > 0
                            require stor13[t << 224].field_256
                            if u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256) < u:
                                revert with 0, 'SafeMath add failed'
                            t = t + 1
                            u = stor13[t << 224].field_256
                            u = stor13[t << 224].field_0
                            u = u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256)
                            continue 
                        if refundEth[address(msg.sender)] + u < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(msg.sender)] += u
    lastRefundMonth[address(msg.sender)].field_0 = uint16((12 * s) - 1)
    lastRefundMonth[address(msg.sender)].field_16 = 0
    require refundEth[address(msg.sender)] > 0
    refundEth[address(msg.sender)] = 0
    call msg.sender with:
       value refundEth[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(refundEth[address(msg.sender)], msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not uint8(stor8[address(msg.sender)])
    require not uint8(stor8[address(arg1)])
    s = (block.timestamp / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(block.timestamp / 8760 * 24 * 3600)) - (11448 * 24 * 3600)
    while idx > block.timestamp:
        if not s - 1 % 4:
            if uint16(uint16(s - 1) % 100):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(s - 1) % 400):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        s = s - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    t = 0
    idx = 1
    t = (24 * 3600 * uint16(s) - 1 / 4) + (-86400 * uint16(s) - 1 / 100) + (24 * 3600 * uint16(s) - 1 / 400) + (8760 * 24 * 3600 * uint16(s - 1970)) - (11448 * 24 * 3600)
    while uint8(idx) <= 12:
        if uint8(idx) == 1:
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
        else:
            if uint8(idx) == 3:
                if t + (744 * 24 * 3600) <= block.timestamp:
                    t = 744 * 24 * 3600
                    idx = idx + 1
                    t = t + (744 * 24 * 3600)
                    continue 
            else:
                if uint8(idx) == 5:
                    if t + (744 * 24 * 3600) <= block.timestamp:
                        t = 744 * 24 * 3600
                        idx = idx + 1
                        t = t + (744 * 24 * 3600)
                        continue 
                else:
                    if uint8(idx) == 7:
                        if t + (744 * 24 * 3600) <= block.timestamp:
                            t = 744 * 24 * 3600
                            idx = idx + 1
                            t = t + (744 * 24 * 3600)
                            continue 
                    else:
                        if uint8(idx) == 8:
                            if t + (744 * 24 * 3600) <= block.timestamp:
                                t = 744 * 24 * 3600
                                idx = idx + 1
                                t = t + (744 * 24 * 3600)
                                continue 
                        else:
                            if uint8(idx) == 10:
                                if t + (744 * 24 * 3600) <= block.timestamp:
                                    t = 744 * 24 * 3600
                                    idx = idx + 1
                                    t = t + (744 * 24 * 3600)
                                    continue 
                            else:
                                if uint8(idx) == 12:
                                    if t + (744 * 24 * 3600) <= block.timestamp:
                                        t = 744 * 24 * 3600
                                        idx = idx + 1
                                        t = t + (744 * 24 * 3600)
                                        continue 
                                else:
                                    if uint8(idx) == 4:
                                        if t + (720 * 24 * 3600) <= block.timestamp:
                                            t = 720 * 24 * 3600
                                            idx = idx + 1
                                            t = t + (720 * 24 * 3600)
                                            continue 
                                    else:
                                        if uint8(idx) == 6:
                                            if t + (720 * 24 * 3600) <= block.timestamp:
                                                t = 720 * 24 * 3600
                                                idx = idx + 1
                                                t = t + (720 * 24 * 3600)
                                                continue 
                                        else:
                                            if uint8(idx) == 9:
                                                if t + (720 * 24 * 3600) <= block.timestamp:
                                                    t = 720 * 24 * 3600
                                                    idx = idx + 1
                                                    t = t + (720 * 24 * 3600)
                                                    continue 
                                            else:
                                                if uint8(idx) == 11:
                                                    if t + (720 * 24 * 3600) <= block.timestamp:
                                                        t = 720 * 24 * 3600
                                                        idx = idx + 1
                                                        t = t + (720 * 24 * 3600)
                                                        continue 
                                                else:
                                                    if s % 4:
                                                        if t + (672 * 24 * 3600) <= block.timestamp:
                                                            t = 672 * 24 * 3600
                                                            idx = idx + 1
                                                            t = t + (672 * 24 * 3600)
                                                            continue 
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if t + (696 * 24 * 3600) <= block.timestamp:
                                                                t = 696 * 24 * 3600
                                                                idx = idx + 1
                                                                t = t + (696 * 24 * 3600)
                                                                continue 
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if t + (696 * 24 * 3600) <= block.timestamp:
                                                                    t = 696 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (696 * 24 * 3600)
                                                                    continue 
                                                            else:
                                                                if t + (672 * 24 * 3600) <= block.timestamp:
                                                                    t = 672 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (672 * 24 * 3600)
                                                                    continue 
        require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(msg.sender)].field_0
        if lastRefundMonth[address(msg.sender)].field_0:
            if uint16((12 * s) + uint8(idx) - 1) != lastRefundMonth[address(msg.sender)].field_0:
                if balanceOf[address(msg.sender)]:
                    require lastRefundMonth[address(msg.sender)].field_0 > 0
                    require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(msg.sender)].field_0
                    if lastRefundMonth[address(msg.sender)].field_0 == uint16((12 * s) + uint8(idx) - 1):
                        if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if not balanceOf[address(msg.sender)]:
                            if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                                revert with 0, 'SafeMath add failed'
                        else:
                            t = lastRefundMonth[address(msg.sender)].field_0
                            u = 0
                            u = 0
                            u = 0
                            while uint32(t) < uint16((12 * s) + uint8(idx) - 1):
                                mem[0] = uint32(t)
                                mem[32] = 13
                                if stor13[t << 224].field_0 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if stor13[t << 224].field_256 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if not stor13[t << 224].field_0:
                                    require stor13[t << 224].field_256 > 0
                                    require stor13[t << 224].field_256
                                    if u + (0 / stor13[t << 224].field_256) < u:
                                        revert with 0, 'SafeMath add failed'
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u + (0 / stor13[t << 224].field_256)
                                    continue 
                                require stor13[t << 224].field_0
                                if stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_0 != balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath mul failed'
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256)
                                continue 
                            if refundEth[address(msg.sender)] + u < refundEth[address(msg.sender)]:
                                revert with 0, 'SafeMath add failed'
                            refundEth[address(msg.sender)] += u
        lastRefundMonth[address(msg.sender)].field_0 = uint16((12 * s) + uint8(idx) - 1)
        lastRefundMonth[address(msg.sender)].field_16 = 0
        require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(arg1)].field_0
        if lastRefundMonth[address(arg1)].field_0:
            if uint16((12 * s) + uint8(idx) - 1) != lastRefundMonth[address(arg1)].field_0:
                if balanceOf[address(arg1)]:
                    require lastRefundMonth[address(arg1)].field_0 > 0
                    require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(arg1)].field_0
                    if lastRefundMonth[address(arg1)].field_0 == uint16((12 * s) + uint8(idx) - 1):
                        if refundEth[address(arg1)] < refundEth[address(arg1)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if not balanceOf[address(arg1)]:
                            if refundEth[address(arg1)] < refundEth[address(arg1)]:
                                revert with 0, 'SafeMath add failed'
                        else:
                            t = lastRefundMonth[address(arg1)].field_0
                            u = 0
                            u = 0
                            u = 0
                            while uint32(t) < uint16((12 * s) + uint8(idx) - 1):
                                mem[0] = uint32(t)
                                mem[32] = 13
                                if stor13[t << 224].field_0 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if stor13[t << 224].field_256 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if not stor13[t << 224].field_0:
                                    require stor13[t << 224].field_256 > 0
                                    require stor13[t << 224].field_256
                                    if u + (0 / stor13[t << 224].field_256) < u:
                                        revert with 0, 'SafeMath add failed'
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u + (0 / stor13[t << 224].field_256)
                                    continue 
                                require stor13[t << 224].field_0
                                if stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_0 != balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath mul failed'
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256)
                                continue 
                            if refundEth[address(arg1)] + u < refundEth[address(arg1)]:
                                revert with 0, 'SafeMath add failed'
                            refundEth[address(arg1)] += u
        lastRefundMonth[address(arg1)].field_0 = uint16((12 * s) + uint8(idx) - 1)
        lastRefundMonth[address(arg1)].field_16 = 0
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath sub failed'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath add failed'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    require uint16((12 * s) - 1) >= lastRefundMonth[address(msg.sender)].field_0
    if lastRefundMonth[address(msg.sender)].field_0:
        if uint16((12 * s) - 1) != lastRefundMonth[address(msg.sender)].field_0:
            if balanceOf[address(msg.sender)]:
                require lastRefundMonth[address(msg.sender)].field_0 > 0
                require uint16((12 * s) - 1) >= lastRefundMonth[address(msg.sender)].field_0
                if lastRefundMonth[address(msg.sender)].field_0 == uint16((12 * s) - 1):
                    if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(msg.sender)]:
                        if refundEth[address(msg.sender)] < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        t = lastRefundMonth[address(msg.sender)].field_0
                        u = 0
                        u = 0
                        u = 0
                        while uint32(t) < uint16((12 * s) - 1):
                            mem[0] = uint32(t)
                            mem[32] = 13
                            if stor13[t << 224].field_0 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if stor13[t << 224].field_256 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if not stor13[t << 224].field_0:
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (0 / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (0 / stor13[t << 224].field_256)
                                continue 
                            require stor13[t << 224].field_0
                            if stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_0 != balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor13[t << 224].field_256 > 0
                            require stor13[t << 224].field_256
                            if u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256) < u:
                                revert with 0, 'SafeMath add failed'
                            t = t + 1
                            u = stor13[t << 224].field_256
                            u = stor13[t << 224].field_0
                            u = u + (stor13[t << 224].field_0 * balanceOf[address(msg.sender)] / stor13[t << 224].field_256)
                            continue 
                        if refundEth[address(msg.sender)] + u < refundEth[address(msg.sender)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(msg.sender)] += u
    lastRefundMonth[address(msg.sender)].field_0 = uint16((12 * s) - 1)
    lastRefundMonth[address(msg.sender)].field_16 = 0
    require uint16((12 * s) - 1) >= lastRefundMonth[address(arg1)].field_0
    if lastRefundMonth[address(arg1)].field_0:
        if uint16((12 * s) - 1) != lastRefundMonth[address(arg1)].field_0:
            if balanceOf[address(arg1)]:
                require lastRefundMonth[address(arg1)].field_0 > 0
                require uint16((12 * s) - 1) >= lastRefundMonth[address(arg1)].field_0
                if lastRefundMonth[address(arg1)].field_0 == uint16((12 * s) - 1):
                    if refundEth[address(arg1)] < refundEth[address(arg1)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(arg1)]:
                        if refundEth[address(arg1)] < refundEth[address(arg1)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        t = lastRefundMonth[address(arg1)].field_0
                        u = 0
                        u = 0
                        u = 0
                        while uint32(t) < uint16((12 * s) - 1):
                            mem[0] = uint32(t)
                            mem[32] = 13
                            if stor13[t << 224].field_0 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if stor13[t << 224].field_256 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if not stor13[t << 224].field_0:
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (0 / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (0 / stor13[t << 224].field_256)
                                continue 
                            require stor13[t << 224].field_0
                            if stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_0 != balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor13[t << 224].field_256 > 0
                            require stor13[t << 224].field_256
                            if u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256) < u:
                                revert with 0, 'SafeMath add failed'
                            t = t + 1
                            u = stor13[t << 224].field_256
                            u = stor13[t << 224].field_0
                            u = u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256)
                            continue 
                        if refundEth[address(arg1)] + u < refundEth[address(arg1)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(arg1)] += u
    lastRefundMonth[address(arg1)].field_0 = uint16((12 * s) - 1)
    lastRefundMonth[address(arg1)].field_16 = 0
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
    require not uint8(stor8[address(arg1)])
    require not uint8(stor8[address(msg.sender)])
    require not uint8(stor8[address(arg2)])
    s = (block.timestamp / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(block.timestamp / 8760 * 24 * 3600)) - (11448 * 24 * 3600)
    while idx > block.timestamp:
        if not s - 1 % 4:
            if uint16(uint16(s - 1) % 100):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(s - 1) % 400):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        s = s - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    t = 0
    idx = 1
    t = (24 * 3600 * uint16(s) - 1 / 4) + (-86400 * uint16(s) - 1 / 100) + (24 * 3600 * uint16(s) - 1 / 400) + (8760 * 24 * 3600 * uint16(s - 1970)) - (11448 * 24 * 3600)
    while uint8(idx) <= 12:
        if uint8(idx) == 1:
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
        else:
            if uint8(idx) == 3:
                if t + (744 * 24 * 3600) <= block.timestamp:
                    t = 744 * 24 * 3600
                    idx = idx + 1
                    t = t + (744 * 24 * 3600)
                    continue 
            else:
                if uint8(idx) == 5:
                    if t + (744 * 24 * 3600) <= block.timestamp:
                        t = 744 * 24 * 3600
                        idx = idx + 1
                        t = t + (744 * 24 * 3600)
                        continue 
                else:
                    if uint8(idx) == 7:
                        if t + (744 * 24 * 3600) <= block.timestamp:
                            t = 744 * 24 * 3600
                            idx = idx + 1
                            t = t + (744 * 24 * 3600)
                            continue 
                    else:
                        if uint8(idx) == 8:
                            if t + (744 * 24 * 3600) <= block.timestamp:
                                t = 744 * 24 * 3600
                                idx = idx + 1
                                t = t + (744 * 24 * 3600)
                                continue 
                        else:
                            if uint8(idx) == 10:
                                if t + (744 * 24 * 3600) <= block.timestamp:
                                    t = 744 * 24 * 3600
                                    idx = idx + 1
                                    t = t + (744 * 24 * 3600)
                                    continue 
                            else:
                                if uint8(idx) == 12:
                                    if t + (744 * 24 * 3600) <= block.timestamp:
                                        t = 744 * 24 * 3600
                                        idx = idx + 1
                                        t = t + (744 * 24 * 3600)
                                        continue 
                                else:
                                    if uint8(idx) == 4:
                                        if t + (720 * 24 * 3600) <= block.timestamp:
                                            t = 720 * 24 * 3600
                                            idx = idx + 1
                                            t = t + (720 * 24 * 3600)
                                            continue 
                                    else:
                                        if uint8(idx) == 6:
                                            if t + (720 * 24 * 3600) <= block.timestamp:
                                                t = 720 * 24 * 3600
                                                idx = idx + 1
                                                t = t + (720 * 24 * 3600)
                                                continue 
                                        else:
                                            if uint8(idx) == 9:
                                                if t + (720 * 24 * 3600) <= block.timestamp:
                                                    t = 720 * 24 * 3600
                                                    idx = idx + 1
                                                    t = t + (720 * 24 * 3600)
                                                    continue 
                                            else:
                                                if uint8(idx) == 11:
                                                    if t + (720 * 24 * 3600) <= block.timestamp:
                                                        t = 720 * 24 * 3600
                                                        idx = idx + 1
                                                        t = t + (720 * 24 * 3600)
                                                        continue 
                                                else:
                                                    if s % 4:
                                                        if t + (672 * 24 * 3600) <= block.timestamp:
                                                            t = 672 * 24 * 3600
                                                            idx = idx + 1
                                                            t = t + (672 * 24 * 3600)
                                                            continue 
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if t + (696 * 24 * 3600) <= block.timestamp:
                                                                t = 696 * 24 * 3600
                                                                idx = idx + 1
                                                                t = t + (696 * 24 * 3600)
                                                                continue 
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if t + (696 * 24 * 3600) <= block.timestamp:
                                                                    t = 696 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (696 * 24 * 3600)
                                                                    continue 
                                                            else:
                                                                if t + (672 * 24 * 3600) <= block.timestamp:
                                                                    t = 672 * 24 * 3600
                                                                    idx = idx + 1
                                                                    t = t + (672 * 24 * 3600)
                                                                    continue 
        require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(arg1)].field_0
        if lastRefundMonth[address(arg1)].field_0:
            if uint16((12 * s) + uint8(idx) - 1) != lastRefundMonth[address(arg1)].field_0:
                if balanceOf[address(arg1)]:
                    require lastRefundMonth[address(arg1)].field_0 > 0
                    require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(arg1)].field_0
                    if lastRefundMonth[address(arg1)].field_0 == uint16((12 * s) + uint8(idx) - 1):
                        if refundEth[address(arg1)] < refundEth[address(arg1)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if not balanceOf[address(arg1)]:
                            if refundEth[address(arg1)] < refundEth[address(arg1)]:
                                revert with 0, 'SafeMath add failed'
                        else:
                            t = lastRefundMonth[address(arg1)].field_0
                            u = 0
                            u = 0
                            u = 0
                            while uint32(t) < uint16((12 * s) + uint8(idx) - 1):
                                mem[0] = uint32(t)
                                mem[32] = 13
                                if stor13[t << 224].field_0 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if stor13[t << 224].field_256 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if not stor13[t << 224].field_0:
                                    require stor13[t << 224].field_256 > 0
                                    require stor13[t << 224].field_256
                                    if u + (0 / stor13[t << 224].field_256) < u:
                                        revert with 0, 'SafeMath add failed'
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u + (0 / stor13[t << 224].field_256)
                                    continue 
                                require stor13[t << 224].field_0
                                if stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_0 != balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath mul failed'
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256)
                                continue 
                            if refundEth[address(arg1)] + u < refundEth[address(arg1)]:
                                revert with 0, 'SafeMath add failed'
                            refundEth[address(arg1)] += u
        lastRefundMonth[address(arg1)].field_0 = uint16((12 * s) + uint8(idx) - 1)
        lastRefundMonth[address(arg1)].field_16 = 0
        require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(arg2)].field_0
        if lastRefundMonth[address(arg2)].field_0:
            if uint16((12 * s) + uint8(idx) - 1) != lastRefundMonth[address(arg2)].field_0:
                if balanceOf[address(arg2)]:
                    require lastRefundMonth[address(arg2)].field_0 > 0
                    require uint16((12 * s) + uint8(idx) - 1) >= lastRefundMonth[address(arg2)].field_0
                    if lastRefundMonth[address(arg2)].field_0 == uint16((12 * s) + uint8(idx) - 1):
                        if refundEth[address(arg2)] < refundEth[address(arg2)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if not balanceOf[address(arg2)]:
                            if refundEth[address(arg2)] < refundEth[address(arg2)]:
                                revert with 0, 'SafeMath add failed'
                        else:
                            t = lastRefundMonth[address(arg2)].field_0
                            u = 0
                            u = 0
                            u = 0
                            while uint32(t) < uint16((12 * s) + uint8(idx) - 1):
                                mem[0] = uint32(t)
                                mem[32] = 13
                                if stor13[t << 224].field_0 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if stor13[t << 224].field_256 <= 0:
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u
                                    continue 
                                if not stor13[t << 224].field_0:
                                    require stor13[t << 224].field_256 > 0
                                    require stor13[t << 224].field_256
                                    if u + (0 / stor13[t << 224].field_256) < u:
                                        revert with 0, 'SafeMath add failed'
                                    t = t + 1
                                    u = stor13[t << 224].field_256
                                    u = stor13[t << 224].field_0
                                    u = u + (0 / stor13[t << 224].field_256)
                                    continue 
                                require stor13[t << 224].field_0
                                if stor13[t << 224].field_0 * balanceOf[address(arg2)] / stor13[t << 224].field_0 != balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath mul failed'
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (stor13[t << 224].field_0 * balanceOf[address(arg2)] / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (stor13[t << 224].field_0 * balanceOf[address(arg2)] / stor13[t << 224].field_256)
                                continue 
                            if refundEth[address(arg2)] + u < refundEth[address(arg2)]:
                                revert with 0, 'SafeMath add failed'
                            refundEth[address(arg2)] += u
        lastRefundMonth[address(arg2)].field_0 = uint16((12 * s) + uint8(idx) - 1)
        lastRefundMonth[address(arg2)].field_16 = 0
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
    require uint16((12 * s) - 1) >= lastRefundMonth[address(arg1)].field_0
    if lastRefundMonth[address(arg1)].field_0:
        if uint16((12 * s) - 1) != lastRefundMonth[address(arg1)].field_0:
            if balanceOf[address(arg1)]:
                require lastRefundMonth[address(arg1)].field_0 > 0
                require uint16((12 * s) - 1) >= lastRefundMonth[address(arg1)].field_0
                if lastRefundMonth[address(arg1)].field_0 == uint16((12 * s) - 1):
                    if refundEth[address(arg1)] < refundEth[address(arg1)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(arg1)]:
                        if refundEth[address(arg1)] < refundEth[address(arg1)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        t = lastRefundMonth[address(arg1)].field_0
                        u = 0
                        u = 0
                        u = 0
                        while uint32(t) < uint16((12 * s) - 1):
                            mem[0] = uint32(t)
                            mem[32] = 13
                            if stor13[t << 224].field_0 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if stor13[t << 224].field_256 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if not stor13[t << 224].field_0:
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (0 / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (0 / stor13[t << 224].field_256)
                                continue 
                            require stor13[t << 224].field_0
                            if stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_0 != balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor13[t << 224].field_256 > 0
                            require stor13[t << 224].field_256
                            if u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256) < u:
                                revert with 0, 'SafeMath add failed'
                            t = t + 1
                            u = stor13[t << 224].field_256
                            u = stor13[t << 224].field_0
                            u = u + (stor13[t << 224].field_0 * balanceOf[address(arg1)] / stor13[t << 224].field_256)
                            continue 
                        if refundEth[address(arg1)] + u < refundEth[address(arg1)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(arg1)] += u
    lastRefundMonth[address(arg1)].field_0 = uint16((12 * s) - 1)
    lastRefundMonth[address(arg1)].field_16 = 0
    require uint16((12 * s) - 1) >= lastRefundMonth[address(arg2)].field_0
    if lastRefundMonth[address(arg2)].field_0:
        if uint16((12 * s) - 1) != lastRefundMonth[address(arg2)].field_0:
            if balanceOf[address(arg2)]:
                require lastRefundMonth[address(arg2)].field_0 > 0
                require uint16((12 * s) - 1) >= lastRefundMonth[address(arg2)].field_0
                if lastRefundMonth[address(arg2)].field_0 == uint16((12 * s) - 1):
                    if refundEth[address(arg2)] < refundEth[address(arg2)]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if not balanceOf[address(arg2)]:
                        if refundEth[address(arg2)] < refundEth[address(arg2)]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        t = lastRefundMonth[address(arg2)].field_0
                        u = 0
                        u = 0
                        u = 0
                        while uint32(t) < uint16((12 * s) - 1):
                            mem[0] = uint32(t)
                            mem[32] = 13
                            if stor13[t << 224].field_0 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if stor13[t << 224].field_256 <= 0:
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u
                                continue 
                            if not stor13[t << 224].field_0:
                                require stor13[t << 224].field_256 > 0
                                require stor13[t << 224].field_256
                                if u + (0 / stor13[t << 224].field_256) < u:
                                    revert with 0, 'SafeMath add failed'
                                t = t + 1
                                u = stor13[t << 224].field_256
                                u = stor13[t << 224].field_0
                                u = u + (0 / stor13[t << 224].field_256)
                                continue 
                            require stor13[t << 224].field_0
                            if stor13[t << 224].field_0 * balanceOf[address(arg2)] / stor13[t << 224].field_0 != balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath mul failed'
                            require stor13[t << 224].field_256 > 0
                            require stor13[t << 224].field_256
                            if u + (stor13[t << 224].field_0 * balanceOf[address(arg2)] / stor13[t << 224].field_256) < u:
                                revert with 0, 'SafeMath add failed'
                            t = t + 1
                            u = stor13[t << 224].field_256
                            u = stor13[t << 224].field_0
                            u = u + (stor13[t << 224].field_0 * balanceOf[address(arg2)] / stor13[t << 224].field_256)
                            continue 
                        if refundEth[address(arg2)] + u < refundEth[address(arg2)]:
                            revert with 0, 'SafeMath add failed'
                        refundEth[address(arg2)] += u
    lastRefundMonth[address(arg2)].field_0 = uint16((12 * s) - 1)
    lastRefundMonth[address(arg2)].field_16 = 0
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
