contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14;
address stor14; offset 8
uint256 stor15;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    mem[96] = 4 * 10^18
    mem[128] = 2 * 10^18
    mem[160] = 10^18
    mem[192] = 5 * 10^17
    mem[224] = 5 * 10^17
    mem[256] = 5 * 10^17
    mem[288] = 5 * 10^17
    mem[320] = 5 * 10^17
    s = 3
    idx = 96
    while 352 > idx:
        uint64(stor[s].field_0) = mem[idx + 24 len 8]
        Mask(192, 0, stor[s].field_64) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 11
    while 11 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    address(stor0.field_0) = msg.sender
    create contract with 0 wei
                    code: code.data[5483 len 5149]
    require create.new_address
    stor1 = address(create.new_address)
    address(stor14.field_8) = code.data[10644 len 20]
    stor11 = msg.value
    stor12 = 0
    stor15 = 0
    stor13 = block.number
    uint8(stor14.field_0) = 0
    return code.data[729 len 4754]
}



// =====================  Runtime code  =====================


const PRICE = 10^17


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;
mapping of address stor2;
array of uint256 stor3;
uint256 jackpotAmount;
uint256 gameNumber;
uint256 gameStarted;
uint8 stor14;
address stor14; offset 8
uint256 stor15;

function paused() {
    return bool(uint8(stor0.field_160))
}

function gameStarted() {
    return gameStarted
}

function undestroyable() {
    return bool(uint8(stor14.field_0))
}

function owner() {
    return owner
}

function jackpotAmount() {
    return jackpotAmount
}

function gameNumber() {
    return gameNumber
}

function token() {
    return tokenAddress
}

function destroy() {
    require msg.sender == owner
    require not uint8(stor14.field_0)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x83197ef0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    selfdestruct(owner)
}

function makeUndestroyable() {
    require msg.sender == owner
    uint8(stor14.field_0) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function changeWallet(address arg1) {
    require msg.sender == owner
    require arg1
    address(stor14.field_8) = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
    return 1
}

function refundGameAfterLongInactivity() {
    require gameStarted <= block.number
    require block.number - gameStarted >= 160000
    require stor15 % 100
    if uint8(var18003) < stor15 % 100:
        call stor2[stor12][var18003 << 248] with:
           value 10^17 wei
             gas 0 wei
        require ext_call.success
        idx = var18003
        while uint8(idx + 1) < stor15 % 100:
            mem[0] = uint8(idx + 1)
            mem[32] = sha3(gameNumber, 2)
            call stor2[stor12][idx + 1 << 248] with:
               value 10^17 wei
                 gas 0 wei
            require ext_call.success
            idx = idx + 1
            continue 
    stor15 -= stor15 % 100
    emit GameRefunded(gameNumber);
    gameNumber++
    gameStarted = block.number
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require msg.sender
    require msg.value >= 10^17
    require msg.value % 10^17 <= msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (msg.value % 10^17) / 10^17
    require ext_call.success
    idx = 0
    while idx < msg.value - (msg.value % 10^17) / 10^17:
        mem[0] = stor15 % 100
        mem[32] = sha3(gameNumber, 2)
        stor2[stor12][stor15 % 100] = msg.sender
        emit ParticipantAdded(msg.sender, gameNumber, stor15 % 100);
        stor15++
        if not stor15 + 1 % 100:
            mem[96] = block.hash(block.number - 1)
            mem[128] = block.hash(block.number - 100)
            s = 0
            t = sha3(block.hash(block.number - 1), block.hash(block.number - 100)) % 100
            while uint8(s) < 8:
                if sha3(block.hash(block.number - 1), block.hash(block.number - 100)) % 100 == sha3(block.hash(block.number - 1), block.hash(block.number - 100)) % 10^6:
                    if not uint8(s):
                        call stor2[stor12][t] with:
                           value jackpotAmount wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit JackpotAwarded(gameNumber, stor2[stor12][t], jackpotAmount);
                        jackpotAmount = 0
                require uint8(s) < 8
                call stor2[stor12][t % 100] with:
                   value stor3[uint8(s)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require uint8(s) < 8
                mem[0] = t % 100
                mem[32] = sha3(gameNumber, 2)
                emit PrizeAwarded(gameNumber, stor2[stor12][t % 100], stor3[uint8(s)]);
                s = s + 1
                t = t + 1
                continue 
            require jackpotAmount + 25 * 10^16 >= jackpotAmount
            jackpotAmount += 25 * 10^16
            call address(stor14.field_8) with:
               value 249 * 10^15 wei
                 gas 0 wei
            require ext_call.success
            call msg.sender with:
               value 10^15 wei
                 gas 0 wei
            gameNumber++
            gameStarted = block.number
        idx = idx + 1
        continue 
    call msg.sender with:
       value msg.value % 10^17 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTicketsFor(address arg1) payable {
    require not uint8(stor0.field_160)
    require arg1
    require msg.value >= 10^17
    require msg.value % 10^17 <= msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value - (msg.value % 10^17) / 10^17
    require ext_call.success
    idx = 0
    while idx < msg.value - (msg.value % 10^17) / 10^17:
        mem[0] = stor15 % 100
        mem[32] = sha3(gameNumber, 2)
        stor2[stor12][stor15 % 100] = arg1
        emit ParticipantAdded(arg1, gameNumber, stor15 % 100);
        stor15++
        if not stor15 + 1 % 100:
            mem[96] = block.hash(block.number - 1)
            mem[128] = block.hash(block.number - 100)
            s = 0
            t = sha3(block.hash(block.number - 1), block.hash(block.number - 100)) % 100
            while uint8(s) < 8:
                if sha3(block.hash(block.number - 1), block.hash(block.number - 100)) % 100 == sha3(block.hash(block.number - 1), block.hash(block.number - 100)) % 10^6:
                    if not uint8(s):
                        call stor2[stor12][t] with:
                           value jackpotAmount wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit JackpotAwarded(gameNumber, stor2[stor12][t], jackpotAmount);
                        jackpotAmount = 0
                require uint8(s) < 8
                call stor2[stor12][t % 100] with:
                   value stor3[uint8(s)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require uint8(s) < 8
                mem[0] = t % 100
                mem[32] = sha3(gameNumber, 2)
                emit PrizeAwarded(gameNumber, stor2[stor12][t % 100], stor3[uint8(s)]);
                s = s + 1
                t = t + 1
                continue 
            require jackpotAmount + 25 * 10^16 >= jackpotAmount
            jackpotAmount += 25 * 10^16
            call address(stor14.field_8) with:
               value 249 * 10^15 wei
                 gas 0 wei
            require ext_call.success
            call msg.sender with:
               value 10^15 wei
                 gas 0 wei
            gameNumber++
            gameStarted = block.number
        idx = idx + 1
        continue 
    call msg.sender with:
       value msg.value % 10^17 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
