contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[1599 len 32]
    stor2 = 0
    return code.data[127 len 1472]
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
mapping of uint8 stor4;

function getTicketPrice() payable {
    return ticketPrice
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getJackpot() payable {
    return (100 * 10^6 * ticketPrice)
}

function buyTicket(uint256 arg1) payable {
    require stor2 != 1
    require msg.value >= ticketPrice
    require arg1 >= 1
    require arg1 <= 16777215
    require not uint256(stor4[address(msg.sender)])
    uint256(stor4[address(msg.sender)]) = arg1
    return 1
}

function finish(uint256 arg1) payable {
    if msg.sender == stor0:
        if stor2 != 1:
            if arg1 >= 1:
                if arg1 <= 16777215:
                    stor2 = 1
                    uint256(stor3) = arg1
                    return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function redeemTicket() payable {
    if not stor2:
        return 0
    if not uint256(stor4[address(msg.sender)]):
        return 0
    if uint256(stor4[address(msg.sender)]) == uint256(stor3):
        call msg.sender with:
           value 100 * 10^6 * ticketPrice wei
             gas 0 wei
    else:
        if stor4[address(msg.sender)] % 1048576 == stor3 % 1048576:
            call msg.sender with:
               value 10^6 * ticketPrice wei
                 gas 0 wei
        else:
            if uint16(stor4[address(msg.sender)]) == uint16(stor3):
                call msg.sender with:
                   value 10000 * ticketPrice wei
                     gas 0 wei
            else:
                if stor4[address(msg.sender)] % 4096 == stor3 % 4096:
                    call msg.sender with:
                       value 100 * ticketPrice wei
                         gas 0 wei
                else:
                    if uint8(stor4[address(msg.sender)]) == uint8(stor3):
                        call msg.sender with:
                           value 10 * ticketPrice wei
                             gas 0 wei
                    else:
                        if stor4[address(msg.sender)] % 16 != stor3 % 16:
                            call msg.sender with:
                                 gas 0 wei
                        else:
                            call msg.sender with:
                               value ticketPrice wei
                                 gas 0 wei
    uint256(stor4[address(msg.sender)]) = 0
    return 1
}



}
