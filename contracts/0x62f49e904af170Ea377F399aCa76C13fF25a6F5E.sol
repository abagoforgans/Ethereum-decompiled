contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_9c1e89d6;
array of struct offers;

function getOfferDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < offers.length
    return offers[arg1].field_0, 
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           offers[arg1].field_1024,
           bool(offers[arg1].field_1184)
}

function offers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < offers.length
    return offers[arg1].field_0, 
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           offers[arg1].field_1024,
           bool(offers[arg1].field_1184),
           offers[arg1].field_1280
}

function owner() {
    return owner
}

function sub_9c1e89d6(?) {
    require calldata.size - 4 >= 32
    return sub_9c1e89d6[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cancelTrade(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < offers.length
    require msg.sender == offers[arg1].field_1024
    require ext_code.size(offers[arg1].field_0)
    call offers[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args offers[arg1].field_1024, offers[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_9c1e89d6[stor2[arg1].field_0] -= offers[arg1].field_512
    offers[arg1].field_1184 = 0
    emit OfferCancelled(arg1);
    return 1
}

function reclaimToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] - sub_9c1e89d6[address(arg1)] > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0] - sub_9c1e89d6[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function take(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < offers.length
    require 1 == bool(offers[arg1].field_1184)
    require ext_code.size(offers[arg1].field_0)
    call offers[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, offers[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_9c1e89d6[stor2[arg1].field_0] -= offers[arg1].field_512
    require ext_code.size(offers[arg1].field_256)
    call offers[arg1].field_256.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, offers[arg1].field_1024, offers[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    offers[arg1].field_1184 = 0
    emit OfferTaken(arg1);
    return 1
}

function sub_da5311dd(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    offers.length++
    if offers.length > offers.length + 1:
        idx = (6 * offers.length) + 6
        while 6 * offers.length > idx:
            offers[idx].field_0 = 0
            offers[idx].field_256 = 0
            offers[idx].field_512 = 0
            offers[idx].field_768 = 0
            offers[idx].field_1024 = 0
            offers[idx].field_1280 = 0
            idx = idx + 6
            continue 
    require offers.length < offers.length
    sub_9c1e89d6[address(arg1)] += arg3
    offers[offers.length].field_0 = arg1
    offers[offers.length].field_256 = arg2
    offers[offers.length].field_512 = arg3
    offers[offers.length].field_768 = arg4
    offers[offers.length].field_1024 = msg.sender
    offers[offers.length].field_1184 = 1
    offers[offers.length].field_1192 = Mask(88, 168, msg.sender) >> 168
    offers[offers.length].field_1280 = offers.length
    emit OfferCreated(offers.length);
    return offers.length
}



}
