contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address nonFungibleContractAddress;
uint256 ownerCut;
mapping of struct auction;
uint8 stor4;
uint256 gen0SaleCount;
array of uint256 lastGen0SalePrices;
address gen0SellerAddress;
uint256 stor11;

function lastGen0SalePrices(uint256 arg1) {
    require arg1 < 5
    return lastGen0SalePrices[arg1]
}

function paused() {
    return bool(stor0)
}

function getAuction(uint256 arg1) {
    require 0 < auction[arg1].field_576
    require auction[arg1].field_576 < block.timestamp
    return auction[arg1].field_0, 
           auction[arg1].field_256,
           auction[arg1].field_256,
           auction[arg1].field_512,
           auction[arg1].field_576
}

function ownerCut() {
    return ownerCut
}

function isSaleClockAuction() {
    return bool(stor4)
}

function gen0SaleCount() {
    return gen0SaleCount
}

function owner() {
    return owner
}

function gen0SellerAddress() {
    return address(gen0SellerAddress)
}

function getSeller(uint256 arg1) {
    return auction[arg1].field_0
}

function nonFungibleContract() {
    return nonFungibleContractAddress
}

function _fallback() payable {
    revert
}

function computeCut(uint256 arg1) {
    return (arg1 * ownerCut / 10000)
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function setGen0SellerAddress(address arg1) {
    require msg.sender == nonFungibleContractAddress
    address(gen0SellerAddress) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function averageGen0SalePrice() {
    idx = 0
    s = 0
    while idx < 5:
        idx = idx + 1
        s = lastGen0SalePrices[idx] + s
        continue 
    return (5 * uint256(stor11) / 5)
}

function withdrawBalance() {
    if owner != msg.sender:
        require nonFungibleContractAddress == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function cancelAuctionByAdmin(uint256 arg1) {
    require msg.sender == owner
    require 0 < auction[arg1].field_576
    require auction[arg1].field_576 < block.timestamp
    auction[arg1].field_0 = 0
    auction[arg1].field_256 = 0
    auction[arg1].field_512 = 0
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args auction[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(arg1);
}

function cancelAuction(uint256 arg1) {
    require 0 < auction[arg1].field_576
    require auction[arg1].field_576 < block.timestamp
    require auction[arg1].field_0 == msg.sender
    auction[arg1].field_0 = 0
    auction[arg1].field_256 = 0
    auction[arg1].field_512 = 0
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args auction[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(arg1);
}

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint64 arg6) {
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    require arg4 == uint64(arg4)
    require msg.sender == nonFungibleContractAddress
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg5), this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require uint64(arg4) >= 60
    auction[arg1].field_0 = arg5
    auction[arg1].field_256 = uint128(arg2)
    auction[arg1].field_384 = uint128(arg3)
    auction[arg1].field_512 = uint64(arg4)
    if arg6:
        auction[arg1].field_576 = arg6
    else:
        auction[arg1].field_576 = uint64(block.timestamp)
    emit AuctionCreated(arg1, arg2 << 128, arg3 << 128, uint64(arg4));
}

function getCurrentPrice(uint256 arg1) {
    require 0 < auction[arg1].field_576
    require auction[arg1].field_576 < block.timestamp
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

function bid(uint256 arg1, address arg2) payable {
    require not stor0
    require 0 < auction[arg1].field_576
    require auction[arg1].field_576 < block.timestamp
    if block.timestamp <= auction[arg1].field_576:
        if 0 >= auction[arg1].field_512:
            require msg.value >= auction[arg1].field_384
            auction[arg1].field_0 = 0
            auction[arg1].field_256 = 0
            auction[arg1].field_512 = 0
            if auction[arg1].field_384 <= 0:
                call arg2 with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(arg2), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256, auction[arg1].field_384 * ownerCut / 10000, arg1, block.number);
                call arg2 with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256, arg2);
        else:
            require auction[arg1].field_512
            require msg.value >= auction[arg1].field_256 + (0 / auction[arg1].field_512)
            auction[arg1].field_0 = 0
            auction[arg1].field_256 = 0
            auction[arg1].field_512 = 0
            if auction[arg1].field_256 + (0 / auction[arg1].field_512) <= 0:
                call arg2 with:
                   value msg.value - auction[arg1].field_256 - (0 / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_256 + (0 / auction[arg1].field_512) - ((auction[arg1].field_256 * ownerCut) + (0 / auction[arg1].field_512 * ownerCut) / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(arg2), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256 + (0 / auction[arg1].field_512), (auction[arg1].field_256 * ownerCut) + (0 / auction[arg1].field_512 * ownerCut) / 10000, arg1, block.number);
                call arg2 with:
                   value msg.value - auction[arg1].field_256 - (0 / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256 + (0 / auction[arg1].field_512), arg2);
    else:
        if block.timestamp - auction[arg1].field_576 >= auction[arg1].field_512:
            require msg.value >= auction[arg1].field_384
            auction[arg1].field_0 = 0
            auction[arg1].field_256 = 0
            auction[arg1].field_512 = 0
            if auction[arg1].field_384 <= 0:
                call arg2 with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(arg2), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256, auction[arg1].field_384 * ownerCut / 10000, arg1, block.number);
                call arg2 with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256, arg2);
        else:
            require auction[arg1].field_512
            require msg.value >= auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512)
            auction[arg1].field_0 = 0
            auction[arg1].field_256 = 0
            auction[arg1].field_512 = 0
            if auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) <= 0:
                call arg2 with:
                   value msg.value - auction[arg1].field_256 - ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) - ((auction[arg1].field_256 * ownerCut) + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512 * ownerCut) / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(arg2), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512), (auction[arg1].field_256 * ownerCut) + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512 * ownerCut) / 10000, arg1, block.number);
                call arg2 with:
                   value msg.value - auction[arg1].field_256 - ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512), arg2);
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bid(uint256 arg1) payable {
    require 0 < auction[arg1].field_576
    require auction[arg1].field_576 < block.timestamp
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
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(msg.sender), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256, auction[arg1].field_384 * ownerCut / 10000, arg1, block.number);
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256, msg.sender);
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(gen0SellerAddress) == auction[arg1].field_0:
                require gen0SaleCount % 5 < 5
                lastGen0SalePrices[stor5 % 5] = auction[arg1].field_384
                gen0SaleCount++
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
                   value auction[arg1].field_256 + (0 / auction[arg1].field_512) - ((auction[arg1].field_256 * ownerCut) + (0 / auction[arg1].field_512 * ownerCut) / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(msg.sender), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256 + (0 / auction[arg1].field_512), (auction[arg1].field_256 * ownerCut) + (0 / auction[arg1].field_512 * ownerCut) / 10000, arg1, block.number);
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - (0 / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256 + (0 / auction[arg1].field_512), msg.sender);
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(gen0SellerAddress) == auction[arg1].field_0:
                require gen0SaleCount % 5 < 5
                lastGen0SalePrices[stor5 % 5] = auction[arg1].field_256 + (0 / auction[arg1].field_512)
                gen0SaleCount++
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
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(msg.sender), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256, auction[arg1].field_384 * ownerCut / 10000, arg1, block.number);
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256, msg.sender);
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(gen0SellerAddress) == auction[arg1].field_0:
                require gen0SaleCount % 5 < 5
                lastGen0SalePrices[stor5 % 5] = auction[arg1].field_384
                gen0SaleCount++
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
                   value auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) - ((auction[arg1].field_256 * ownerCut) + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512 * ownerCut) / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(msg.sender), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512), (auction[arg1].field_256 * ownerCut) + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512 * ownerCut) / 10000, arg1, block.number);
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512), msg.sender);
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(gen0SellerAddress) == auction[arg1].field_0:
                require gen0SaleCount % 5 < 5
                lastGen0SalePrices[stor5 % 5] = auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512)
                gen0SaleCount++
}

