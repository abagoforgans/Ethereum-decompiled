contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint8 stor7;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor1 = 0xb2517d951de4ff9c49baa284847ab5a5cb204648
    stor2 = 100
    stor3 = 0x2041bb7d8b49f0bde3aa1fa7fb506ac6c539394c
    stor7 = 1
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor5 = 50
    require ext_code.size(0x6012c8cf97bead5deae237070f9587f8e7a266d)
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.supportsInterface(bytes4 rg1) with:
         gas gas_remaining - 710 wei
        args 0x9a20483d00000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0]
    stor4 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    return code.data[680 len 5588]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address stor1;
uint256 sub_0340367b;
address stor3;
address nonFungibleContractAddress;
uint256 ownerCut;
mapping of struct auction;
uint8 stor7;

function sub_0340367b(?) {
    return sub_0340367b
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function isSiringClockAuction() {
    return bool(stor7)
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
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
    return 1
}

function withdrawBalance() {
    if owner != msg.sender:
        require msg.sender == stor1
    call stor1 with:
       value 100 * eth.balance(this.address) / 150 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        call stor3 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function cancelAuction(uint256 arg1) {
    require auction[arg1].field_576 > 0
    require msg.sender == auction[arg1].field_0
    auction[arg1].field_0 = 0
    auction[arg1].field_256 = 0
    auction[arg1].field_256 = auction[arg1].field_256
    auction[arg1].field_512 = 0
    auction[arg1].field_576 = 0
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args auction[arg1].field_0, arg1
    require ext_call.success
    emit AuctionCancelled(arg1);
}

function cancelAuctionWhenPaused(uint256 arg1) {
    require uint8(stor0.field_160)
    require msg.sender == owner
    require auction[arg1].field_576 > 0
    auction[arg1].field_0 = 0
    auction[arg1].field_256 = 0
    auction[arg1].field_256 = auction[arg1].field_256
    auction[arg1].field_512 = 0
    auction[arg1].field_576 = 0
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
    ('iszero', ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'auction', 6)))))
    revert
}

function bid(uint256 arg1) payable {
    require auction[arg1].field_576 > 0
    if block.timestamp <= auction[arg1].field_576:
        if 0 >= auction[arg1].field_512:
            require msg.value >= auction[arg1].field_384
            auction[arg1].field_0 = 0
            auction[arg1].field_256 = 0
            auction[arg1].field_256 = auction[arg1].field_256
            auction[arg1].field_512 = 0
            auction[arg1].field_576 = 0
            if auction[arg1].field_384 <= 0:
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) - (auction[arg1].field_384 * sub_0340367b / 10000) wei
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
            auction[arg1].field_256 = auction[arg1].field_256
            auction[arg1].field_512 = 0
            auction[arg1].field_576 = 0
            if auction[arg1].field_256 + (0 / auction[arg1].field_512) <= 0:
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - (0 / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_256 + (0 / auction[arg1].field_512) - ((auction[arg1].field_256 * ownerCut) + (0 / auction[arg1].field_512 * ownerCut) / 10000) - ((auction[arg1].field_256 * sub_0340367b) + (0 / auction[arg1].field_512 * sub_0340367b) / 10000) wei
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
            auction[arg1].field_256 = auction[arg1].field_256
            auction[arg1].field_512 = 0
            auction[arg1].field_576 = 0
            if auction[arg1].field_384 <= 0:
                call msg.sender with:
                   value msg.value - auction[arg1].field_384 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_384 - (auction[arg1].field_384 * ownerCut / 10000) - (auction[arg1].field_384 * sub_0340367b / 10000) wei
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
            auction[arg1].field_256 = auction[arg1].field_256
            auction[arg1].field_512 = 0
            auction[arg1].field_576 = 0
            if auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) <= 0:
                call msg.sender with:
                   value msg.value - auction[arg1].field_256 - ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call auction[arg1].field_0 with:
                   value auction[arg1].field_256 + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512) - ((auction[arg1].field_256 * ownerCut) + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512 * ownerCut) / 10000) - ((auction[arg1].field_256 * sub_0340367b) + ((block.timestamp * auction[arg1].field_384) - (auction[arg1].field_576 * auction[arg1].field_384) - (block.timestamp * auction[arg1].field_256) + (auction[arg1].field_576 * auction[arg1].field_256) / auction[arg1].field_512 * sub_0340367b) / 10000) wei
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
