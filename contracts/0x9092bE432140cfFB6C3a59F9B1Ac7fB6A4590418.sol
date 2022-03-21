contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[1819 len 32]
    stor2 = 0
    return code.data[127 len 1692]
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
uint256 stor3;
mapping of uint256 sub_4bf71729;
mapping of uint8 guess;

function sub_4bf71729(?) payable {
    return sub_4bf71729[address(msg.sender)]
}

function getTicketPrice() payable {
    return ticketPrice
}

function getGuess() payable {
    return uint256(guess[address(msg.sender)])
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function getJackpot() payable {
    return (100 * 10^6 * ticketPrice)
}

function _fallback() payable {
    sub_4bf71729[address(msg.sender)] += msg.value
}

function sub_46d59b9b(?) payable {
    if msg.sender == stor0:
        if stor2 != 1:
            if arg1 >= 1:
                if arg1 <= 16777215:
                    stor2 = 1
                    uint256(stor3) = arg1
}

function makeGuess(uint256 arg1) payable {
    if stor2 != 1:
        if arg1 >= 1:
            if arg1 <= 16777215:
                if not uint256(guess[address(msg.sender)]):
                    if sub_4bf71729[address(msg.sender)] == ticketPrice:
                        uint256(guess[address(msg.sender)]) = arg1
}

function redeemTicket() payable {
    if stor2:
        if uint256(guess[address(msg.sender)]):
            if uint256(guess[address(msg.sender)]) == uint256(stor3):
                call msg.sender with:
                   value 100 * 10^6 * ticketPrice wei
                     gas 0 wei
            else:
                if guess[address(msg.sender)] % 1048576 == stor3 % 1048576:
                    call msg.sender with:
                       value 10^6 * ticketPrice wei
                         gas 0 wei
                else:
                    if uint16(guess[address(msg.sender)]) == uint16(stor3):
                        call msg.sender with:
                           value 10000 * ticketPrice wei
                             gas 0 wei
                    else:
                        if guess[address(msg.sender)] % 4096 == stor3 % 4096:
                            call msg.sender with:
                               value 100 * ticketPrice wei
                                 gas 0 wei
                        else:
                            if uint8(guess[address(msg.sender)]) == uint8(stor3):
                                call msg.sender with:
                                   value 10 * ticketPrice wei
                                     gas 0 wei
                            else:
                                if guess[address(msg.sender)] % 16 != stor3 % 16:
                                    call msg.sender with:
                                         gas 0 wei
                                else:
                                    call msg.sender with:
                                       value ticketPrice wei
                                         gas 0 wei
            uint256(guess[address(msg.sender)]) = 0
}



}