function bidGift(uint256 arg1, address arg2) payable {
    require 0 < auction[arg1].field_576
    require auction[arg1].field_576 < block.timestamp
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
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(msg.sender), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256, auction[arg1].field_384 * ownerCut / 10000, arg1, block.number);
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256, msg.sender);
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(gen0SellerAddress) == auction[arg1].field_0:
                require gen0SaleCount % 5 < 5
                lastGen0SalePrices[stor5 % 5] = auction[arg1].field_384
                gen0SaleCount++
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
                   value auction[arg1].field_256 + (0 / auction[arg1].field_512) - ((auction[arg1].field_256 * ownerCut) + (0 / auction[arg1].field_512 * ownerCut) / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(msg.sender), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256 + (0 / auction[arg1].field_512), (auction[arg1].field_256 * ownerCut) + (0 / auction[arg1].field_512 * ownerCut) / 10000, arg1, block.number);
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - (0 / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256 + (0 / auction[arg1].field_512), msg.sender);
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(gen0SellerAddress) == auction[arg1].field_0:
                require gen0SaleCount % 5 < 5
                lastGen0SalePrices[stor5 % 5] = auction[arg1].field_256 + (0 / auction[arg1].field_512)
                gen0SaleCount++
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
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(msg.sender), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256, auction[arg1].field_384 * ownerCut / 10000, arg1, block.number);
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256, msg.sender);
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(gen0SellerAddress) == auction[arg1].field_0:
                require gen0SaleCount % 5 < 5
                lastGen0SalePrices[stor5 % 5] = auction[arg1].field_384
                gen0SaleCount++
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
                   value auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) - ((auction[arg1].field_256 * ownerCut) + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512 * ownerCut) / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Money(address(msg.sender), Array(len=17, data='AuctionSuccessful'), auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512), (auction[arg1].field_256 * ownerCut) + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512 * ownerCut) / 10000, arg1, block.number);
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512), msg.sender);
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(gen0SellerAddress) == auction[arg1].field_0:
                require gen0SaleCount % 5 < 5
                lastGen0SalePrices[stor5 % 5] = auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512)
                gen0SaleCount++
}



}
