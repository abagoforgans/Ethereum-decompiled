contract main {




// =====================  Runtime code  =====================


address owner;
array of struct listings;
array of struct offers;
mapping of uint8 stor3;
address tokenAddr;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function offers(uint256 arg1, uint256 arg2) {
    require arg2 < offers[arg1].field_0
    return offers[arg1][arg2].field_0, 
           offers[arg1][arg2].field_256,
           offers[arg1][arg2].field_512,
           offers[arg1][arg2].field_768,
           offers[arg1][arg2].field_1024,
           offers[arg1][arg2].field_1280,
           offers[arg1][arg2].field_1536,
           offers[arg1][arg2].field_1792,
           offers[arg1][arg2].field_2048
}

function tokenAddr() {
    return tokenAddr
}

function owner() {
    return owner
}

function totalOffers(uint256 arg1) {
    return offers[arg1].field_0
}

function allowedAffiliates(address arg1) {
    return bool(stor3[arg1])
}

function totalListings() {
    return listings.length
}

function listings(uint256 arg1) {
    require arg1 < listings.length
    return listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512
}

function _fallback() payable {
    revert
}

function addData(bytes32 arg1) {
    emit MarketplaceData(arg1, msg.sender);
}

function setTokenAddr(address arg1) {
    require msg.sender == owner
    tokenAddr = arg1
}

function addData(uint256 arg1, bytes32 arg2) {
    emit ListingData(arg2, msg.sender, arg1);
}

function addData(uint256 arg1, uint256 arg2, bytes32 arg3) {
    emit OfferData(arg3, msg.sender, arg1, arg2);
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function addAffiliate(address arg1, bytes32 arg2) {
    require msg.sender == owner
    stor3[address(arg1)] = 1
    emit AffiliateAdded(arg2, arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeAffiliate(address arg1, bytes32 arg2) {
    require msg.sender == owner
    stor3[address(arg1)] = 0
    emit AffiliateRemoved(arg2, arg1);
}

function updateRefund(uint256 arg1, uint256 arg2, uint256 arg3, bytes32 arg4) {
    require arg2 < offers[arg1].field_0
    require arg1 < listings.length
    if listings[arg1].field_0 != msg.sender:
        revert with 0, 'Seller must call'
    if offers[arg1][arg2].field_2048 != 2:
        revert with 0, 'status != accepted'
    if arg3 > offers[arg1][arg2].field_0:
        revert with 0, 'Excessive refund'
    offers[arg1][arg2].field_512 = arg3
    emit OfferData(arg4, msg.sender, arg1, arg2);
}

function dispute(uint256 arg1, uint256 arg2, bytes32 arg3) {
    require arg1 < listings.length
    require arg2 < offers[arg1].field_0
    if offers[arg1][arg2].field_1024 != msg.sender:
        if listings[arg1].field_0 != msg.sender:
            revert with 0, 'Must be seller or buyer'
    if offers[arg1][arg2].field_2048 != 2:
        revert with 0, 'status != accepted'
    if block.timestamp > offers[arg1][arg2].field_1792:
        revert with 0, 'Already finalized'
    offers[arg1][arg2].field_2048 = 3
    emit OfferDisputed(arg3, msg.sender, arg1, arg2);
}

function updateListing(uint256 arg1, bytes32 arg2, uint256 arg3) {
    require arg1 < listings.length
    if listings[arg1].field_0 != msg.sender:
        revert with 0, 'Seller must call'
    if arg3 > 0:
        require ext_code.size(tokenAddr)
        call tokenAddr.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        listings[arg1].field_256 += arg3
    emit ListingUpdated(arg2, listings[arg1].field_0, arg1);
}

function createListing(bytes32 arg1, uint256 arg2, address arg3) {
    if not arg3:
        revert with 0, 'Must specify depositManager'
    listings.length++
    listings[listings.length].field_0 = msg.sender
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = arg3
    if arg2 > 0:
        require ext_code.size(tokenAddr)
        call tokenAddr.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit ListingCreated(arg1, msg.sender, listings.length - 1);
}

function acceptOffer(uint256 arg1, uint256 arg2, bytes32 arg3) {
    require arg1 < listings.length
    require arg2 < offers[arg1].field_0
    if listings[arg1].field_0 != msg.sender:
        revert with 0, 'Seller must accept'
    if offers[arg1][arg2].field_2048 != 1:
        revert with 0, 'status != created'
    if listings[arg1].field_256 < offers[arg1][arg2].field_256:
        revert with 0, 'deposit must cover commission'
    if offers[arg1][arg2].field_1792 < 10^9:
        offers[arg1][arg2].field_1792 += block.timestamp
    listings[arg1].field_256 -= offers[arg1][arg2].field_256
    offers[arg1][arg2].field_2048 = 2
    emit OfferAccepted(arg3, msg.sender, arg1, arg2);
}

function withdrawListing(uint256 arg1, address arg2, bytes32 arg3) {
    require arg1 < listings.length
    if listings[arg1].field_512 != msg.sender:
        revert with 0, 'Must be depositManager'
    if not arg2:
        revert with 0, 'No target'
    require ext_code.size(tokenAddr)
    call tokenAddr.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), listings[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < listings.length
    listings[arg1].field_0 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_512 = 0
    emit ListingWithdrawn(arg3, arg2, arg1);
}

function sendDeposit(uint256 arg1, address arg2, uint256 arg3, bytes32 arg4) {
    require arg1 < listings.length
    if listings[arg1].field_512 != msg.sender:
        revert with 0, 'depositManager must call'
    if arg3 > listings[arg1].field_256:
        revert with 0, 'Value too high'
    listings[arg1].field_256 -= arg3
    require ext_code.size(tokenAddr)
    call tokenAddr.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
    emit ListingArbitrated(arg4, arg2, arg1);
}

function updateListingWithSender(address arg1, uint256 arg2, bytes32 arg3, uint256 arg4) {
    if tokenAddr != msg.sender:
        revert with 0, 'Token must call'
    require arg2 < listings.length
    if listings[arg2].field_0 != arg1:
        revert with 0, 'Seller must call'
    if arg4 > 0:
        require ext_code.size(tokenAddr)
        call tokenAddr.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), this.address, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        listings[arg2].field_256 += arg4
    emit ListingUpdated(arg3, listings[arg2].field_0, arg2);
    return 1
}

function createListingWithSender(address arg1, bytes32 arg2, uint256 arg3, address arg4) {
    if tokenAddr != msg.sender:
        revert with 0, 'Token must call'
    if not arg4:
        revert with 0, 'Must specify depositManager'
    listings.length++
    listings[listings.length].field_0 = arg1
    storB10E[stor1.length] = arg3
    storB10E[stor1.length] = arg4
    if arg3 > 0:
        require ext_code.size(tokenAddr)
        call tokenAddr.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit ListingCreated(arg2, arg1, listings.length - 1);
    return 1
}

function addFunds(uint256 arg1, uint256 arg2, bytes32 arg3, uint256 arg4) payable {
    require arg2 < offers[arg1].field_0
    if offers[arg1][arg2].field_1024 != msg.sender:
        revert with 0, 'Buyer must call'
    if offers[arg1][arg2].field_2048 != 2:
        revert with 0, 'status != accepted'
    if not offers[arg1][arg2].field_768:
        if arg4 != msg.value:
            revert with 0, 'sent != offered value'
    else:
        if msg.value:
            revert with 0, 'ETH must not be sent'
        require ext_code.size(offers[arg1][arg2].field_768)
        call offers[arg1][arg2].field_768.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transferFrom failed'
    offers[arg1][arg2].field_0 += arg4
    emit OfferFundsAdded(arg3, msg.sender, arg1, arg2);
}

function makeOffer(uint256 arg1, bytes32 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, address arg8) payable {
    if not stor3[this.address]:
        if not stor3[address(arg4)]:
            revert with 0, 'Affiliate not allowed'
    if not arg4:
        if arg5:
            revert with 0, 'commission requires affiliate'
    offers[arg1].field_0++
    offers[arg1][offers[arg1].field_0].field_0 = arg6
    offers[arg1][offers[arg1].field_0].field_256 = arg5
    offers[arg1][offers[arg1].field_0].field_512 = 0
    offers[arg1][offers[arg1].field_0].field_768 = arg7
    offers[arg1][offers[arg1].field_0].field_1024 = msg.sender
    offers[arg1][offers[arg1].field_0].field_1280 = arg4
    offers[arg1][offers[arg1].field_0].field_1536 = arg8
    offers[arg1][offers[arg1].field_0].field_1792 = arg3
    offers[arg1][offers[arg1].field_0].field_2048 = 1
    if 0 == arg7:
        if arg6 != msg.value:
            revert with 0, 'ETH value doesn't match offer'
    else:
        if msg.value:
            revert with 0, 'ETH would be lost'
        require ext_code.size(arg7)
        call arg7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transferFrom failed'
    emit OfferCreated(arg2, msg.sender, arg1, offers[arg1].field_0 - 1);
}

function finalize(uint256 arg1, uint256 arg2, bytes32 arg3) {
    require arg1 < listings.length
    require arg2 < offers[arg1].field_0
    if block.timestamp <= offers[arg1][arg2].field_1792:
        if offers[arg1][arg2].field_1024 != msg.sender:
            revert with 0, 'Only buyer can finalize'
    else:
        if offers[arg1][arg2].field_1024 != msg.sender:
            if listings[arg1].field_0 != msg.sender:
                revert with 0, 'Seller or buyer must finalize'
    if offers[arg1][arg2].field_2048 != 2:
        revert with 0, 'status != accepted'
    require arg1 < listings.length
    require arg2 < offers[arg1].field_0
    if not offers[arg1][arg2].field_768:
        call offers[arg1][arg2].field_1024 with:
           value offers[arg1][arg2].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'ETH refund failed'
        call listings[arg1].field_0 with:
           value offers[arg1][arg2].field_0 - offers[arg1][arg2].field_512 wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(offers[arg1][arg2].field_768)
        call offers[arg1][arg2].field_768.0xa9059cbb with:
             gas gas_remaining wei
            args offers[arg1][arg2].field_1024, offers[arg1][arg2].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Refund failed'
        require ext_code.size(offers[arg1][arg2].field_768)
        call offers[arg1][arg2].field_768.0xa9059cbb with:
             gas gas_remaining wei
            args listings[arg1].field_0, offers[arg1][arg2].field_0 - offers[arg1][arg2].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
    if msg.sender == offers[arg1][arg2].field_1024:
        require arg2 < offers[arg1].field_0
        if offers[arg1][arg2].field_1280:
            require ext_code.size(tokenAddr)
            call tokenAddr.0xa9059cbb with:
                 gas gas_remaining wei
                args offers[arg1][arg2].field_1280, offers[arg1][arg2].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Commission transfer failed'
    emit OfferFinalized(arg3, msg.sender, arg1, arg2);
    require arg2 < offers[arg1].field_0
    offers[arg1][arg2].field_0 = 0
    offers[arg1][arg2].field_256 = 0
    offers[arg1][arg2].field_512 = 0
    offers[arg1][arg2].field_768 = 0
    offers[arg1][arg2].field_1024 = 0
    offers[arg1][arg2].field_1280 = 0
    offers[arg1][arg2].field_1536 = 0
    offers[arg1][arg2].field_1792 = 0
    offers[arg1][arg2].field_2048 = 0
}

function withdrawOffer(uint256 arg1, uint256 arg2, bytes32 arg3) {
    require arg1 < listings.length
    require arg2 < offers[arg1].field_0
    if offers[arg1][arg2].field_1024 != msg.sender:
        if listings[arg1].field_0 != msg.sender:
            revert with 0, 'Restricted to buyer or seller'
    if listings[arg1].field_0:
        if offers[arg1][arg2].field_2048 != 1:
            revert with 0, 'status != created'
    else:
        if 1 == offers[arg1][arg2].field_2048:
            if 2 == offers[arg1][arg2].field_2048:
                require arg2 < offers[arg1].field_0
                if offers[arg1][arg2].field_1280:
                    require ext_code.size(tokenAddr)
                    call tokenAddr.0xa9059cbb with:
                         gas gas_remaining wei
                        args offers[arg1][arg2].field_1280, offers[arg1][arg2].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Commission transfer failed'
        else:
            if offers[arg1][arg2].field_2048 != 2:
                revert with 0, 'status not created or accepted'
            require arg2 < offers[arg1].field_0
            if offers[arg1][arg2].field_1280:
                require ext_code.size(tokenAddr)
                call tokenAddr.0xa9059cbb with:
                     gas gas_remaining wei
                    args offers[arg1][arg2].field_1280, offers[arg1][arg2].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Commission transfer failed'
    require arg2 < offers[arg1].field_0
    if not offers[arg1][arg2].field_768:
        call offers[arg1][arg2].field_1024 with:
           value offers[arg1][arg2].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'ETH refund failed'
    else:
        require ext_code.size(offers[arg1][arg2].field_768)
        call offers[arg1][arg2].field_768.0xa9059cbb with:
             gas gas_remaining wei
            args offers[arg1][arg2].field_1024, offers[arg1][arg2].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Refund failed'
    emit OfferWithdrawn(arg3, msg.sender, arg1, arg2);
    require arg2 < offers[arg1].field_0
    offers[arg1][arg2].field_0 = 0
    offers[arg1][arg2].field_256 = 0
    offers[arg1][arg2].field_512 = 0
    offers[arg1][arg2].field_768 = 0
    offers[arg1][arg2].field_1024 = 0
    offers[arg1][arg2].field_1280 = 0
    offers[arg1][arg2].field_1536 = 0
    offers[arg1][arg2].field_1792 = 0
    offers[arg1][arg2].field_2048 = 0
}

function executeRuling(uint256 arg1, uint256 arg2, bytes32 arg3, uint256 arg4, uint256 arg5) {
    require arg2 < offers[arg1].field_0
    if offers[arg1][arg2].field_1536 != msg.sender:
        revert with 0, 'Must be arbitrator'
    if offers[arg1][arg2].field_2048 != 3:
        revert with 0, 'status != disputed'
    if arg5 > offers[arg1][arg2].field_0:
        revert with 0, 'refund too high'
    offers[arg1][arg2].field_512 = arg5
    if bool(arg4) == 1:
        require arg2 < offers[arg1].field_0
        if not offers[arg1][arg2].field_768:
            call offers[arg1][arg2].field_1024 with:
               value offers[arg1][arg2].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with 0, 'ETH refund failed'
        else:
            require ext_code.size(offers[arg1][arg2].field_768)
            call offers[arg1][arg2].field_768.0xa9059cbb with:
                 gas gas_remaining wei
                args offers[arg1][arg2].field_1024, offers[arg1][arg2].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Refund failed'
    else:
        require arg1 < listings.length
        require arg2 < offers[arg1].field_0
        if not offers[arg1][arg2].field_768:
            call offers[arg1][arg2].field_1024 with:
               value offers[arg1][arg2].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with 0, 'ETH refund failed'
            call listings[arg1].field_0 with:
               value offers[arg1][arg2].field_0 - offers[arg1][arg2].field_512 wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(offers[arg1][arg2].field_768)
            call offers[arg1][arg2].field_768.0xa9059cbb with:
                 gas gas_remaining wei
                args offers[arg1][arg2].field_1024, offers[arg1][arg2].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Refund failed'
            require ext_code.size(offers[arg1][arg2].field_768)
            call offers[arg1][arg2].field_768.0xa9059cbb with:
                 gas gas_remaining wei
                args listings[arg1].field_0, offers[arg1][arg2].field_0 - offers[arg1][arg2].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
    if Mask(1, 1, arg4) != 2:
        require arg1 < listings.length
        listings[arg1].field_256 += offers[arg1][arg2].field_256
    else:
        require arg2 < offers[arg1].field_0
        if offers[arg1][arg2].field_1280:
            require ext_code.size(tokenAddr)
            call tokenAddr.0xa9059cbb with:
                 gas gas_remaining wei
                args offers[arg1][arg2].field_1280, offers[arg1][arg2].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Commission transfer failed'
    emit OfferRuling(arg3, arg4, offers[arg1][arg2].field_1536, arg1, arg2);
    require arg2 < offers[arg1].field_0
    offers[arg1][arg2].field_0 = 0
    offers[arg1][arg2].field_256 = 0
    offers[arg1][arg2].field_512 = 0
    offers[arg1][arg2].field_768 = 0
    offers[arg1][arg2].field_1024 = 0
    offers[arg1][arg2].field_1280 = 0
    offers[arg1][arg2].field_1536 = 0
    offers[arg1][arg2].field_1792 = 0
    offers[arg1][arg2].field_2048 = 0
}

function makeOffer(uint256 arg1, bytes32 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, address arg8, uint256 arg9) payable {
    require arg1 < listings.length
    require arg9 < offers[arg1].field_0
    if offers[arg1][arg9].field_1024 != msg.sender:
        if listings[arg1].field_0 != msg.sender:
            revert with 0, 'Restricted to buyer or seller'
    if listings[arg1].field_0:
        if offers[arg1][arg9].field_2048 != 1:
            revert with 0, 'status != created'
    else:
        if 1 == offers[arg1][arg9].field_2048:
            if 2 == offers[arg1][arg9].field_2048:
                require arg9 < offers[arg1].field_0
                if offers[arg1][arg9].field_1280:
                    require ext_code.size(tokenAddr)
                    call tokenAddr.0xa9059cbb with:
                         gas gas_remaining wei
                        args offers[arg1][arg9].field_1280, offers[arg1][arg9].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Commission transfer failed'
        else:
            if offers[arg1][arg9].field_2048 != 2:
                revert with 0, 'status not created or accepted'
            require arg9 < offers[arg1].field_0
            if offers[arg1][arg9].field_1280:
                require ext_code.size(tokenAddr)
                call tokenAddr.0xa9059cbb with:
                     gas gas_remaining wei
                    args offers[arg1][arg9].field_1280, offers[arg1][arg9].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Commission transfer failed'
    require arg9 < offers[arg1].field_0
    if not offers[arg1][arg9].field_768:
        call offers[arg1][arg9].field_1024 with:
           value offers[arg1][arg9].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'ETH refund failed'
    else:
        require ext_code.size(offers[arg1][arg9].field_768)
        call offers[arg1][arg9].field_768.0xa9059cbb with:
             gas gas_remaining wei
            args offers[arg1][arg9].field_1024, offers[arg1][arg9].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Refund failed'
    emit OfferWithdrawn(arg2, msg.sender, arg1, arg9);
    require arg9 < offers[arg1].field_0
    offers[arg1][arg9].field_0 = 0
    offers[arg1][arg9].field_256 = 0
    offers[arg1][arg9].field_512 = 0
    offers[arg1][arg9].field_768 = 0
    offers[arg1][arg9].field_1024 = 0
    offers[arg1][arg9].field_1280 = 0
    offers[arg1][arg9].field_1536 = 0
    offers[arg1][arg9].field_1792 = 0
    offers[arg1][arg9].field_2048 = 0
    if not stor3[this.address]:
        if not stor3[address(arg4)]:
            revert with 0, 'Affiliate not allowed'
    if not arg4:
        if arg5:
            revert with 0, 'commission requires affiliate'
    offers[arg1].field_0++
    offers[arg1][offers[arg1].field_0].field_0 = arg6
    offers[arg1][offers[arg1].field_0].field_256 = arg5
    offers[arg1][offers[arg1].field_0].field_512 = 0
    offers[arg1][offers[arg1].field_0].field_768 = arg7
    offers[arg1][offers[arg1].field_0].field_1024 = msg.sender
    offers[arg1][offers[arg1].field_0].field_1280 = arg4
    offers[arg1][offers[arg1].field_0].field_1536 = arg8
    offers[arg1][offers[arg1].field_0].field_1792 = arg3
    offers[arg1][offers[arg1].field_0].field_2048 = 1
    if 0 == arg7:
        if arg6 != msg.value:
            revert with 0, 'ETH value doesn't match offer'
    else:
        if msg.value:
            revert with 0, 'ETH would be lost'
        require ext_code.size(arg7)
        call arg7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transferFrom failed'
    emit OfferCreated(arg2, msg.sender, arg1, offers[arg1].field_0 - 1);
}



}
