contract main {


// =======================  Init code  ======================


address stor3;
address stor5;
address stor6;
uint256 stor12;
uint256 stor13;
uint256 stor15;
uint256 stor17;
address stor18;

function _fallback() payable {
    stor13 = 10080
    require not msg.value
    stor3 = 0x49aec0752e68d0282db544c677f6ba407ba17ed7
    stor18 = 0x49aec0752e68d0282db544c677f6ba407ba17ed7
    require ext_code.size(0x49aec0752e68d0282db544c677f6ba407ba17ed7)
    call 0x49aec0752e68d0282db544c677f6ba407ba17ed7.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor17 = ext_call.return_data[0]
    stor15 = 10 * 10^18
    stor5 = this.address
    stor6 = msg.sender
    stor12 = (60 * stor13) + block.timestamp
    return code.data[290 len 6718]
}



// =====================  Runtime code  =====================


address xBLContract_addr;
address burner_addr;
address raffle_addr;
address stor6;
array of address stor7;
array of address stor8;
array of uint256 stor9;
uint64 unique_players;
uint256 total_burned_by_raffle;
uint256 next_week_timestamp;
uint256 raffle_balance;
uint256 ticket_price;
uint256 current_week;
uint256 total_supply;
address stor18;
mapping of uint256 address_to_tickets;
mapping of uint256 address_to_tokens_prev_week0;
mapping of uint256 address_to_tokens_prev_week1;
uint8 prev_week_ID;
address lastweek_winner1Address; offset 8
address lastweek_winner2Address;
address lastweek_winner3Address;

function prev_week_ID() {
    return prev_week_ID
}

function ticket_price() {
    return ticket_price
}

function address_to_tokens_prev_week0(address arg1) {
    return address_to_tokens_prev_week0[arg1]
}

function next_week_timestamp() {
    return next_week_timestamp
}

function total_supply() {
    return total_supply
}

function address_to_tickets(address arg1) {
    return address_to_tickets[arg1]
}

function XBLContract_addr() {
    return xBLContract_addr
}

function raffle_balance() {
    return raffle_balance
}

function lastweek_winner3() {
    return lastweek_winner3Address
}

function lastweek_winner1() {
    return lastweek_winner1Address
}

function total_burned_by_raffle() {
    return total_burned_by_raffle
}

function lastweek_winner2() {
    return lastweek_winner2Address
}

function current_week() {
    return current_week
}

function address_to_tokens_prev_week1(address arg1) {
    return address_to_tokens_prev_week1[arg1]
}

function unique_players() {
    return unique_players
}

function raffle_addr() {
    return raffle_addr
}

function burner_addr() {
    return burner_addr
}

function _fallback() payable {
    revert
}

function setOwnerAddr(address arg1) {
    require stor6 == msg.sender
    stor6 = arg1
}

function setTicketPrice(uint256 arg1) {
    require stor6 == msg.sender
    ticket_price = arg1
}

function setBurnerAddress(address arg1) {
    require stor6 == msg.sender
    burner_addr = arg1
}

function dTRIGGER_NEXTWEEK_TIMESTAMP() {
    require stor6 == msg.sender
    next_week_timestamp = block.timestamp
}

function getLastWeekStake(address arg1) {
    require burner_addr == msg.sender
    if not prev_week_ID:
        return address_to_tokens_prev_week1[address(arg1)]
    if prev_week_ID != 1:
        return 0
    return address_to_tokens_prev_week0[address(arg1)]
}

function reduceLastWeekStake(address arg1, uint256 arg2) {
    require burner_addr == msg.sender
    if not prev_week_ID:
        address_to_tokens_prev_week1[address(arg1)] -= arg2
    if 1 == prev_week_ID:
        address_to_tokens_prev_week0[address(arg1)] -= arg2
}

function dSET_XBL_ADDRESS(address arg1) {
    require stor6 == msg.sender
    xBLContract_addr = arg1
    stor18 = arg1
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    total_supply = ext_call.return_data[0]
}

function dKERNEL_PANIC() {
    require stor6 == msg.sender
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 19
        if address_to_tickets[stor7[idx]]:
            require idx < stor7.length
            mem[100] = stor7[idx]
            mem[132] = address_to_tickets[stor7[idx]] * ticket_price
            require ext_code.size(stor18)
            call stor18.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor7[idx], address_to_tickets[stor7[idx]] * ticket_price
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require idx < stor7.length
            mem[0] = stor7[idx]
            mem[32] = 19
            address_to_tickets[stor7[idx]] = 0
        idx = idx + 1
        continue 
}

function registerTickets(uint256 arg1) {
    if stor7.length > 256:
        next_week_timestamp = block.timestamp
    if block.timestamp >= next_week_timestamp:
        # nil
    else:
        if not arg1:
            return -1
        if arg1 > 5:
            return -1
        if address_to_tickets[address(msg.sender)] >= 5:
            return -1
        require ext_code.size(stor18)
        call stor18.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args msg.sender, raffle_addr
        require ext_call.success
        if ext_call.return_data[0] < arg1 * ticket_price:
            return -2
        require ext_code.size(stor18)
        call stor18.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0] < arg1 * ticket_price:
            return -2
        if prev_week_ID:
            if prev_week_ID != 1:
                return -4
        if not address_to_tickets[address(msg.sender)]:
            unique_players = uint64(unique_players + 1)
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                idx = stor8.length + 1
                while stor8.length > idx:
                    uint256(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor8[stor8.length]) = msg.sender
        address_to_tickets[address(msg.sender)] += arg1
        if not prev_week_ID:
            address_to_tokens_prev_week0[address(msg.sender)] += arg1 * ticket_price
        if 1 == prev_week_ID:
            address_to_tokens_prev_week1[address(msg.sender)] += arg1 * ticket_price
        idx = arg1
        while idx > 0:
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                s = stor7.length + sha3(7) + 1
                while sha3(7) + stor7.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 7
            stor7[stor7.length] = msg.sender
            idx = idx - 1
            continue 
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                stor9[idx] = 0
                idx = idx + 1
                continue 
        hash = sha256hash(block.timestamp) 
        require sha256hash.result
        hash = sha256hash(msg.sender) 
        stor9[stor9.length] = hash * hash
        require ext_code.size(stor18)
        call stor18.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, raffle_addr, arg1 * ticket_price
        require ext_call.success
        return 0
}



}
