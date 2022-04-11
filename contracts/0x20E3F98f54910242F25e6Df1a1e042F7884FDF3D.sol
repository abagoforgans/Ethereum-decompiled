contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
address stor3F0;
address stor3F1;
address stor3F2;

function _fallback() payable {
    stor3 = -1
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    stor3F0 = code.data[6992 len 20]
    stor3F1 = code.data[7024 len 20]
    stor3F2 = code.data[7056 len 20]
    return code.data[166 len 6814]
}



// =====================  Runtime code  =====================


address owner;
address adminAddress;
address proposedOwner;
uint256 id;
uint256 lastInitTimestamp;
uint256 lastSaleTimestamp;
uint256 recentActivityIdx;
array of uint256 recentActivity;
array of uint256 stor12;
array of uint256 stor13;
mapping of struct ticketOwner;
address btcRelayAddress;
address poissonDataAddress;
address escrowAddress;

function lastInitTimestamp() {
    return lastInitTimestamp
}

function poissonData() {
    return poissonDataAddress
}

function recentActivity(uint256 arg1) {
    require arg1 < 1000
    return recentActivity[arg1]
}

function owner() {
    return owner
}

function recentActivityIdx() {
    return recentActivityIdx
}

function id() {
    return id
}

function proposedOwner() {
    return proposedOwner
}

function btcRelay() {
    return btcRelayAddress
}

function escrow() {
    return escrowAddress
}

function getTicketOwner(int256 arg1, uint256 arg2) {
    require arg1 >= 0
    return ticketOwner[arg1][11][arg2].field_0
}

function lastSaleTimestamp() {
    return lastSaleTimestamp
}

function admin() {
    return adminAddress
}

