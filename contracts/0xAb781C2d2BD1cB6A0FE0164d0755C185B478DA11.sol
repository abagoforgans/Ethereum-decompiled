contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor0 = 422
    stor1 = 253
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[50 len 500]
}



// =====================  Runtime code  =====================


uint256 coinsFlipped;
uint256 won;
uint256 lost;
address stor3;
uint256 sub_463d1fca;
uint256 sub_46047050;
uint256 sub_21e1ba4e;

function won() payable {
    return won
}

function sub_21e1ba4e(?) payable {
    return sub_21e1ba4e
}

function lost() payable {
    return lost
}

function sub_46047050(?) payable {
    return sub_46047050
}

function sub_463d1fca(?) payable {
    return sub_463d1fca
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
    sub_463d1fca = msg.value
    sub_46047050 = gas_remaining
    sub_21e1ba4e = sha3(gas_remaining) + coinsFlipped % 10
    coinsFlipped++
    emit FlippedCoin(msg.sender, msg.value, coinsFlipped);
    if msg.value > 42 * 10^15:
        call msg.sender with:
           value msg.value - 10000 wei
             gas 0 wei
        won++
    else:
        if sha3(gas_remaining) + coinsFlipped % 10 >= 4:
            lost++
        else:
            call msg.sender with:
               value 2 * msg.value - 10000 wei
                 gas 0 wei
            won++
}



}
