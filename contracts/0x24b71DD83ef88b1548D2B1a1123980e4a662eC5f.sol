contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
address stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = 10
    stor1 = 10^18
    stor2 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[73 len 806]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
address first_playerAddress;
uint256 stor2;
address sub_d960f501Address;
uint256 stor3;
address stor4;

function first_player() payable {
    return address(first_playerAddress)
}

function sub_d960f501(?) payable {
    return address(sub_d960f501Address)
}

function _fallback() payable {
    if msg.value < stor0 * stor1:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value > 105 * stor1 * stor0 / 100:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if 0 == address(first_playerAddress):
                uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            else:
                if 0 == address(sub_d960f501Address):
                    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
                else:
                    hash = sha256hash(block.coinbase, block.timestamp, block.hash(block.number)) 
                    require sha256hash.result
                    if not hash % 3:
                        call address(first_playerAddress) with:
                           value 145 * stor1 * stor0 / 100 wei
                             gas 0 wei
                        call address(sub_d960f501Address) with:
                           value 145 * stor1 * stor0 / 100 wei
                             gas 0 wei
                        call stor4 with:
                           value 10 * stor1 * stor0 / 100 wei
                             gas 0 wei
                        address(first_playerAddress) = 0
                        address(sub_d960f501Address) = 0
                    else:
                        if 1 == hash % 3:
                            call address(sub_d960f501Address) with:
                               value 145 * stor0 * stor1 / 100 wei
                                 gas 0 wei
                            call msg.sender with:
                               value 145 * stor0 * stor1 / 100 wei
                                 gas 0 wei
                            call stor4 with:
                               value 10 * stor1 * stor0 / 100 wei
                                 gas 0 wei
                            address(first_playerAddress) = 0
                            address(sub_d960f501Address) = 0
                        else:
                            if 2 == hash % 3:
                                call msg.sender with:
                                   value 145 * stor0 * stor1 / 100 wei
                                     gas 0 wei
                                call address(first_playerAddress) with:
                                   value 145 * stor0 * stor1 / 100 wei
                                     gas 0 wei
                                call stor4 with:
                                   value 10 * stor1 * stor0 / 100 wei
                                     gas 0 wei
                                address(first_playerAddress) = 0
                                address(sub_d960f501Address) = 0
}



}
