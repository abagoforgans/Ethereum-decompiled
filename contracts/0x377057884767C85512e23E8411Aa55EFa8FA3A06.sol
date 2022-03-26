contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor5 = code.data[1846 len 32]
    stor6 = code.data[1846 len 32] + (24 * 3600 * code.data[1878 len 32])
    stor7 = code.data[1878 len 32]
    stor2 = code.data[1942 len 32] + 1
    stor9 = code.data[1942 len 32]
    stor8 = code.data[1910 len 32]
    stor10 = 1
    return code.data[108 len 1738]
}



// =====================  Runtime code  =====================


address stor0;
array of struct winner;
uint256 winningBid;
array of uint256 sub_feef5559;
uint256 sub_d7c654c6;
uint256 startTime;
uint256 endTime;
uint256 sub_b0b2e607;
uint256 sub_9d78325d;
uint256 maxBid;
uint256 currentRound;

function endTime() {
    return endTime
}

function maxBid() {
    return maxBid
}

function startTime() {
    return startTime
}

function currentRound() {
    return currentRound
}

function winningBid() {
    return winningBid
}

function sub_9d78325d(?) {
    return sub_9d78325d
}

function sub_b0b2e607(?) {
    return sub_b0b2e607
}

function sub_d7c654c6(?) {
    return sub_d7c654c6
}

function winner() {
    return winner[0 len winner.length].field_0
}

function sub_feef5559(?) {
    return sub_feef5559[0 len sub_feef5559.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function sub_a7eaa241(?) {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require arg2 < winningBid
    winner[].field_0 = Array(len=arg1.length, data=arg1[all])
    winningBid = arg2
    mem[ceil32(arg1.length) + 224] = uint256(winner.field_0)
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + winner.length + 224 > idx + 32:
        mem[idx + 32] = winner[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x76263a89: Array(len=winner.length, data=mem[ceil32(arg1.length) + 224 len winner.length + (floor32(winner.length - 1) + -winner.length + 32 % 32)]), arg2
}

function endOfRound() {
    if 31 >= winner.length:
        sub_feef5559.length = winner.length
        idx = 0
        while sub_feef5559.length + 31 / 32 > idx:
            sub_feef5559[idx] = 0
            idx = idx + 1
            continue 
        sub_d7c654c6 = winningBid
        mem[192] = uint256(winner.field_0)
        idx = 192
        s = 0
        while winner.length + 192 > idx + 32:
            mem[idx + 32] = winner[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xe7541dc7: Array(len=winner.length, data=mem[192 len winner.length + (floor32(winner.length - 1) + -winner.length + 32 % 32)]), winningBid
        if currentRound < sub_9d78325d:
            currentRound++
            startTime = endTime
            endTime += 24 * 3600 * sub_b0b2e607
            winningBid = maxBid + 1
            uint8(winner.length) = 22
            Mask(248, 0, winner.length.field_8) = 'no bids yet' / 256
            idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
            while (winner.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    else:
        sub_feef5559.length = Mask(255, 1, (256 * not bool(winner.length)) - 1 and winner.length) + 1
        if not Mask(255, 1, (256 * not bool(winner.length)) - 1 and winner.length):
            idx = 0
            while sub_feef5559.length + 31 / 32 > idx:
                sub_feef5559[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while winner.length + 31 / 32 > idx:
                sub_feef5559[s] = winner[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = winner.length + 31 / 32
            while sub_feef5559.length + 31 / 32 > idx:
                sub_feef5559[idx] = 0
                idx = idx + 1
                continue 
        sub_d7c654c6 = winningBid
        mem[192] = uint256(winner.field_0)
        idx = 192
        s = 0
        while winner.length + 192 > idx + 32:
            mem[idx + 32] = winner[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xe7541dc7: Array(len=winner.length, data=mem[192 len winner.length + (floor32(winner.length - 1) + -winner.length + 32 % 32)]), winningBid
        if currentRound < sub_9d78325d:
            currentRound++
            startTime = endTime
            endTime += 24 * 3600 * sub_b0b2e607
            winningBid = maxBid + 1
            uint8(winner.length) = 22
            Mask(248, 0, winner.length.field_8) = 'no bids yet' / 256
            idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
            while (winner.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}



}
