contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
uint256 stor6;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = code.data[2442 len 32]
    stor6 = block.timestamp + (60 * code.data[2474 len 32])
    return code.data[121 len 2321]
}



// =====================  Runtime code  =====================


const status = Array(len=76, data='Current bid: 'highestBid' ETH, T', 'otal bids: 'totalBids', Deadline', Mask(96, 160, ': 'deadline'') >> 160 >> 256, mem[384])


address beneficiaryAddress;
address bidderAddress;
uint256 reservePrice;
uint256 highestBid;
uint256 totalBids;
uint256 sub_a73ef121;
uint256 deadline;
array of struct bidders;

function deadline() payable {
    return deadline
}

function beneficiary() payable {
    return beneficiaryAddress
}

function totalBids() payable {
    return totalBids
}

function sub_a73ef121(?) payable {
    return sub_a73ef121
}

function bidders(uint256 arg1) payable {
    require arg1 < bidders.length
    return bidders[arg1].field_0, bidders[arg1].field_256
}

function highestBid() payable {
    return highestBid
}

function reservePrice() payable {
    return reservePrice
}

function bidder() payable {
    return bidderAddress
}

function checkGoalReached() payable {
    if block.timestamp < deadline:
    if highestBid >= reservePrice:
        call beneficiaryAddress with:
           value highestBid wei
             gas 0 wei
        emit FundTransfer(beneficiaryAddress, highestBid);
    selfdestruct(beneficiaryAddress)
}

function kill() payable {
    if beneficiaryAddress != msg.sender:
    selfdestruct(beneficiaryAddress)
}

function _fallback() payable {
    if msg.value <= highestBid:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        mem[320] = 0, mem[349 len 3]
        return Array(len=61, data='Bid rejected, please place a bid', ' higher than 'highestBid' ETH', mem[320])
    highestBid = msg.value
    bidders.length++
    if not bidders.length <= bidders.length + 1:
        idx = 2 * bidders.length + 1
        while 2 * bidders.length > idx:
            bidders[idx].field_0 = 0
            bidders[idx].field_256 = 0
            idx = idx + 1
            continue 
    require bidders.length < bidders.length
    bidders[bidders.length].field_0 = msg.sender or Mask(96, 160, bidders[bidders.length].field_0)
    bidders[bidders.length].field_256 = msg.value
    totalBids++
    if deadline > block.timestamp - (4 * 3600):
        deadline += 4 * 3600
    emit FundTransfer(msg.sender, msg.value);
    mem[384] = mem[403 len 13]
    return Array(len=45, data='Bid accepted, you are now the hi', 'ghest bidder!', mem[384])
}



}
