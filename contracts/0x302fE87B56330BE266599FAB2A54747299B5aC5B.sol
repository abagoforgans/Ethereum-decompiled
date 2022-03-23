contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor8;
uint256 stor9;
array of struct stor10;
uint256 stor12;

function _fallback() payable {
    stor0 = 0x41f274c0023f83391de4e0733c609df5a124c3d4
    stor12 = msg.sender or Mask(96, 160, stor12)
    stor10.length = 3
    if not stor10.length <= 3:
        idx = 15
        while 5 * stor10.length > idx:
            stor10[idx].field_0 = 0
            stor10[idx].field_256 = 0
            stor10[idx].field_512 = 0
            stor10[idx].field_768 = 0
            stor10[idx].field_1024 = 0
            idx = idx + 5
            continue 
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor1 = ext_call.return_data[0] + 1008
    stor2 = ext_call.return_data[0] + 972
    stor3 = block.timestamp + (162 * 3600)
    stor4 = 0
    stor5 = 0
    stor6 = 0
    idx = 0
    while idx < stor7:
        mem[0] = idx
        mem[32] = 8
        stor8[idx] = 0
        idx = idx + 1
        continue 
    stor7 = 0
    stor9 = 0
    return code.data[394 len 3685]
}



// =====================  Runtime code  =====================


#
#  - checkDepth(uint256 arg1)
#
address stor0;
uint256 decidingBlock;
uint256 cutoffBlock;
uint256 cutoffTimestamp;
uint256 nearestKnownBlock;
uint256 nearestKnownBlockHash;
uint256 numTickets;
uint256 numBuckets;
uint256 lastSaleTimestamp;
array of address stor10;
uint256 payoutIdx;
address owner;
uint256 stor12;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726057;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726058;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726059;
array of address stor89717814153306320011181716697424560163256864414616650038987186496166826726060;

function cutoffTimestamp() payable {
    return cutoffTimestamp
}

function cutoffBlock() payable {
    return cutoffBlock
}

function nearestKnownBlockHash() payable {
    return nearestKnownBlockHash
}

function numTickets() payable {
    return numTickets
}

function getNumHolders(uint256 arg1) payable {
    return numHolders[arg1].field_0
}

function nearestKnownBlock() payable {
    return nearestKnownBlock
}

function decidingBlock() payable {
    return decidingBlock
}

function owner() payable {
    return address(owner)
}

function payoutIdx() payable {
    return payoutIdx
}

function lookupTicketHolder(uint256 arg1) payable {
    mem[0] = 0
    mem[32] = 8
    s = 0
    t = arg1
    while t >= 2^s * numHolders[0].field_0:
        _9 = sha3(mem[0 len 64])
        mem[0] = s + 1
        mem[32] = 8
        s = s + 1
        t = t - (2^s * stor[_9])
        continue 
    require t / 2^s < numHolders[s].field_256
    return address(stor[('array', 1, ('map', ('var', 1), ('name', 'numHolders', 8))) + (t / 2^s)].field_0)
}

function numBuckets() payable {
    return numBuckets
}

function lastSaleTimestamp() payable {
    return lastSaleTimestamp
}

function getOperatingBudget() payable {
    return (eth.balance(this.address) - (10^16 * numTickets))
}

function setOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor12) = arg1 or Mask(96, 160, uint256(stor12))
}

function payouts(uint256 arg1) payable {
    require arg1 < stor10.length
    return stor10[arg1], storC65A[arg1], storC65A[arg1], storC65A[arg1], address(storC65A[arg1])
}

