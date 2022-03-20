contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = 422
    stor1 = 253
    stor2 = 169
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[55 len 378]
}



// =====================  Runtime code  =====================


uint256 coinsFlipped;
uint256 won;
uint256 lost;
address stor3;

function won() payable {
    return won
}

function lost() payable {
    return lost
}

function coinsFlipped() payable {
    return coinsFlipped
}

function terminate() payable {
    require msg.sender == stor3
    selfdestruct(stor3)
}

function _fallback() payable {
  stop
}

function flipTheCoinAndWin() payable {
    coinsFlipped++
    emit FlippedCoin(address(msg.sender), msg.value, coinsFlipped);
    if msg.value > 42 * 10^15:
        call msg.sender with:
           value msg.value - 100000 wei
             gas 0 wei
        won++
    else:
        if sha3(gas_remaining) + coinsFlipped % 10 >= 4:
            lost++
        else:
            call msg.sender with:
               value 2 * msg.value - 100000 wei
                 gas 0 wei
            won++
}



}
