contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
uint8 stor4;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor4 = 1
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[3693 len 32] <= 10000
    stor2 = code.data[3693 len 32]
    require ext_code.size(address(code.data[3661 len 32]))
    call address(code.data[3661 len 32]).supportsInterface(bytes4 rg1) with:
         gas gas_remaining - 710 wei
        args 0x9a20483d00000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0]
    stor1 = address(code.data[3661 len 32])
    return code.data[386 len 3275]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address nonFungibleContractAddress;
uint256 ownerCut;
mapping of struct auction;
uint8 stor4;

function paused() {
    return bool(stor0)
}

function isSiringClockAuction() {
    return bool(stor4)
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

function owner() {
    return owner
}

function nonFungibleContract() {
    return nonFungibleContractAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function withdrawBalance() {
    if owner != msg.sender:
        require msg.sender == nonFungibleContractAddress
    call nonFungibleContractAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function cancelAuction(uint256 arg1) {
    require auction[arg1].field_576 > 0
    require auction[arg1].field_0 == msg.sender
    auction[arg1].field_0 = 0
    auction[arg1].field_256 = 0
    auction[arg1].field_512 = 0
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args auction[arg1].field_0, arg1
    require ext_call.success
    emit AuctionCancelled(arg1);
}

function cancelAuctionWhenPaused(uint256 arg1) {
    require stor0
    require owner == msg.sender
    require auction[arg1].field_576 > 0
    auction[arg1].field_0 = 0
    auction[arg1].field_256 = 0
    auction[arg1].field_512 = 0
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args auction[arg1].field_0, arg1
    require ext_call.success
    emit AuctionCancelled(arg1);
}

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    require arg4 == uint64(arg4)
    require nonFungibleContractAddress == msg.sender
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg5), address(this.address), arg1
    require ext_call.success
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
    require nonFungibleContractAddress == msg.sender
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
                require ext_call.success
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
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
                require ext_call.success
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_256 + (0 / auction[arg1].field_512) - ((auction[arg1].field_256 * ownerCut) + (0 / auction[arg1].field_512 * ownerCut) / 10000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
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
                require ext_call.success
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
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
                require ext_call.success
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) - ((auction[arg1].field_256 * ownerCut) + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512 * ownerCut) / 10000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
            emit AuctionSuccessful(arg1, auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512), msg.sender);
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args auction[arg1].field_0, arg1
    require ext_call.success
}



}
