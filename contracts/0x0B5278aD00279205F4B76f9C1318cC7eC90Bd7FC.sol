contract main {


// =======================  Init code  ======================


uint8 stor2;
uint256 stor5;

function _fallback() payable {
    stor2 = 255
    stor5 = msg.sender or Mask(96, 160, stor5)
    emit Deployed()
    return code.data[87 len 677]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint8 stor2;
uint256 stor3;
array of struct stor4;
address stor5;

function Payout() payable {
    require stor2 != 255
    require stor2 < 2
    stor4[address(msg.sender)][stor2].field_0 = 0
    stor2 -= stor4[address(msg.sender)][stor2].field_0
    call msg.sender with:
       value 2 * stor4[address(msg.sender)][stor2].field_0 wei
         gas 0 wei
    require ext_call.success
    require stor2 < 2
    if stor2:
        if block.number - stor3 <= 11520:
    selfdestruct(stor5)
}

function _fallback() payable {
  stop
}

function BetOnRed() payable {
    require stor2 == 255
    if 0 == stor3:
        stor3 = block.number
    stor0 += msg.value
    stor4[address(msg.sender)].field_0 += msg.value
    if block.number - stor3 <= 480:
        emit 0x977b8591: stor0, stor1, -block.number + stor3 + 480
    else:
        if stor1 == stor0:
            if block.number - stor3 <= 480:
                emit 0x977b8591: stor0, stor1, -block.number + stor3 + 480
            else:
                emit 0x977b8591: stor0, stor1, 0
        else:
            if stor1 >= stor0:
                stor2 = 0
            else:
                stor2 = 1
            emit 0x62053218: stor0, stor1, stor2
}

function BetOnBlue() payable {
    require stor2 == 255
    if 0 == stor3:
        stor3 = block.number
    stor1 += msg.value
    stor4[address(msg.sender)].field_256 += msg.value
    if block.number - stor3 <= 480:
        emit 0x977b8591: stor0, stor1, -block.number + stor3 + 480
    else:
        if stor1 == stor0:
            if block.number - stor3 <= 480:
                emit 0x977b8591: stor0, stor1, -block.number + stor3 + 480
            else:
                emit 0x977b8591: stor0, stor1, 0
        else:
            if stor1 >= stor0:
                stor2 = 0
            else:
                stor2 = 1
            emit 0x62053218: stor0, stor1, stor2
}



}
