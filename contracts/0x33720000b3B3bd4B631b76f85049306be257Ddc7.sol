contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
bool stor6; offset 256
uint8 stor6;
uint8 stor6; offset 8

function _fallback() payable {
    uint8(stor0.field_0) = 1
    stor1 = 20
    stor2 = 10^15
    stor3 = 50
    if block.number >= stor4:
        stor4 = block.number + stor1
    stor5 = 10^15
    uint8(stor6.field_0) = 2
    uint8(stor6.field_8) = 20
    stor6.field_256 % 1 = 0
    address(stor0.field_8) = msg.sender
    return code.data[183 len 2295]
}



// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
uint256 stor1;
uint256 stor2;
uint256 maxPendingParticipants;
uint256 targetBlock;
uint256 ticketPrice;
uint8 minParticipants;
uint8 maxParticipants; offset 8
uint256 totalRoundsPassed;
uint256 totalTicketsSold;
array of struct participants;
array of uint64 pendingParticipants;

function targetBlock() {
    return targetBlock
}

function ticketPrice() {
    return ticketPrice
}

function currentPendingParticipants() {
    return pendingParticipants.length
}

function maxParticipants() {
    return maxParticipants
}

function totalTicketsSold() {
    return totalTicketsSold
}

function participants(uint256 arg1) {
    require arg1 < participants.length
    return address(participants[arg1].field_0)
}

function pendingParticipants(uint256 arg1) {
    require arg1 < pendingParticipants.length
    return address(pendingParticipants[arg1])
}

function owner() {
    return owner
}

function currentParticipants() {
    return participants.length
}

function minParticipants() {
    return minParticipants
}

function maxPendingParticipants() {
    return maxPendingParticipants
}

function totalRoundsPassed() {
    return totalRoundsPassed
}

function kill() {
    stor0 = 0
}

function _fallback() payable {
    mem[64] = 96
    require stor0
    require msg.value >= ticketPrice
    require ticketPrice
    if var21003 >= msg.value / ticketPrice:
        if ticketPrice:
            if msg.value % ticketPrice <= 0:
            if ticketPrice:
                call msg.sender with:
                   value msg.value % ticketPrice wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    else:
        if maxParticipants != participants.length:
            participants.length++
            mem[0] = 9
            address(participants[participants.length].field_0) = msg.sender
        else:
            if pendingParticipants.length >= maxPendingParticipants:
                call msg.sender with:
                   value msg.value - (var23001 * stor2) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            pendingParticipants.length++
            if not pendingParticipants.length <= pendingParticipants.length + 1:
                idx = pendingParticipants.length + 1
                while pendingParticipants.length > idx:
                    uint256(pendingParticipants[idx]) = 0
                    idx = idx + 1
                    continue 
            mem[0] = 10
            address(pendingParticipants[pendingParticipants.length]) = msg.sender
        totalTicketsSold++
        if ticketPrice:
            if var23001 + 1 < msg.value / ticketPrice:
                var23001 = var23001 + 1
                continue 
            if ticketPrice:
                if msg.value % ticketPrice <= 0:
                if ticketPrice:
                    call msg.sender with:
                       value msg.value % ticketPrice wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    revert 
}

function conclude() {
    if block.number < targetBlock:
        return 0
    totalRoundsPassed++
    targetBlock = block.number + stor1
    require participants.length
    require block.hash(block.number - 1) % participants.length < participants.length
    call address(participants[block.hash(block.number - 1) % participants.length].field_0) with:
       value 98 * ticketPrice * participants.length / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit RoundEnded(address(participants[block.hash(block.number - 1) % participants.length].field_0), 98 * ticketPrice * participants.length / 100);
    if not ext_call.success:
        return 0
    participants.length = 0
    if participants.length + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af:
        uint256(participants.field_0) = 0
        idx = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0
        while participants.length + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    if pendingParticipants.length > maxParticipants:
        idx = 0
        while idx < maxParticipants:
            participants.length++
            require idx < pendingParticipants.length
            mem[0] = 10
            uint64(participants[participants.length].field_0) = uint64(pendingParticipants[idx])
            Mask(96, 0, participants[participants.length].field_64) = 0
            idx = idx + 1
            continue 
        if maxParticipants == pendingParticipants.length:
            pendingParticipants.length = 0
            if pendingParticipants.length - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8:
                uint256(pendingParticipants) = 0
                idx = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a9
                while pendingParticipants.length - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
        else:
            s = maxParticipants
            while s < pendingParticipants.length:
                require s - maxParticipants < pendingParticipants.length
                require s < pendingParticipants.length
                mem[0] = 10
                address(pendingParticipants[s]) = 0
                s = s + 1
                continue 
            pendingParticipants.length -= maxParticipants
            if not pendingParticipants.length <= pendingParticipants.length - maxParticipants:
                if 0 > -maxParticipants:
                    uint256(stor[pendingParticipants.length - stor6 + ('name', 'pendingParticipants', 10)]) = 0
                    idx = pendingParticipants.length + -maxParticipants + 1
                    while pendingParticipants.length > idx:
                        uint256(pendingParticipants[idx]) = 0
                        idx = idx + 1
                        continue 
    else:
        idx = 0
        while idx < pendingParticipants.length:
            participants.length++
            require idx < pendingParticipants.length
            mem[0] = 10
            uint64(participants[participants.length].field_0) = uint64(pendingParticipants[idx])
            Mask(96, 0, participants[participants.length].field_64) = 0
            idx = idx + 1
            continue 
        if pendingParticipants.length == pendingParticipants.length:
            pendingParticipants.length = 0
            if pendingParticipants.length - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8:
                uint256(pendingParticipants) = 0
                idx = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a9
                while pendingParticipants.length - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
        else:
            s = pendingParticipants.length
            while s < pendingParticipants.length:
                require s - pendingParticipants.length < pendingParticipants.length
                require s < pendingParticipants.length
                mem[0] = 10
                address(pendingParticipants[s]) = 0
                s = s + 1
                continue 
            pendingParticipants.length = 0
            if not pendingParticipants.length <= 0:
                if sha3(10) + pendingParticipants.length > sha3(10):
                    uint256(pendingParticipants) = 0
                    idx = 1
                    while pendingParticipants.length > idx:
                        uint256(pendingParticipants[idx]) = 0
                        idx = idx + 1
                        continue 
    return 1
}



}
