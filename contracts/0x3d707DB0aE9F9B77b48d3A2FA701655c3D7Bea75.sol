contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = block.timestamp
    stor3 = code.data[1262 len 32]
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[81 len 1181]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
address stor1;
uint256 auctionStart;
uint256 biddingTime;
address highestBidderAddress;
uint256 stor4;
array of uint256 sub_73344963;
uint256 highestBid;
uint256 sub_064ca444;
uint8 stor8;

function sub_064ca444(?) payable {
    return sub_064ca444
}

function beneficiary() payable {
    return beneficiaryAddress
}

function auctionStart() payable {
    return auctionStart
}

function sub_73344963(?) payable {
    return sub_73344963[0 len sub_73344963.length]
}

function highestBidder() payable {
    return address(highestBidderAddress)
}

function biddingTime() payable {
    return biddingTime
}

function highestBid() payable {
    return highestBid
}

function kill() payable {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
    revert 
}

function auctionEnd() payable {
    require msg.sender == stor1
    require block.timestamp > auctionStart + biddingTime
    require not stor8
    emit AuctionEnded(address(highestBidderAddress), highestBid);
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    stor8 = 1
}

function bid(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require block.timestamp <= auctionStart + biddingTime
    require msg.value > highestBid
    if address(highestBidderAddress) != 0:
        call address(highestBidderAddress) with:
           value highestBid wei
             gas 0 wei
    uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
    sub_73344963.length = (2 * arg1.length) + 1
    s = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
    while (sub_73344963.length + 31 / 32) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    highestBid = msg.value
    sub_064ca444 = msg.value / 66 * 10^13
    emit HighestBidIncreased(msg.sender, msg.value);
}



}
