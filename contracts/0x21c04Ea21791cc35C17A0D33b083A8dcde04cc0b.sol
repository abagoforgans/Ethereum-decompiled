contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;

function _fallback() payable {
    stor4 = 10^16
    stor5 = 0
    stor7 = 300
    stor8 = block.timestamp + 300
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[101 len 2597]
}



// =====================  Runtime code  =====================


#
#  - joinPot()
#
address owner;
array of struct addresses;
address winnerAddress;
array of struct slots;
uint256 stor4;
uint256 potSize;
uint256 amountWon;
uint256 potTime;
uint256 endTime;
uint256 totalBet;
uint8 locked;

function amountWon() {
    return amountWon
}

function endTime() {
    return endTime
}

function slots(uint256 arg1) {
    require arg1 < slots.length
    return slots[arg1].field_0
}

function getEndTime() {
    return endTime
}

function potSize() {
    return potSize
}

function owner() {
    return owner
}

function locked() {
    return bool(locked)
}

function winnerAddress() {
    return winnerAddress
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return address(addresses[arg1].field_0)
}

function potTime() {
    return potTime
}

function totalBet() {
    return totalBet
}

function _fallback() payable {
    revert
}

function findWinner(uint256 arg1) {
    idx = 0
    while idx < slots.length:
        mem[0] = 3
        if arg1 > slots[idx].field_0:
            idx = idx + 1
            continue 
        require idx < addresses.length
        return address(addresses[idx].field_0)
    return 0
}

function getSlots() {
    if slots.length:
        mem[160] = uint256(slots.field_0)
        idx = 160
        s = 0
        while (32 * slots.length) + 128 > idx:
            mem[idx + 32] = slots[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * slots.length) + 160] = 32
    mem[(32 * slots.length) + 192] = slots.length
    if Mask(251, 0, slots.length):
        mem[(32 * slots.length) + 224] = mem[160]
        mem[(32 * slots.length) + 256 len floor32((32 * slots.length) - 1)] = mem[192 len floor32((32 * slots.length) - 1)]
    return Array(len=slots.length, data=mem[(32 * slots.length) + 224 len 32 * slots.length])
}

function getPlayers() {
    if addresses.length:
        mem[160] = address(addresses.field_0)
        idx = 160
        s = 0
        while (32 * addresses.length) + 128 > idx:
            mem[idx + 32] = address(addresses[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * addresses.length) + 160] = 32
    mem[(32 * addresses.length) + 192] = addresses.length
    if Mask(251, 0, addresses.length):
        mem[(32 * addresses.length) + 224] = mem[160]
        mem[(32 * addresses.length) + 256 len floor32((32 * addresses.length) - 1)] = mem[192 len floor32((32 * addresses.length) - 1)]
    return Array(len=addresses.length, data=mem[(32 * addresses.length) + 224 len 32 * addresses.length])
}

function rewardWinner() payable {
    require block.timestamp > endTime
    if not locked:
        locked = 1
        if potSize <= 0:
            emit winnerAnnounced(address rg1, uint256 rg2):
                                 0,
            potSize = 0
            endTime = block.timestamp + potTime
            emit timeLeft(potTime);
            slots.length = 0
            idx = 0
            while slots.length > idx:
                slots[idx].field_0 = 0
                idx = idx + 1
                continue 
            addresses.length = 0
            idx = 0
            while addresses.length > idx:
                addresses[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if addresses.length == 1:
                endTime = block.timestamp + potTime
                emit timeLeft(potTime);
            else:
                require slots.length
                idx = 0
                while idx < slots.length:
                    mem[0] = 3
                    if block.hash(block.number - 1) % slots.length > slots[idx].field_0:
                        idx = idx + 1
                        continue 
                    require idx < addresses.length
                    winnerAddress = address(addresses[idx].field_0)
                    amountWon = 98 * stor4 * potSize / 100
                    emit winnerAnnounced(winnerAddress, 98 * stor4 * potSize / 100);
                    call winnerAddress with:
                       value amountWon wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call owner with:
                       value 2 * potSize * stor4 / 100 wei
                         gas 2300 * is_zero(value) wei
                    potSize = 0
                    endTime = block.timestamp + potTime
                    emit timeLeft(potTime);
                    slots.length = 0
                    idx = sha3(3)
                    while sha3(3) + slots.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    addresses.length = 0
                    idx = sha3(1)
                    while sha3(1) + addresses.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    locked = 0
                winnerAddress = 0
                amountWon = 98 * stor4 * potSize / 100
                emit winnerAnnounced(winnerAddress, 98 * stor4 * potSize / 100);
                call winnerAddress with:
                   value amountWon wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call owner with:
                   value 2 * potSize * stor4 / 100 wei
                     gas 2300 * is_zero(value) wei
                potSize = 0
                endTime = block.timestamp + potTime
                emit timeLeft(potTime);
                slots.length = 0
                idx = 0
                while slots.length > idx:
                    slots[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                addresses.length = 0
                idx = 0
                while addresses.length > idx:
                    addresses[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        locked = 0
}



}
