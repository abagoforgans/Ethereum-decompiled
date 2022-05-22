contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
address owner;
address tokenContractAddress;
uint256 feePercent;
mapping of struct auction;
uint256 releaseTokensSaleCount;
uint256 auctionPriceLimit;

function isCurioAuction() {
    return bool(uint8(stor0.field_168))
}

function tokenContract() {
    return tokenContractAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function getAuction(uint256 arg1) {
    require auction[arg1].field_576 > 0
    return auction[arg1].field_0, 
           auction[arg1].field_256,
           auction[arg1].field_256,
           auction[arg1].field_512,
           auction[arg1].field_576
}

function auctionPriceLimit() {
    return auctionPriceLimit
}

function feePercent() {
    return feePercent
}

function owner() {
    return owner
}

function releaseTokensSaleCount() {
    return releaseTokensSaleCount
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAuctionPriceLimit(uint256 arg1) {
    if owner != msg.sender:
        require tokenContractAddress == msg.sender
    require arg1 == uint128(arg1)
    auctionPriceLimit = arg1
}

function withdrawBalance() {
    if owner != msg.sender:
        require tokenContractAddress == msg.sender
    call tokenContractAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function cancelAuction(uint256 arg1) {
    require auction[arg1].field_576 > 0
    require auction[arg1].field_0 == msg.sender
    auction[arg1].field_0 = 0
    auction[arg1].field_256 = 0
    auction[arg1].field_512 = 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args auction[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(arg1);
}

function cancelAuctionWhenPaused(uint256 arg1) {
    require uint8(stor0.field_160)
    require msg.sender == owner
    require auction[arg1].field_576 > 0
    auction[arg1].field_0 = 0
    auction[arg1].field_256 = 0
    auction[arg1].field_512 = 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args auction[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(arg1);
}

function getCurrentPrice(uint256 arg1) {
    require auction[arg1].field_576 > 0
    if block.timestamp <= auction[arg1].field_576:
        if 0 >= auction[arg1].field_512:
            return auction[arg1].field_384
        if auction[arg1].field_512:
            return (auction[arg1].field_256 + (0 / auction[arg1].field_512))
    else:
        if block.timestamp - auction[arg1].field_576 >= auction[arg1].field_512:
            return auction[arg1].field_384
        if auction[arg1].field_512:
            return (auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512))
    ('iszero', ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'auction', 3)))))
    revert
}

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require not uint8(stor0.field_160)
    require arg2 == uint128(arg2)
    require arg2 < auctionPriceLimit
    require arg3 == uint128(arg3)
    require arg3 < auctionPriceLimit
    require arg4 == uint64(arg4)
    require msg.sender == tokenContractAddress
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg5), this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require uint64(arg4) >= 60
    auction[arg1].field_0 = arg5
    auction[arg1].field_256 = uint128(arg2)
    auction[arg1].field_384 = uint128(arg3)
    auction[arg1].field_512 = uint64(arg4)
    auction[arg1].field_576 = uint64(block.timestamp)
    emit AuctionCreated(0, arg3 << 128, uint64(arg4), arg1);
}

function bid(uint256 arg1) payable {
    require not uint8(stor0.field_160)
    require auction[arg1].field_576 > 0
    if block.timestamp <= auction[arg1].field_576:
        if 0 >= auction[arg1].field_512:
            require msg.value >= auction[arg1].field_384
            auction[arg1].field_0 = 0
            auction[arg1].field_256 = 0
            auction[arg1].field_512 = 0
            if auction[arg1].field_384 <= 0:
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_384 - (auction[arg1].field_384 * feePercent / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(auction[arg1].field_384, arg1, msg.sender);
        else:
            require auction[arg1].field_512
            require msg.value >= auction[arg1].field_256 + (0 / auction[arg1].field_512)
            auction[arg1].field_0 = 0
            auction[arg1].field_256 = 0
            auction[arg1].field_512 = 0
            if auction[arg1].field_256 + (0 / auction[arg1].field_512) <= 0:
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - (0 / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_256 + (0 / auction[arg1].field_512) - ((auction[arg1].field_256 * feePercent) + (0 / auction[arg1].field_512 * feePercent) / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - (0 / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful((auction[arg1].field_256 + (0 / auction[arg1].field_512)), arg1, msg.sender);
    else:
        if block.timestamp - auction[arg1].field_576 >= auction[arg1].field_512:
            require msg.value >= auction[arg1].field_384
            auction[arg1].field_0 = 0
            auction[arg1].field_256 = 0
            auction[arg1].field_512 = 0
            if auction[arg1].field_384 <= 0:
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_384 - (auction[arg1].field_384 * feePercent / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(auction[arg1].field_384, arg1, msg.sender);
        else:
            require auction[arg1].field_512
            require msg.value >= auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512)
            auction[arg1].field_0 = 0
            auction[arg1].field_256 = 0
            auction[arg1].field_512 = 0
            if auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) <= 0:
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) - ((auction[arg1].field_256 * feePercent) + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512 * feePercent) / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful((auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512)), arg1, msg.sender);
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if tokenContractAddress == auction[arg1].field_0:
        releaseTokensSaleCount++
}



}
