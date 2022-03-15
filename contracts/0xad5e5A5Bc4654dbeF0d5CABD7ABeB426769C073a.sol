contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor7;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4 = 0
    stor1 = code.data[1118 len 32]
    stor2 = code.data[1150 len 32]
    if code.data[1182 len 32]:
        stor7 = code.data[1182 len 32]
    else:
        stor7 = 1
    stor5 = block.timestamp
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[127 len 991]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor7;

function _fallback() payable {
  stop
}

function setPrice(uint256 arg1) payable {
    if msg.sender == stor0:
        stor2 = arg1
}

function setDeposit(uint256 arg1) payable {
    if msg.sender == stor0:
        stor1 = arg1
}

function setTimeBlock(uint256 arg1) payable {
    if msg.sender == stor0:
        stor7 = arg1
}

function costs() payable {
    return ((stor7 * stor2) + (block.timestamp * stor2) - (stor5 * stor2) / stor7)
}

function sub_d686f9ee(?) payable {
    if msg.sender == stor0:
        if (stor7 * stor2) + (block.timestamp * stor2) - (stor5 * stor2) / stor7 > stor1:
            call stor0 with:
               value stor1 wei
                 gas 0 wei
            stor4 = 0
            address(stor3) = stor0
}

function open() payable {
    if msg.sender == stor0:
        stor4++
        emit Open()
    else:
        if msg.sender == address(stor3):
            stor4++
            emit Open()
        else:
            if stor4 > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if msg.value < stor1:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    stor4++
                    emit Open()
                    stor5 = block.timestamp
                    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
}

function close() payable {
    if stor4 != 0:
        if stor0 != msg.sender:
            if msg.sender == address(stor3):
                if (stor7 * stor2) + (block.timestamp * stor2) - (stor5 * stor2) / stor7 > stor1:
                    call stor0 with:
                       value stor1 wei
                         gas 0 wei
                else:
                    call address(stor3) with:
                       value stor1 - ((stor7 * stor2) + (block.timestamp * stor2) - (stor5 * stor2) / stor7) wei
                         gas 0 wei
                    call stor0 with:
                       value (stor7 * stor2) + (block.timestamp * stor2) - (stor5 * stor2) / stor7 wei
                         gas 0 wei
                stor4 = 0
                address(stor3) = stor0
                emit Close()
        else:
            if stor0 == address(stor3):
                stor4 = 0
                emit Close()
            else:
                if msg.sender == address(stor3):
                    if (stor7 * stor2) + (block.timestamp * stor2) - (stor5 * stor2) / stor7 > stor1:
                        call stor0 with:
                           value stor1 wei
                             gas 0 wei
                    else:
                        call address(stor3) with:
                           value stor1 - ((stor7 * stor2) + (block.timestamp * stor2) - (stor5 * stor2) / stor7) wei
                             gas 0 wei
                        call stor0 with:
                           value (stor7 * stor2) + (block.timestamp * stor2) - (stor5 * stor2) / stor7 wei
                             gas 0 wei
                    stor4 = 0
                    address(stor3) = stor0
                    emit Close()
}



}
