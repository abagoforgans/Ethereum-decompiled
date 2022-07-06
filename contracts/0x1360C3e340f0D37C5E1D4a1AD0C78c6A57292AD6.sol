contract main {




// =====================  Runtime code  =====================


#
#  - executeLottery()
#  - _fallback()
#
const name = 'Jackpot'


address owner;
array of address players;
uint256 lastTicketNumber;
uint8 lastIndex;
array of struct ticketsMap;
mapping of uint256 contributions;

function contributions(address arg1) {
    return contributions[arg1]
}

function lastTicketNumber() {
    return lastTicketNumber
}

function ticketsMap(address arg1, uint256 arg2) {
    require arg2 < ticketsMap[arg1].field_0
    return ticketsMap[arg1][arg2].field_0, ticketsMap[arg1][arg2].field_256
}

function owner() {
    return owner
}

function lastIndex() {
    return lastIndex
}

function players(uint256 arg1) {
    require arg1 < players.length
    return players[arg1]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getPlayers() {
    if not lastIndex:
        mem[(32 * lastIndex) + 128] = lastIndex
    else:
        mem[128 len 32 * lastIndex] = code.data[5260 len 32 * lastIndex]
        mem[(32 * lastIndex) + 128] = lastIndex
        mem[(32 * lastIndex) + 160 len 32 * lastIndex] = code.data[5260 len 32 * lastIndex]
    idx = 0
    while idx < lastIndex:
        require idx < players.length
        require idx < lastIndex
        mem[(32 * idx) + 128] = players[idx]
        require idx < players.length
        mem[0] = players[idx]
        mem[32] = 5
        require idx < mem[(32 * lastIndex) + 128]
        mem[(32 * idx) + (32 * lastIndex) + 160] = contributions[stor1[idx]]
        idx = idx + 1
        continue 
    mem[(64 * lastIndex) + 160] = 64
    mem[(64 * lastIndex) + 224] = lastIndex
    s = 0
    while lastIndex < 32 * lastIndex:
        mem[(66 * lastIndex) + 256] = mem[lastIndex + 128]
        s = lastIndex + 32
        continue 
    mem[(64 * lastIndex) + 192] = (32 * lastIndex) + 96
    mem[(98 * lastIndex) + 256] = mem[(32 * lastIndex) + 128]
    mem[(98 * lastIndex) + 288 len floor32(mem[(32 * lastIndex) + 128])] = mem[(32 * lastIndex) + 160 len floor32(mem[(32 * lastIndex) + 128])]
    return memory
      from (64 * lastIndex) + 160
       len (32 * mem[(32 * lastIndex) + 128]) + (161 * lastIndex) + 128
}

function getTickets(address arg1) {
    mem[96] = ticketsMap[address(arg1)].field_0
    if not ticketsMap[address(arg1)].field_0:
        mem[(32 * ticketsMap[address(arg1)].field_0) + 128] = ticketsMap[address(arg1)].field_0
        mem[64] = (64 * ticketsMap[address(arg1)].field_0) + 160
    else:
        mem[128 len 32 * ticketsMap[address(arg1)].field_0] = code.data[5260 len 32 * ticketsMap[address(arg1)].field_0]
        mem[(32 * ticketsMap[address(arg1)].field_0) + 128] = ticketsMap[address(arg1)].field_0
        mem[64] = (64 * ticketsMap[address(arg1)].field_0) + 160
        mem[(32 * ticketsMap[address(arg1)].field_0) + 160 len 32 * ticketsMap[address(arg1)].field_0] = code.data[5260 len 32 * ticketsMap[address(arg1)].field_0]
    idx = 0
    while idx < ticketsMap[address(arg1)].field_0:
        require idx < ticketsMap[address(arg1)].field_0
        mem[(32 * idx) + 128] = ticketsMap[address(arg1)][idx].field_0
        require idx < ticketsMap[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 4)
        require idx < mem[(32 * ticketsMap[address(arg1)].field_0) + 128]
        mem[(32 * idx) + (32 * ticketsMap[address(arg1)].field_0) + 160] = ticketsMap[address(arg1)][idx].field_256
        idx = idx + 1
        continue 
    mem[(64 * ticketsMap[address(arg1)].field_0) + 160] = 64
    mem[(64 * ticketsMap[address(arg1)].field_0) + 224] = ticketsMap[address(arg1)].field_0
    s = 0
    while ticketsMap[address(arg1)].field_0 < 32 * ticketsMap[address(arg1)].field_0:
        mem[mem[64] + ticketsMap[address(arg1)].field_0 + 96] = mem[ticketsMap[address(arg1)].field_0 + 128]
        s = ticketsMap[address(arg1)].field_0 + 32
        continue 
    mem[(64 * ticketsMap[address(arg1)].field_0) + 192] = (32 * ticketsMap[address(arg1)].field_0) + 96
    mem[(98 * ticketsMap[address(arg1)].field_0) + 256] = mem[(32 * ticketsMap[address(arg1)].field_0) + 128]
    mem[(98 * ticketsMap[address(arg1)].field_0) + 288 len floor32(mem[(32 * ticketsMap[address(arg1)].field_0) + 128])] = mem[(32 * ticketsMap[address(arg1)].field_0) + 160 len floor32(mem[(32 * ticketsMap[address(arg1)].field_0) + 128])]
    return memory
      from mem[64]
       len (32 * mem[(32 * ticketsMap[address(arg1)].field_0) + 128]) + (98 * ticketsMap[address(arg1)].field_0) + -mem[64] + 288
}



}
