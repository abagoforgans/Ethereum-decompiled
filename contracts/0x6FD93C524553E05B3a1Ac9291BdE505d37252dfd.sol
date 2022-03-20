contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint128 stor4; offset 160
uint256 stor4;
address stor6;
uint256 stor7;
address stor8;
uint256 stor9;

function _fallback() payable {
    stor0 = 1
    stor1 = code.data[1059 len 32]
    uint256(stor4.field_0) = Mask(96, 0, stor4.field_160)
    stor2 = eth.balance(this.address)
    stor3 = code.data[1059 len 32] + block.timestamp
    stor6 = msg.sender
    stor7 = 0
    stor8 = msg.sender
    stor9 = 0
    return code.data[135 len 924]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor1;
uint256 auctionValue;
uint256 expiresAt;
address sellerAddress;
uint256 stor4;
address stor5;
uint256 stor5;
address highBidderAddress;
uint256 stor6;
uint256 sub_b6cc986f;
address sub_56bff0f8Address;
uint256 sub_a5cf651f;

function seller() payable {
    return address(sellerAddress)
}

function auctionValue() payable {
    return auctionValue
}

function highBidder() payable {
    return address(highBidderAddress)
}

function sub_56bff0f8(?) payable {
    return sub_56bff0f8Address
}

function expiresAt() payable {
    return expiresAt
}

function sub_a5cf651f(?) payable {
    return sub_a5cf651f
}

function sub_b6cc986f(?) payable {
    return sub_b6cc986f
}

function bid() payable {
    if block.timestamp > expiresAt:
        if block.timestamp >= expiresAt:
            call address(highBidderAddress) with:
               value auctionValue wei
                 gas 0 wei
            if not stor0:
                selfdestruct(address(sellerAddress))
            call address(sellerAddress) with:
               value 10 * eth.balance(this.address) / 100 wei
                 gas 0 wei
            auctionValue = eth.balance(this.address)
            expiresAt = block.timestamp + stor1
            address(highBidderAddress) = address(sellerAddress)
            sub_b6cc986f = 0
            sub_56bff0f8Address = address(sellerAddress)
            sub_a5cf651f = 0
    if address(sellerAddress) == msg.sender:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.sender == address(highBidderAddress):
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if msg.value < sub_b6cc986f:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                call sub_56bff0f8Address with:
                   value sub_a5cf651f wei
                     gas 0 wei
                sub_56bff0f8Address = address(highBidderAddress)
                sub_a5cf651f = sub_b6cc986f
                uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
                sub_b6cc986f = msg.value
                if block.timestamp + 300 > expiresAt:
                    expiresAt = block.timestamp + 300
}

function endAuction() payable {
    if block.timestamp >= expiresAt:
        call address(highBidderAddress) with:
           value auctionValue wei
             gas 0 wei
        if not stor0:
            selfdestruct(address(sellerAddress))
        call address(sellerAddress) with:
           value 10 * eth.balance(this.address) / 100 wei
             gas 0 wei
        auctionValue = eth.balance(this.address)
        expiresAt = block.timestamp + stor1
        address(highBidderAddress) = address(sellerAddress)
        sub_b6cc986f = 0
        sub_56bff0f8Address = address(sellerAddress)
        sub_a5cf651f = 0
}

function _fallback() payable {
    if block.timestamp > expiresAt:
        if block.timestamp >= expiresAt:
            call address(highBidderAddress) with:
               value auctionValue wei
                 gas 0 wei
            if not stor0:
                selfdestruct(address(sellerAddress))
            call address(sellerAddress) with:
               value 10 * eth.balance(this.address) / 100 wei
                 gas 0 wei
            auctionValue = eth.balance(this.address)
            expiresAt = block.timestamp + stor1
            address(highBidderAddress) = address(sellerAddress)
            sub_b6cc986f = 0
            sub_56bff0f8Address = address(sellerAddress)
            sub_a5cf651f = 0
    if address(sellerAddress) == msg.sender:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.sender == address(highBidderAddress):
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if msg.value < sub_b6cc986f:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                call sub_56bff0f8Address with:
                   value sub_a5cf651f wei
                     gas 0 wei
                sub_56bff0f8Address = address(highBidderAddress)
                sub_a5cf651f = sub_b6cc986f
                uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
                sub_b6cc986f = msg.value
                if block.timestamp + 300 > expiresAt:
                    expiresAt = block.timestamp + 300
}

function lastAuction() payable {
    if msg.sender == address(sellerAddress):
        stor0 = 0
}

function acceptTransfer() payable {
    if msg.sender == address(stor5):
        uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
}

function transferOwnership(address arg1) payable {
    if msg.sender == address(sellerAddress):
        uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
}



}
