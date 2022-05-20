contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address nonFungibleContractAddress;
uint256 ownerCut;
mapping of struct auction;
uint256 sub_5c27d31b;
uint8 stor5;

function sub_5c27d31b(?) {
    return sub_5c27d31b
}

function paused() {
    return bool(stor0)
}

function getAuction(uint256 arg1) {
    require auction[arg1].field_576 > 0
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
    return bool(stor5)
}

function owner() {
    return owner
}

function nonFungibleContract() {
    return nonFungibleContractAddress
}

function _fallback() payable {
    revert
}

function sub_5eaff812(?) {
    require msg.sender == owner
    sub_5c27d31b = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
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

function sub_0547d2e4(?) {
    require msg.sender == owner
    require arg2 <= 10000
    ownerCut = arg2
    nonFungibleContractAddress = arg1
}

function withdrawBalance() {
    if owner != msg.sender:
        require nonFungibleContractAddress == msg.sender
    call nonFungibleContractAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_47e83fc0(?) payable {
    require msg.value >= sub_5c27d31b
    require auction[arg1].field_576 > 0
    emit 0x1feff950: arg1
    call msg.sender with:
       value msg.value - sub_5c27d31b wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cancelAuction(uint256 arg1) {
    require auction[arg1].field_576 > 0
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

function cancelAuctionWhenPaused(uint256 arg1) {
    require stor0
    require msg.sender == owner
    require auction[arg1].field_576 > 0
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

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
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
    auction[arg1].field_576 = uint64(block.timestamp)
    emit AuctionCreated(arg1, arg2 << 128, arg3 << 128, uint64(arg4));
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

function bid(uint256 arg1) payable {
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
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256, msg.sender);
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
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - (0 / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256 + (0 / auction[arg1].field_512), msg.sender);
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
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256, msg.sender);
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
}



}
