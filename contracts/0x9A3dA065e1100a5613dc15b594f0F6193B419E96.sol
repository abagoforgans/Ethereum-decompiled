contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor5;

function _fallback() payable {
    stor1 = 1
    stor2 = 1
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[78 len 2743]
}



// =====================  Runtime code  =====================


#
#  - buyTickets()
#  - _fallback()
#
const rake = 2 * 10^16

const totalTickets = 6

const prize = 10^17

const pricePerTicket = 2 * 10^16


address rakeAddress;
uint256 raffleId;
uint256 nextTicket;
mapping of struct contestants;
array of uint256 gaps;
uint8 stor5;
uint256 stor5;

function paused() {
    return bool(uint8(stor5))
}

function raffleId() {
    return raffleId
}

function gaps(uint256 arg1) {
    require arg1 < gaps.length
    return gaps[arg1]
}

function rakeAddress() {
    return rakeAddress
}

function nextTicket() {
    return nextTicket
}

function contestants(uint256 arg1) {
    return address(contestants[arg1].field_0), contestants[arg1].field_256
}

function kill() {
    if rakeAddress != msg.sender:
    selfdestruct(rakeAddress)
}

function togglePause() {
    if rakeAddress == msg.sender:
        uint256(stor5) = not uint8(stor5) or Mask(248, 8, uint256(stor5))
}

function endRaffle() {
    if rakeAddress == msg.sender:
        uint8(stor5) = 1
        idx = 1
        while idx <= 6:
            mem[0] = idx
            mem[32] = 3
            if raffleId == contestants[idx].field_256:
                mem[96] = address(contestants[idx].field_0)
                mem[128] = idx
                emit TicketRefund(address(contestants[idx].field_0), idx, raffleId);
                mem[0] = idx
                mem[32] = 3
                call address(contestants[idx].field_0) with:
                   value 2 * 10^16 wei
                     gas 0 wei
                require ext_call.success
            idx = idx + 1
            continue 
        emit RaffleResult(uint256 rg1, uint256 rg2, address rg3, address rg4, address rg5, uint256 rg6, bytes32 rg7):
                          0,
                          raffleId,
        raffleId++
        nextTicket = 1
        gaps.length = 0
        if not gaps.length <= 0:
            idx = 0
            while gaps.length > idx:
                gaps[idx] = 0
                idx = idx + 1
                continue 
}

function getRefund() payable {
    mem[64] = 96
    require not msg.value
    idx = 1
    s = 0
    while idx <= 6:
        mem[0] = idx
        mem[32] = 3
        if address(contestants[idx].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 3
        if raffleId != contestants[idx].field_256:
            idx = idx + 1
            s = s
            continue 
        _18 = mem[64]
        mem[64] = mem[64] + 64
        mem[_18] = 0
        mem[_18 + 32] = 0
        mem[32] = 3
        address(contestants[idx].field_0) = 0
        contestants[idx].field_256 % 1 = 0
        contestants[idx].field_256 = 0
        gaps.length++
        if not gaps.length <= gaps.length + 1:
            t = gaps.length + sha3(4) + 1
            while sha3(4) + gaps.length > t:
                stor[t] = 0
                t = t + 1
                continue 
        mem[0] = 4
        gaps[gaps.length] = idx
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = idx
        emit TicketRefund(msg.sender, idx, raffleId);
        idx = idx + 1
        s = s + 1
        continue 
    if s > 0:
        call msg.sender with:
           value 2 * 10^16 * s wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
