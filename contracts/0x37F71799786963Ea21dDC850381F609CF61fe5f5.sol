contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[3959 len 32]
    stor2 = 0
    return code.data[127 len 3832]
}



// =====================  Runtime code  =====================


address stor0;
uint256 ticketPrice;
uint8 stor2;
uint8 stor3;
uint8 stor3;
uint16 stor3;
uint16 stor3;
uint32 stor3;
uint256 result;
mapping of uint256 sub_365fd982;
mapping of uint8 sub_e43e7476;

function sub_365fd982(?) payable {
    return sub_365fd982[address(msg.sender)]
}

function getTicketPrice() payable {
    return ticketPrice
}

function getResult() payable {
    return uint256(result)
}

function sub_e43e7476(?) payable {
    return uint256(sub_e43e7476[address(msg.sender)])
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function getJackpot() payable {
    return (100 * 10^6 * ticketPrice)
}

function _fallback() payable {
    sub_365fd982[address(msg.sender)] += msg.value
}

function sub_46d59b9b(?) payable {
    if stor0 != msg.sender:
        mem[320] = mem[347 len 5]
        return Array(len=37, data='Only the owner can finish the lo', 'ttery', mem[320])
    if stor2 == 1:
        mem[320] = mem[346 len 6]
        return Array(len=38, data='Sorry, the lottery is already fi', 'nished', mem[320])
    if arg1 < 1:
        return 'Sorry, the lottery result must satisify: 1 <= result <= 16777215'
    if arg1 > 16777215:
        return 'Sorry, the lottery result must satisify: 1 <= result <= 16777215'
    stor2 = 1
    uint256(result) = arg1
    mem[256] = Mask(16, 120, 'Lottery finished!') >> 120, mem[273 len 15]
    return Array(len=17, data=mem[256])
}

function makeGuess(uint256 arg1) payable {
    if stor2 == 1:
        mem[320] = mem[342 len 10]
        return Array(len=42, data='Sorry, the lottery has been alre', 'ady closed', mem[320])
    if arg1 < 1:
        mem[320] = 0, mem[344 len 8]
        return Array(len=56, data='Wrong guess. Please, make a gues', 's between 1 and 16777215', mem[320])
    if arg1 > 16777215:
        mem[320] = 0, mem[344 len 8]
        return Array(len=56, data='Wrong guess. Please, make a gues', 's between 1 and 16777215', mem[320])
    if uint256(sub_e43e7476[address(msg.sender)]):
        mem[320] = mem[347 len 5]
        return Array(len=37, data='Only one guess per lottery is al', 'lowed', mem[320])
    if sub_365fd982[address(msg.sender)] < ticketPrice:
        mem[384] = mem[402 len 14]
        return Array(len=78, data='You must send at least the ticke', 't price in order to participate ', 'in the lottery' >> 256, mem[384]), 
    uint256(sub_e43e7476[address(msg.sender)]) = arg1
    mem[320] = 0, mem[343 len 9]
    return Array(len=55, data='Congratulations, your guess has ', 'been stored. Good luck!', mem[320])
}

function redeemTicket() payable {
    if not stor2:
        mem[320] = 0, mem[349 len 3]
        return Array(len=61, data='Please, wait until the lottery e', 'nd is anounced in the website', mem[320])
    if not uint256(sub_e43e7476[address(msg.sender)]):
        mem[320] = 0, mem[342 len 10]
        return Array(len=54, data='Sorry, but you have not guesses ', 'in the current lottery', mem[320])
    uint256(sub_e43e7476[address(msg.sender)]) = 0
    if uint256(sub_e43e7476[address(msg.sender)]) == uint256(result):
        call msg.sender with:
           value 100 * 10^6 * ticketPrice wei
             gas 0 wei
        mem[256] = Mask(112, 72, '!!You won the Jackpot!!') >> 72, mem[279 len 9]
        return Array(len=23, data=mem[256])
    if sub_e43e7476[address(msg.sender)] % 1048576 == stor3 % 1048576:
        call msg.sender with:
           value 10^6 * ticketPrice wei
             gas 0 wei
        mem[256] = Mask(160, 48, '!!You match 4 characters!!') >> 48, mem[282 len 6]
        return Array(len=26, data=mem[256])
    if uint16(sub_e43e7476[address(msg.sender)]) == uint16(stor3):
        call msg.sender with:
           value 10000 * ticketPrice wei
             gas 0 wei
        mem[256] = Mask(160, 48, '!!You match 4 characters!!') >> 48, mem[282 len 6]
        return Array(len=26, data=mem[256])
    if sub_e43e7476[address(msg.sender)] % 4096 == stor3 % 4096:
        call msg.sender with:
           value 100 * ticketPrice wei
             gas 0 wei
        mem[256] = Mask(160, 48, '!!You match 3 characters!!') >> 48, mem[282 len 6]
        return Array(len=26, data=mem[256])
    if uint8(sub_e43e7476[address(msg.sender)]) == uint8(stor3):
        call msg.sender with:
           value 10 * ticketPrice wei
             gas 0 wei
        mem[256] = Mask(160, 48, '!!You match 2 characters!!') >> 48, mem[282 len 6]
        return Array(len=26, data=mem[256])
    if sub_e43e7476[address(msg.sender)] % 16 != stor3 % 16:
        return ''
    call msg.sender with:
       value ticketPrice wei
         gas 0 wei
    mem[256] = Mask(144, 56, '!!You match 1 character!!') >> 56, mem[281 len 7]
    return Array(len=25, data=mem[256])
}



}