function destruct() {
    require owner == msg.sender
    require block.timestamp - lastInitTimestamp > 336 * 24 * 3600
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function getMessageLength(string arg1) {
    return arg1.length
}

function setAdmin(address arg1) {
    require owner == msg.sender
    adminAddress = arg1
}

function proposeOwner(address arg1) {
    require owner == msg.sender
    proposedOwner = arg1
}

function needsInitialization() {
    if -1 == id:
        return True
    return (ticketOwner[stor3].field_2048 > 0)
}

function acceptOwnership() {
    require proposedOwner
    require proposedOwner == msg.sender
    owner = proposedOwner
}

function getRecentActivity() {
    mem[96] = 0
    mem[128 len 31968] = 0
    idx = 0
    while idx < 1000:
        mem[(32 * idx) + 96] = recentActivity[idx]
        idx = idx + 1
        continue 
    return id, recentActivityIdx, mem[96 len 32000]
}

function setMessage(int256 arg1, string arg2) {
    require id >= 0
    require ticketOwner[arg1].field_1792
    require ticketOwner[arg1].field_1792 == msg.sender
    require arg2.length <= 500
    ticketOwner[arg1][10][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function needsFinalization() {
    require id >= 0
    require ext_code.size(btcRelayAddress)
    call btcRelayAddress.getLastBlockHeight() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < ticketOwner[stor3].field_256 + 6:
        return not ext_call.return_data[0] < ticketOwner[stor3].field_256 + 6
    return not bool(ticketOwner[stor3].field_2048)
}

function getLotteryDetailsA(int256 arg1) {
    if arg1 != -1:
        return arg1, 
               ticketOwner[arg1].field_0,
               ticketOwner[arg1].field_256,
               ticketOwner[arg1].field_512,
               ticketOwner[arg1].field_768,
               lastSaleTimestamp,
               ticketOwner[arg1].field_1024,
               ticketOwner[arg1].field_1280
    return id, 
           ticketOwner[stor3].field_0,
           ticketOwner[stor3].field_256,
           ticketOwner[stor3].field_512,
           ticketOwner[stor3].field_768,
           lastSaleTimestamp,
           ticketOwner[stor3].field_1024,
           ticketOwner[stor3].field_1280
}

function getTicketDetails(int256 arg1, uint256 arg2, uint256 arg3, address arg4) {
    require arg3 + arg2 <= ticketOwner[arg1].field_512
    s = 0
    idx = 0
    while idx < arg3:
        mem[0] = idx + arg2
        mem[32] = sha3(arg1, 1007) + 11
        require idx < arg3
        if ticketOwner[arg1][11][idx + arg2].field_0 == arg4:
            mem[(32 * idx) + 160] = 2
        else:
            if not ticketOwner[arg1][11][idx + arg2].field_0:
                mem[(32 * idx) + 160] = 0
            else:
                mem[(32 * idx) + 160] = 1
        s = ticketOwner[arg1][11][idx + arg2].field_0
        idx = idx + 1
        continue 
    mem[(32 * arg3) + 224 len floor32(arg3)] = mem[160 len floor32(arg3)]
    return Array(len=arg3, data=mem[160 len floor32(arg3)], mem[(32 * arg3) + floor32(arg3) + 224 len (32 * arg3) - floor32(arg3)]), 
}

function lotteries(int256 arg1) {
    mem[544] = ticketOwner[arg1][10].field_0
    idx = 544
    s = 0
    while ticketOwner[arg1][10].length + 544 > idx + 32:
        mem[idx + 32] = ticketOwner[arg1][s + 10].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return ticketOwner[arg1].field_0, 
           ticketOwner[arg1].field_256,
           ticketOwner[arg1].field_512,
           ticketOwner[arg1].field_768,
           ticketOwner[arg1].field_1024,
           ticketOwner[arg1].field_1280,
           ticketOwner[arg1].field_1536,
           ticketOwner[arg1].field_1792,
           ticketOwner[arg1].field_2048,
           ticketOwner[arg1].field_2304,
           Array(len=ticketOwner[arg1][10].length, data=mem[544 len ticketOwner[arg1][10].length + (floor32(ticketOwner[arg1][10].length - 1) + -ticketOwner[arg1][10].length + 32 % 32)]),
           ticketOwner[arg1].field_3072,
           ticketOwner[arg1].field_3328
}

function initLottery(uint256 arg1, uint256 arg2, uint256 arg3, int256 arg4) payable {
    if owner != msg.sender:
        require adminAddress == msg.sender
    if id != -1:
        require ticketOwner[stor3].field_2048 > 0
    require msg.value > 0
    require arg1 == msg.value
    require arg3 * arg2 > arg1
    require ext_code.size(poissonDataAddress)
    call poissonDataAddress.lookup(int256 rg1) with:
         gas gas_remaining - 710 wei
        args (arg4 - 1)
    require ext_call.success
    require ext_call.return_data[0] > 0
    id++
    ticketOwner[stor3 + 1].field_0 = arg1
    require ext_code.size(btcRelayAddress)
    call btcRelayAddress.getLastBlockHeight() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    ticketOwner[stor3].field_256 = arg4 + ext_call.return_data[0]
    ticketOwner[stor3].field_512 = arg2
    ticketOwner[stor3].field_1024 = arg3
    ticketOwner[stor3].field_1280 = block.timestamp + ext_call.return_data[0]
    ticketOwner[stor3].field_1536 = -1
    lastInitTimestamp = block.timestamp
}

function buyTickets(uint256[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require id >= 0
    mem[(32 * arg1.length) + 160] = 0
    require ext_code.size(btcRelayAddress)
    call btcRelayAddress.getLastBlockHeight() with:
         gas gas_remaining - 710 wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] + 1 < ticketOwner[stor3].field_256
    require block.timestamp < ticketOwner[stor3].field_1280
    require arg1.length > 0
    require msg.value == arg1.length * ticketOwner[stor3].field_1024
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 128] >= 0
        require mem[(32 * idx) + 128] < ticketOwner[stor3].field_512
        require not ticketOwner[stor3][11][mem[(32 * idx) + 128]].field_0
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(id, 1007) + 11
        ticketOwner[stor3][11][mem[(32 * idx) + 128]].field_0 = msg.sender
        require recentActivityIdx < 1000
        recentActivity[stor6] = mem[(32 * idx) + 128]
        recentActivityIdx++
        if recentActivityIdx + 1 >= 1000:
            recentActivityIdx = 0
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    ticketOwner[stor3].field_768 += arg1.length
    lastSaleTimestamp = block.timestamp
    require ext_code.size(poissonDataAddress)
    call poissonDataAddress.lookup(int256 rg1) with:
         gas gas_remaining - 710 wei
        args (ticketOwner[stor3].field_256 + -ext_call.return_data[0] - 1)
    require ext_call.success
    if ext_call.return_data[0] + block.timestamp < ticketOwner[stor3].field_1280:
        ticketOwner[stor3].field_1280 = ext_call.return_data[0] + block.timestamp
}

function getLotteryDetailsB(int256 arg1) {
    if arg1 != -1:
        mem[160] = ticketOwner[arg1][10].field_0
        idx = 160
        s = 0
        while ticketOwner[arg1][10].length + 128 > idx:
            mem[idx + 32] = ticketOwner[arg1][s + 10].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(btcRelayAddress)
        call btcRelayAddress.getLastBlockHeight() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if arg1 != 0:
            if arg1 != id:
                return arg1, 
                       ticketOwner[arg1].field_1536,
                       ticketOwner[arg1].field_1792,
                       ticketOwner[arg1].field_2048,
                       ticketOwner[arg1].field_2304,
                       Array(len=ticketOwner[arg1][10].length, data=mem[160 len ticketOwner[arg1][10].length]),
                       arg1 - 1,
                       arg1 + 1,
                       ext_call.return_data[0]
            return arg1, 
                   ticketOwner[arg1].field_1536,
                   ticketOwner[arg1].field_1792,
                   ticketOwner[arg1].field_2048,
                   ticketOwner[arg1].field_2304,
                   Array(len=ticketOwner[arg1][10].length, data=mem[160 len ticketOwner[arg1][10].length]),
                   arg1 - 1,
                   -1,
                   ext_call.return_data[0]
        if arg1 != id:
            return arg1, 
                   ticketOwner[arg1].field_1536,
                   ticketOwner[arg1].field_1792,
                   ticketOwner[arg1].field_2048,
                   ticketOwner[arg1].field_2304,
                   Array(len=ticketOwner[arg1][10].length, data=mem[160 len ticketOwner[arg1][10].length]),
                   -1,
                   arg1 + 1,
                   ext_call.return_data[0]
        return arg1, 
               ticketOwner[arg1].field_1536,
               ticketOwner[arg1].field_1792,
               ticketOwner[arg1].field_2048,
               ticketOwner[arg1].field_2304,
               Array(len=ticketOwner[arg1][10].length, data=mem[160 len ticketOwner[arg1][10].length]),
               -1,
               -1,
               ext_call.return_data[0]
    mem[160] = ticketOwner[stor3][10].field_0
    idx = 160
    s = 0
    while ticketOwner[stor3][10].length + 128 > idx:
        mem[idx + 32] = ticketOwner[stor3][s + 10].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(btcRelayAddress)
    call btcRelayAddress.getLastBlockHeight() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if id != 0:
        if id != id:
            return id, 
                   ticketOwner[stor3].field_1536,
                   ticketOwner[stor3].field_1792,
                   ticketOwner[stor3].field_2048,
                   ticketOwner[stor3].field_2304,
                   Array(len=ticketOwner[stor3][10].length, data=mem[160 len ticketOwner[stor3][10].length]),
                   id - 1,
                   id + 1,
                   ext_call.return_data[0]
        return id, 
               ticketOwner[stor3].field_1536,
               ticketOwner[stor3].field_1792,
               ticketOwner[stor3].field_2048,
               ticketOwner[stor3].field_2304,
               Array(len=ticketOwner[stor3][10].length, data=mem[160 len ticketOwner[stor3][10].length]),
               id - 1,
               -1,
               ext_call.return_data[0]
    if id != id:
        return id, 
               ticketOwner[stor3].field_1536,
               ticketOwner[stor3].field_1792,
               ticketOwner[stor3].field_2048,
               ticketOwner[stor3].field_2304,
               Array(len=ticketOwner[stor3][10].length, data=mem[160 len ticketOwner[stor3][10].length]),
               -1,
               id + 1,
               ext_call.return_data[0]
    return id, 
           ticketOwner[stor3].field_1536,
           ticketOwner[stor3].field_1792,
           ticketOwner[stor3].field_2048,
           ticketOwner[stor3].field_2304,
           Array(len=ticketOwner[stor3][10].length, data=mem[160 len ticketOwner[stor3][10].length]),
           -1,
           -1,
           ext_call.return_data[0]
}

function finalizeLottery(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require id >= 0
    mem[128] = 0
    require ext_code.size(btcRelayAddress)
    call btcRelayAddress.getLastBlockHeight() with:
         gas gas_remaining - 710 wei
    mem[96] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] >= ticketOwner[stor3].field_256 + 6
    require not ticketOwner[stor3].field_2048
    if ticketOwner[stor3].field_3072 == ticketOwner[stor3].field_256:
        require ticketOwner[stor3].field_512
        ticketOwner[stor3].field_1536 = ('smod', ('field', 3328, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'ticketOwner', 1007)))), ('field', 512, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'ticketOwner', 1007)))))
        ticketOwner[stor3].field_1792 = ticketOwner[stor3][11][('smod', ('field', 3328, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'ticketOwner', 1007)))), ('field', 512, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'ticketOwner', 1007)))))].field_0
        ticketOwner[stor3].field_2048 = block.number
        ticketOwner[stor3].field_2304 = tx.origin
        if ticketOwner[stor3][11][('smod', ('field', 3328, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'ticketOwner', 1007)))), ('field', 512, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'ticketOwner', 1007)))))].field_0:
            call ticketOwner[stor3][11][('smod', ('field', 3328, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'ticketOwner', 1007)))), ('field', 512, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'ticketOwner', 1007)))))].field_0 with:
               value ticketOwner[stor3].field_0 wei
                 gas 300000 wei
            if not ext_call.success:
                require ext_code.size(escrowAddress)
                call escrowAddress.deposit(address rg1) with:
                   value ticketOwner[stor3].field_0 wei
                     gas gas_remaining - 9710 wei
                    args ticketOwner[stor3][11][('smod', ('field', 3328, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'ticketOwner', 1007)))), ('field', 512, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'ticketOwner', 1007)))))].field_0
                require ext_call.success
        call adminAddress with:
           value eth.balance(this.address) wei
             gas 300000 wei
    else:
        mem[0] = id
        mem[32] = 1007
        if ticketOwner[stor3].field_3072 != 0:
            mem[0] = id
            mem[32] = 1007
            s = 0
            t = 0
            t = 0
            t = 0
            idx = 0
            t = stor13[sha3(mem[0 len 64])]
            u = stor12[sha3(mem[0 len 64])]
            while idx < arg1:
                require ext_code.size(btcRelayAddress)
                call btcRelayAddress.getFeeAmount(int256 rg1) with:
                     gas gas_remaining - 710 wei
                    args t
                require ext_call.success
                require not ext_call.return_data[0]
                mem[mem[64] + 96] = 0
                require ext_code.size(btcRelayAddress)
                call btcRelayAddress.getBlockHeader(int256 rg1) with:
                     gas gas_remaining - 710 wei
                    args t
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                require ext_call.success
                _92 = mem[64]
                mem[64] = mem[64] + 96
                _94 = mem[_92 + 64]
                mem[mem[64]] = mem[_92 + 64]
                t = 0
                while t < 32:
                    t = t + 1
                    continue 
                mem[0] = id
                mem[32] = 1007
                if u - 1 != ticketOwner[stor3].field_256:
                    t = 32
                    t = mem[mem[64] + 4 len 28], ext_call.return_data[32 len 4]
                    t = _94
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = 0
                    u = u - 1
                    continue 
                ticketOwner[stor3].field_3072 = u - 1
                ticketOwner[stor3].field_3328 = 0
        else:
            require ext_code.size(btcRelayAddress)
            call btcRelayAddress.getLastBlockHeight() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            mem[128] = 0
            require ext_code.size(btcRelayAddress)
            call btcRelayAddress.getBlockchainHead() with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            s = 0
            t = 0
            t = 0
            t = 0
            idx = 0
            t = mem[mem[64]]
            u = ext_call.return_data[0]
            while idx < arg1:
                require ext_code.size(btcRelayAddress)
                call btcRelayAddress.getFeeAmount(int256 rg1) with:
                     gas gas_remaining - 710 wei
                    args t
                require ext_call.success
                require not ext_call.return_data[0]
                mem[mem[64] + 96] = 0
                require ext_code.size(btcRelayAddress)
                call btcRelayAddress.getBlockHeader(int256 rg1) with:
                     gas gas_remaining - 710 wei
                    args t
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                require ext_call.success
                _93 = mem[64]
                mem[64] = mem[64] + 96
                _97 = mem[_93 + 64]
                mem[mem[64]] = mem[_93 + 64]
                t = 0
                while t < 32:
                    t = t + 1
                    continue 
                mem[0] = id
                mem[32] = 1007
                if u - 1 != ticketOwner[stor3].field_256:
                    t = 32
                    t = mem[mem[64] + 4 len 28], ext_call.return_data[32 len 4]
                    t = _97
                    t = ext_call.return_data[0]
                    idx = idx + 1
                    t = 0
                    u = u - 1
                    continue 
                ticketOwner[stor3].field_3072 = u - 1
                ticketOwner[stor3].field_3328 = 0
        ticketOwner[stor3].field_3072 = u
        ticketOwner[stor3].field_3328 = t
}



}