function getLastBlockHeight() payable {
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function payoutReady() payable {
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return not decidingBlock > ext_call.return_data[0]
}

function ticketsAvailable() payable {
    if block.timestamp >= cutoffTimestamp:
        return (block.timestamp < cutoffTimestamp)
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return (ext_call.return_data[0] < cutoffBlock)
}

function accessOperatingBudget(uint256 arg1) payable {
    if address(owner) == msg.sender:
        require eth.balance(this.address) - (10^16 * numTickets) >= 10^18
        require arg1 <= eth.balance(this.address) + (-1 * 10^16 * numTickets) - 10^18
        call address(owner) with:
           value arg1 wei
             gas 0 wei
}

function getTicketHolders(uint256 arg1) payable {
    if numHolders[arg1].field_256:
        mem[160] = address(numHolders[arg1][1].field_0)
        idx = 160
        s = 0
        while (32 * numHolders[arg1].field_256) + 128 > idx:
            mem[idx + 32] = address(numHolders[arg1][s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=numHolders[arg1].field_256, data=mem[160 len 32 * numHolders[arg1].field_256])
}

function resetLottery() payable {
    require numTickets <= 0
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require decidingBlock <= ext_call.return_data[0]
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    decidingBlock = ext_call.return_data[0] + 1008
    cutoffBlock = ext_call.return_data[0] + 972
    cutoffTimestamp = block.timestamp + (162 * 3600)
    nearestKnownBlock = 0
    nearestKnownBlockHash = 0
    numTickets = 0
    idx = 0
    while idx < numBuckets:
        mem[0] = idx
        mem[32] = 8
        numHolders[idx].field_0 = 0
        idx = idx + 1
        continue 
    numBuckets = 0
    lastSaleTimestamp = 0
    emit Activity()
}

function _fallback() payable {
    require msg.value >= 10^16
    require block.timestamp < cutoffTimestamp
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0] < cutoffBlock
    numTickets += msg.value / 10^16
    s = 0
    t = 0
    t = 0
    idx = msg.value / 10^16
    while idx > 0:
        if idx and 2^t <= 0:
            s = s
            t = idx and 2^t
            t = t + 1
            idx = idx
            continue 
        numHolders[t].field_0++
        if numHolders[t].field_256 < numHolders[t].field_0 + 1:
            numHolders[t].field_256 = numHolders[t].field_0
            if not numHolders[t].field_256 <= numHolders[t].field_0:
                s = numHolders[t].field_0 + sha3(sha3(t, 8) + 1)
                while sha3(sha3(t, 8) + 1) + numHolders[t].field_256 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        mem[32] = 8
        require numHolders[t].field_0 < numHolders[t].field_256
        mem[0] = sha3(t, 8) + 1
        stor[numHolders[t].field_0 + ('array', 1, ('map', ('var', 2), ('name', 'numHolders', 8)))].field_0 = msg.sender or Mask(96, 160, stor[numHolders[t].field_0 + ('array', 1, ('map', ('var', 2), ('name', 'numHolders', 8)))].field_0)
        s = numHolders[t].field_0
        t = idx and 2^t
        t = t + 1
        idx = idx - (idx and 2^t)
        continue 
    if t > numBuckets:
        numBuckets = t
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if block.timestamp + (600 * decidingBlock) + (-600 * ext_call.return_data[0]) - (6 * 3600) < cutoffTimestamp:
        cutoffTimestamp = block.timestamp + (600 * decidingBlock) + (-600 * ext_call.return_data[0]) - (6 * 3600)
    lastSaleTimestamp = block.timestamp
    emit Activity()
}

function buyTickets(address arg1) payable {
    require msg.value >= 10^16
    require block.timestamp < cutoffTimestamp
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0] < cutoffBlock
    numTickets += msg.value / 10^16
    s = 0
    t = 0
    t = 0
    idx = msg.value / 10^16
    while idx > 0:
        if idx and 2^t <= 0:
            s = s
            t = idx and 2^t
            t = t + 1
            idx = idx
            continue 
        numHolders[t].field_0++
        if numHolders[t].field_256 < numHolders[t].field_0 + 1:
            numHolders[t].field_256 = numHolders[t].field_0
            if not numHolders[t].field_256 <= numHolders[t].field_0:
                s = numHolders[t].field_0 + sha3(sha3(t, 8) + 1)
                while sha3(sha3(t, 8) + 1) + numHolders[t].field_256 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        mem[32] = 8
        require numHolders[t].field_0 < numHolders[t].field_256
        mem[0] = sha3(t, 8) + 1
        stor[numHolders[t].field_0 + ('array', 1, ('map', ('var', 2), ('name', 'numHolders', 8)))].field_0 = arg1 or Mask(96, 160, stor[numHolders[t].field_0 + ('array', 1, ('map', ('var', 2), ('name', 'numHolders', 8)))].field_0)
        s = numHolders[t].field_0
        t = idx and 2^t
        t = t + 1
        idx = idx - (idx and 2^t)
        continue 
    if t > numBuckets:
        numBuckets = t
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if block.timestamp + (600 * decidingBlock) + (-600 * ext_call.return_data[0]) - (6 * 3600) < cutoffTimestamp:
        cutoffTimestamp = block.timestamp + (600 * decidingBlock) + (-600 * ext_call.return_data[0]) - (6 * 3600)
    lastSaleTimestamp = block.timestamp
    emit Activity()
}

