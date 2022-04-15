contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
array of struct stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    mem[96] = 4 * 10^16
    mem[128] = 2 * 10^16
    mem[160] = 10^16
    mem[192] = 5 * 10^15
    mem[224] = 5 * 10^15
    mem[256] = 5 * 10^15
    mem[288] = 5 * 10^15
    mem[320] = 5 * 10^15
    stor3.length = 8
    s = 0
    idx = 96
    while 352 > idx:
        stor3[s].field_0 = mem[idx + 25 len 7]
        stor3[s].field_56 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while stor3.length > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    address(stor0.field_0) = msg.sender
    create contract with 0 wei
                    code: code.data[5317 len 5149]
    require create.new_address
    stor1 = address(create.new_address)
    stor6 = code.data[10478 len 20]
    stor4 = 0
    stor5 = 0
    stor7 = 0
    return code.data[692 len 4625]
}



// =====================  Runtime code  =====================


const PRICE = 10^16

const JACKPOT_SIZE = 10^6

const SIZE = 10


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;
mapping of address stor2;
array of uint256 stor3;
uint256 jackpot;
uint256 gameNumber;
address stor6;
uint256 stor7;

function paused() {
    return bool(uint8(stor0.field_160))
}

function jackpot() {
    return jackpot
}

function owner() {
    return owner
}

function gameNumber() {
    return gameNumber
}

function token() {
    return tokenAddress
}

function destroy() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x83197ef0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    selfdestruct(owner)
}

function changeWallet(address arg1) {
    require msg.sender == owner
    require arg1
    stor6 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
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

function refundAll() {
    require msg.sender == owner
    if uint8(var12003) < stor7 % 10:
        call stor2[stor5][var12003 << 248] with:
           value 10^16 wei
             gas 0 wei
        require ext_call.success
        emit Refunded(10^16, msg.sender);
        idx = var12003
        while uint8(idx + 1) < stor7 % 10:
            mem[0] = uint8(idx + 1)
            mem[32] = sha3(gameNumber, 2)
            call stor2[stor5][idx + 1 << 248] with:
               value 10^16 wei
                 gas 0 wei
            require ext_call.success
            mem[96] = 10^16
            emit Refunded(10^16, msg.sender);
            idx = idx + 1
            continue 
    stor7 -= stor7 % 10
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require msg.sender
    require msg.value >= 10^16
    require msg.value % 10^16 <= msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (msg.value % 10^16) / 10^16
    require ext_call.success
    idx = 0
    while idx < msg.value - (msg.value % 10^16) / 10^16:
        mem[0] = stor7 % 10
        mem[32] = sha3(stor7 / 10, 2)
        stor2[stor7 / 10][stor7 % 10] = msg.sender
        emit AnotherParticipant(msg.sender, stor7 / 10, stor7 % 10);
        stor7++
        if not stor7 + 1 % 10:
            mem[96] = block.hash(block.number - 1)
            mem[128] = block.hash(block.number - 10)
            s = 0
            t = sha3(block.hash(block.number - 1), block.hash(block.number - 10)) % 10
            while uint8(s) < stor3.length:
                if sha3(block.hash(block.number - 1), block.hash(block.number - 10)) % 10 == sha3(block.hash(block.number - 1), block.hash(block.number - 10)) % 10^6:
                    if not uint8(s):
                        call stor2[stor5][t] with:
                           value jackpot wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit JackpotAwarded(gameNumber, stor2[stor5][t], jackpot);
                        jackpot = 0
                require uint8(s) < stor3.length
                call stor2[stor5][t % 10] with:
                   value stor3[uint8(s)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require uint8(s) < stor3.length
                mem[0] = t % 10
                mem[32] = sha3(gameNumber, 2)
                emit PrizeAwarded(gameNumber, stor2[stor5][t % 10], stor3[uint8(s)]);
                s = s + 1
                t = t + 1
                continue 
            require jackpot + 25 * 10^14 >= jackpot
            jackpot += 25 * 10^14
            call stor6 with:
               value 249 * 10^13 wei
                 gas 0 wei
            require ext_call.success
            call msg.sender with:
               value 10^13 wei
                 gas 0 wei
            gameNumber++
        idx = idx + 1
        continue 
    call msg.sender with:
       value msg.value % 10^16 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTicketsFor(address arg1) payable {
    require not uint8(stor0.field_160)
    require arg1
    require msg.value >= 10^16
    require msg.value % 10^16 <= msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value - (msg.value % 10^16) / 10^16
    require ext_call.success
    idx = 0
    while idx < msg.value - (msg.value % 10^16) / 10^16:
        mem[0] = stor7 % 10
        mem[32] = sha3(stor7 / 10, 2)
        stor2[stor7 / 10][stor7 % 10] = arg1
        emit AnotherParticipant(arg1, stor7 / 10, stor7 % 10);
        stor7++
        if not stor7 + 1 % 10:
            mem[96] = block.hash(block.number - 1)
            mem[128] = block.hash(block.number - 10)
            s = 0
            t = sha3(block.hash(block.number - 1), block.hash(block.number - 10)) % 10
            while uint8(s) < stor3.length:
                if sha3(block.hash(block.number - 1), block.hash(block.number - 10)) % 10 == sha3(block.hash(block.number - 1), block.hash(block.number - 10)) % 10^6:
                    if not uint8(s):
                        call stor2[stor5][t] with:
                           value jackpot wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit JackpotAwarded(gameNumber, stor2[stor5][t], jackpot);
                        jackpot = 0
                require uint8(s) < stor3.length
                call stor2[stor5][t % 10] with:
                   value stor3[uint8(s)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require uint8(s) < stor3.length
                mem[0] = t % 10
                mem[32] = sha3(gameNumber, 2)
                emit PrizeAwarded(gameNumber, stor2[stor5][t % 10], stor3[uint8(s)]);
                s = s + 1
                t = t + 1
                continue 
            require jackpot + 25 * 10^14 >= jackpot
            jackpot += 25 * 10^14
            call stor6 with:
               value 249 * 10^13 wei
                 gas 0 wei
            require ext_call.success
            call msg.sender with:
               value 10^13 wei
                 gas 0 wei
            gameNumber++
        idx = idx + 1
        continue 
    call msg.sender with:
       value msg.value % 10^16 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
