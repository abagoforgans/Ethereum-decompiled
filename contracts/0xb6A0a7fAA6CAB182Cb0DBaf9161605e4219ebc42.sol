contract main {




// =====================  Runtime code  =====================


const name = 'VoltChainNetwork'

const decimals = 18

const symbol = 'VCN'

const getTimeStamp = block.timestamp


mapping of uint256 balanceOf;
array of struct stor1;
uint256 totalSupply;
address stor3;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function getLockAmount(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        idx = idx + 1
        s = s + stor1[address(arg1)][idx].field_256
        continue 
    return s
}

function getFreeAmount(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        idx = idx + 1
        s = s + stor1[address(arg1)][idx].field_256
        continue 
    return (balanceOf[address(arg1)] - s)
}

function sub_aa8e98b6(?) {
    require calldata.size - 4 >= 96
    require msg.sender == stor3
    require arg3 > 0
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        idx = idx + 1
        s = s + stor1[address(arg1)][idx].field_256
        continue 
    require arg2 <= balanceOf[address(arg1)] - s
    stor1[address(arg1)].field_0++
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = block.timestamp + (720 * 24 * 3600 * arg3 % 16777216)
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_256 = arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2
    require arg1 == msg.sender
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        idx = idx + 1
        s = s + stor1[address(arg1)][idx].field_256
        continue 
    if balanceOf[address(arg1)] - s < arg3:
        revert with 0, 'not enough token'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender == msg.sender
    idx = 0
    s = 0
    while idx < stor1[address(msg.sender)].field_0:
        mem[32] = 1
        require idx < stor1[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 1)
        if block.timestamp >= stor1[address(msg.sender)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 1)
        idx = idx + 1
        s = s + stor1[address(msg.sender)][idx].field_256
        continue 
    if balanceOf[address(msg.sender)] - s < arg2:
        revert with 0, 'not enough token'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_a8183c4f(?) {
    require calldata.size - 4 >= 96
    require msg.sender == stor3
    require arg1
    require stor3 == msg.sender
    idx = 0
    s = 0
    while idx < stor1[stor3].field_0:
        mem[32] = 1
        require idx < stor1[stor3].field_0
        mem[0] = sha3(stor3, 1)
        if block.timestamp >= stor1[stor3][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[stor3].field_0
        mem[0] = sha3(stor3, 1)
        idx = idx + 1
        s = s + stor1[stor3][idx].field_256
        continue 
    if balanceOf[stor3] - s < arg2:
        revert with 0, 'not enough token'
    require arg2 <= balanceOf[stor3]
    balanceOf[stor3] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, stor3, arg1);
    if arg3 > 0:
        require msg.sender == stor3
        require arg3 > 0
        idx = 0
        s = 0
        while idx < stor1[address(arg1)].field_0:
            mem[32] = 1
            require idx < stor1[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 1)
            if block.timestamp >= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
            mem[32] = 1
            require idx < stor1[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 1)
            idx = idx + 1
            s = s + stor1[address(arg1)][idx].field_256
            continue 
        require arg2 <= balanceOf[address(arg1)] - s
        stor1[address(arg1)].field_0++
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = block.timestamp + (720 * 24 * 3600 * arg3 % 16777216)
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_256 = arg2
    return 1
}

function sub_7d3b83f3(?) {
    require calldata.size - 4 >= 64
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 -= arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - stor1[address(arg1)].field_256 <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (2 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (2 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (3 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (3 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (4 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (4 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (5 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (5 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (6 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (6 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (7 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (7 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (8 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (8 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (9 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (9 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (10 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (10 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (11 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (11 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (12 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (12 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (13 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (13 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (14 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (14 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (15 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (15 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (16 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (16 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (17 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (17 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (18 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if block.timestamp >= stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if s:
            if s <= stor1[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = stor1[address(arg1)][idx].field_0
        continue 
    if s < 0:
        return 1
    require 0 < stor1[address(arg1)].field_0
    require 0 < stor1[address(arg1)].field_0
    if arg2 - (18 * stor1[address(arg1)].field_256) <= stor1[address(arg1)].field_256:
        stor1[address(arg1)].field_256 = (19 * stor1[address(arg1)].field_256) - arg2
        return 1
    require 0 < stor1[address(arg1)].field_0
    stor1[address(arg1)].field_256 = 0
    require msg.sender == stor3
    # nil
}



}