function processPayout() payable {
    mem[64] = 96
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    mem[96] = ext_call.return_data[0]
    require ext_call.success
    require decidingBlock <= ext_call.return_data[0]
    require eth.balance(this.address) - (10^16 * numTickets) >= 10^18
    require numTickets != 0
    if nearestKnownBlock != 0:
        s = 0
        s = 0
        s = 0
        s = 0
        idx = 0
        s = nearestKnownBlockHash
        t = nearestKnownBlock
        while idx < 5:
            if t != decidingBlock:
                call stor0.getFeeAmount(int256 rg1) with:
                     gas gas_remaining - 25050 wei
                    args s
                require ext_call.success
                call stor0.getBlockHeader(int256 rg1) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args s
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                _90 = mem[64]
                mem[64] = mem[64] + 96
                mem[_90 + 96] = mem[_90 + 64]
                s = 0
                while s < 32:
                    require s < 32
                    s = s + 1
                    continue 
                s = None + 2
                s = mem[_90 + 68 len 28], mem[_90 + 128 len 4]
                s = mem[_90 + 64]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = 0
                t = t - 1
                continue 
            mem[0] = 0
            mem[32] = 8
            t = 0
            u = ('smod', ('var', 1), ('stor', ('name', 'numTickets', 6)))
            while u >= 2^t * numHolders[0].field_0:
                _129 = sha3(mem[0 len 64])
                mem[0] = t + 1
                mem[32] = 8
                t = t + 1
                u = u - (2^t * stor[_129])
                continue 
            require u / 2^t < numHolders[t].field_256
            require payoutIdx < stor10.length
            stor10[stor11] = address(stor[('array', 1, ('map', ('var', 2), ('name', 'numHolders', 8))) + (u / 2^t)].field_0)
            storC65A[stor11] = (10^16 * numTickets) - (10^16 * numTickets / 200)
            storC65A[stor11] = block.number
            storC65A[stor11] = block.timestamp
            uint256(storC65A[stor11]) = msg.sender or Mask(96, 160, uint256(storC65A[stor11]))
            payoutIdx = payoutIdx + 1 % 3
            call stor0.getLastBlockHeight() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            decidingBlock = ext_call.return_data[0] + 1008
            cutoffBlock = ext_call.return_data[0] + 972
            cutoffTimestamp = block.timestamp + (162 * 3600)
            nearestKnownBlock = 0
            nearestKnownBlockHash = 0
            numTickets = 0
            idx = 0
            while idx < numBuckets:
                mem[0] = idx
                mem[32] = 8
                numHolders[idx].field_0 = 0
                idx = idx + 1
                continue 
            numBuckets = 0
            lastSaleTimestamp = 0
            call address(stor[('array', 1, ('map', ('var', 2), ('name', 'numHolders', 8))) + (u / 2^t)].field_0) with:
               value (10^16 * numTickets) - (10^16 * numTickets / 200) wei
                 gas 0 wei
            emit Activity()
            return 1
    else:
        call stor0.getLastBlockHeight() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call stor0.getBlockchainHead() with:
             gas gas_remaining - 25050 wei
        mem[96] = ext_call.return_data[0]
        s = 0
        s = 0
        s = 0
        s = 0
        idx = 0
        s = mem[mem[64]]
        t = ext_call.return_data[0]
        while idx < 5:
            if t != decidingBlock:
                call stor0.getFeeAmount(int256 rg1) with:
                     gas gas_remaining - 25050 wei
                    args s
                require ext_call.success
                call stor0.getBlockHeader(int256 rg1) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args s
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                _93 = mem[64]
                mem[64] = mem[64] + 96
                mem[_93 + 96] = mem[_93 + 64]
                s = 0
                while s < 32:
                    require s < 32
                    s = s + 1
                    continue 
                s = None + 2
                s = mem[_93 + 68 len 28], mem[_93 + 128 len 4]
                s = mem[_93 + 64]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = 0
                t = t - 1
                continue 
            mem[0] = 0
            mem[32] = 8
            t = 0
            u = ('smod', ('var', 1), ('stor', ('name', 'numTickets', 6)))
            while u >= 2^t * numHolders[0].field_0:
                _131 = sha3(mem[0 len 64])
                mem[0] = t + 1
                mem[32] = 8
                t = t + 1
                u = u - (2^t * stor[_131])
                continue 
            require u / 2^t < numHolders[t].field_256
            require payoutIdx < stor10.length
            stor10[stor11] = address(stor[('array', 1, ('map', ('var', 2), ('name', 'numHolders', 8))) + (u / 2^t)].field_0)
            storC65A[stor11] = (10^16 * numTickets) - (10^16 * numTickets / 200)
            storC65A[stor11] = block.number
            storC65A[stor11] = block.timestamp
            uint256(storC65A[stor11]) = msg.sender or Mask(96, 160, uint256(storC65A[stor11]))
            payoutIdx = payoutIdx + 1 % 3
            call stor0.getLastBlockHeight() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            decidingBlock = ext_call.return_data[0] + 1008
            cutoffBlock = ext_call.return_data[0] + 972
            cutoffTimestamp = block.timestamp + (162 * 3600)
            nearestKnownBlock = 0
            nearestKnownBlockHash = 0
            numTickets = 0
            idx = 0
            while idx < numBuckets:
                mem[0] = idx
                mem[32] = 8
                numHolders[idx].field_0 = 0
                idx = idx + 1
                continue 
            numBuckets = 0
            lastSaleTimestamp = 0
            call address(stor[('array', 1, ('map', ('var', 2), ('name', 'numHolders', 8))) + (u / 2^t)].field_0) with:
               value (10^16 * numTickets) - (10^16 * numTickets / 200) wei
                 gas 0 wei
            emit Activity()
            return 1
    nearestKnownBlock = t
    nearestKnownBlockHash = s
    return 0
}



}
