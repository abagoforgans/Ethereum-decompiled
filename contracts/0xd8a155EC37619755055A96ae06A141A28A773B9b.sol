contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[832 len 32]
    return code.data[55 len 777]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
address highestBidderAddress;
uint256 stor1;
uint256 highestBid;
array of uint256 subject;
uint8 stor4;

function subject() payable {
    return subject[0 len subject.length]
}

function beneficiary() payable {
    return beneficiaryAddress
}

function highestBidder() payable {
    return address(highestBidderAddress)
}

function highestBid() payable {
    return highestBid
}

function _fallback() payable {
    revert 
}

function auctionEnd() payable {
    emit AuctionEnded(address(highestBidderAddress), highestBid);
    emit eth.balance(this.address)
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    stor4 = 1
}

function bid() payable {
    require msg.value > highestBid
    if address(highestBidderAddress) != 0:
        call address(highestBidderAddress) with:
           value highestBid wei
             gas 0 wei
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    highestBid = msg.value
    emit HighestBidIncreased(msg.sender, msg.value);
}



}
