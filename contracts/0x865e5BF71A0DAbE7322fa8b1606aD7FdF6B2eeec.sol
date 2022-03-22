contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 557]




// =====================  Runtime code  =====================


address sub_bcffcf41Address;
uint256 stor0;
uint256 betAmount;

function sub_bcffcf41(?) payable {
    return address(sub_bcffcf41Address)
}

function betAmount() payable {
    return betAmount
}

function _fallback() payable {
  stop
}

function returnBet() payable {
    require address(sub_bcffcf41Address) == msg.sender
    require betAmount != 0
    call address(sub_bcffcf41Address) with:
       value betAmount wei
         gas 0 wei
}

function bet() payable {
    require msg.value != 0
    if 0 == address(sub_bcffcf41Address):
        uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
        betAmount = msg.value
    else:
        require msg.value >= betAmount
        if bool(block.hash(block.number - 1)):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 0 wei
            emit payout(eth.balance(this.address), msg.sender);
        else:
            if msg.value > betAmount:
                call msg.sender with:
                   value msg.value - betAmount wei
                     gas 0 wei
            call address(sub_bcffcf41Address) with:
               value eth.balance(this.address) wei
                 gas 0 wei
            emit payout(eth.balance(this.address), address(sub_bcffcf41Address));
        address(sub_bcffcf41Address) = 0
        betAmount = 0
}



}
