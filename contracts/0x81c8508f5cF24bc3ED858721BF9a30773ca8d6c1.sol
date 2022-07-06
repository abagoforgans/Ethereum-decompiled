contract main {


// =======================  Init code  ======================


address stor0;
array of address stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor1.length = 10
    s = 0
    idx = 128
    while 448 > idx:
        stor1[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 10
    while stor1.length > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor3 = 0
    stor0 = msg.sender
    return code.data[393 len 5176]
}



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
    if 256 < (32 * lastIndex) + 256:
        mem[(32 * lastIndex) + 256] = lastIndex
        idx = 0
        while idx < lastIndex:
            require idx < players.length
            require idx < lastIndex
            mem[(32 * idx) + 256] = players[idx]
            require idx < players.length
            mem[0] = players[idx]
            mem[32] = 5
            require idx < mem[(32 * lastIndex) + 256]
            mem[(32 * idx) + (32 * lastIndex) + 288] = contributions[stor1[idx]]
            idx = idx + 1
            continue 
        mem[(64 * lastIndex) + 288] = 64
        mem[(64 * lastIndex) + 352] = lastIndex
        s = 0
        while lastIndex < 32 * lastIndex:
            mem[(66 * lastIndex) + 384] = mem[lastIndex + 256]
            s = lastIndex + 32
            continue 
        mem[(64 * lastIndex) + 320] = (32 * lastIndex) + 96
        mem[(98 * lastIndex) + 384] = mem[(32 * lastIndex) + 256]
        mem[(98 * lastIndex) + 416 len floor32(mem[(32 * lastIndex) + 256])] = mem[(32 * lastIndex) + 288 len floor32(mem[(32 * lastIndex) + 256])]
        return memory
          from (64 * lastIndex) + 288
           len (32 * mem[(32 * lastIndex) + 256]) + (161 * lastIndex) + 128
    mem[256] = lastIndex
    idx = 0
    while idx < lastIndex:
        require idx < players.length
        require idx < lastIndex
        mem[(32 * idx) + 256] = players[idx]
        require idx < players.length
        mem[0] = players[idx]
        mem[32] = 5
        require idx < mem[256]
        mem[(32 * idx) + 288] = contributions[stor1[idx]]
        idx = idx + 1
        continue 
    mem[(32 * lastIndex) + 288] = 64
    mem[(32 * lastIndex) + 352] = lastIndex
    s = 0
    while lastIndex < 32 * lastIndex:
        mem[(34 * lastIndex) + 384] = mem[lastIndex + 256]
        s = lastIndex + 32
        continue 
    mem[(32 * lastIndex) + 320] = (32 * lastIndex) + 96
    mem[(64 * lastIndex) + 384] = mem[256]
    mem[(64 * lastIndex) + 416 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
    return Array(len=lastIndex, data=mem[(32 * lastIndex) + 384 len (32 * lastIndex) + (32 * mem[256]) + 32]), 
           (32 * lastIndex) + 96
}

function getTickets(address arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = ticketsMap[address(arg1)].field_0
    if 256 < (32 * ticketsMap[address(arg1)].field_0) + 256:
        mem[(32 * ticketsMap[address(arg1)].field_0) + 256] = ticketsMap[address(arg1)].field_0
        mem[64] = (64 * ticketsMap[address(arg1)].field_0) + 288
        idx = 0
        while idx < ticketsMap[address(arg1)].field_0:
            require idx < ticketsMap[address(arg1)].field_0
            mem[(32 * idx) + 256] = ticketsMap[address(arg1)][idx].field_0
            require idx < ticketsMap[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            require idx < mem[(32 * ticketsMap[address(arg1)].field_0) + 256]
            mem[(32 * idx) + (32 * ticketsMap[address(arg1)].field_0) + 288] = ticketsMap[address(arg1)][idx].field_256
            idx = idx + 1
            continue 
        mem[(64 * ticketsMap[address(arg1)].field_0) + 288] = 64
        mem[(64 * ticketsMap[address(arg1)].field_0) + 352] = ticketsMap[address(arg1)].field_0
        s = 0
        while ticketsMap[address(arg1)].field_0 < 32 * ticketsMap[address(arg1)].field_0:
            mem[mem[64] + ticketsMap[address(arg1)].field_0 + 96] = mem[ticketsMap[address(arg1)].field_0 + 256]
            s = ticketsMap[address(arg1)].field_0 + 32
            continue 
        mem[(64 * ticketsMap[address(arg1)].field_0) + 320] = (32 * ticketsMap[address(arg1)].field_0) + 96
        mem[(98 * ticketsMap[address(arg1)].field_0) + 384] = mem[(32 * ticketsMap[address(arg1)].field_0) + 256]
        mem[(98 * ticketsMap[address(arg1)].field_0) + 416 len floor32(mem[(32 * ticketsMap[address(arg1)].field_0) + 256])] = mem[(32 * ticketsMap[address(arg1)].field_0) + 288 len floor32(mem[(32 * ticketsMap[address(arg1)].field_0) + 256])]
        return memory
          from mem[64]
           len (32 * mem[(32 * ticketsMap[address(arg1)].field_0) + 256]) + (98 * ticketsMap[address(arg1)].field_0) + -mem[64] + 416
    mem[256] = ticketsMap[address(arg1)].field_0
    mem[64] = (32 * ticketsMap[address(arg1)].field_0) + 288
    idx = 0
    while idx < ticketsMap[address(arg1)].field_0:
        require idx < ticketsMap[address(arg1)].field_0
        mem[(32 * idx) + 256] = ticketsMap[address(arg1)][idx].field_0
        require idx < ticketsMap[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 4)
        require idx < mem[256]
        mem[(32 * idx) + 288] = ticketsMap[address(arg1)][idx].field_256
        idx = idx + 1
        continue 
    mem[(32 * ticketsMap[address(arg1)].field_0) + 288] = 64
    mem[(32 * ticketsMap[address(arg1)].field_0) + 352] = ticketsMap[address(arg1)].field_0
    s = 0
    while ticketsMap[address(arg1)].field_0 < 32 * ticketsMap[address(arg1)].field_0:
        mem[mem[64] + ticketsMap[address(arg1)].field_0 + 96] = mem[ticketsMap[address(arg1)].field_0 + 256]
        s = ticketsMap[address(arg1)].field_0 + 32
        continue 
    mem[(32 * ticketsMap[address(arg1)].field_0) + 320] = (32 * ticketsMap[address(arg1)].field_0) + 96
    mem[(64 * ticketsMap[address(arg1)].field_0) + 384] = mem[256]
    mem[(64 * ticketsMap[address(arg1)].field_0) + 416 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
    return memory
      from mem[64]
       len (32 * mem[256]) + (64 * ticketsMap[address(arg1)].field_0) + -mem[64] + 416
}



}
