contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 8313]




// =====================  Runtime code  =====================


uint256 last_offer_id;
mapping of struct offers;
uint8 stor2;

function last_offer_id() {
    return last_offer_id
}

function getOffer(uint256 arg1) {
    return offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_512, offers[arg1].field_768
}

function offers(uint256 arg1) {
    return offers[arg1].field_0, 
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           offers[arg1].field_1024,
           offers[arg1].field_1024
}

function getOwner(uint256 arg1) {
    return offers[arg1].field_1024
}

function _fallback() payable {
    revert
}

function isActive(uint256 arg1) {
    return (offers[arg1].field_1184 > 0)
}

function bump(bytes32 arg1) {
    require offers[arg1].field_1184 > 0
    emit LogBump(offers[arg1].field_256, offers[arg1].field_768, offers[arg1].field_0, offers[arg1].field_512, offers[arg1].field_1184, arg1, sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024);
}

function kill(bytes32 arg1) {
    require offers[arg1].field_1184 > 0
    require offers[arg1].field_1024 == msg.sender
    require not stor2
    stor2 = 1
    offers[arg1].field_0 = 0
    offers[arg1].field_256 = 0
    offers[arg1].field_512 = 0
    offers[arg1].field_768 = 0
    offers[arg1].field_1024 = 0
    offers[arg1].field_1184 = 0
    require ext_code.size(offers[arg1].field_256)
    call offers[arg1].field_256.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args offers[arg1].field_1024, offers[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    emit LogItemUpdate(arg1);
    emit LogKill(offers[arg1].field_256, offers[arg1].field_768, offers[arg1].field_0, offers[arg1].field_512, uint64(block.timestamp), arg1, sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024);
    stor2 = 0
}

function cancel(uint256 arg1) {
    require offers[arg1].field_1184 > 0
    require offers[arg1].field_1024 == msg.sender
    require not stor2
    stor2 = 1
    offers[arg1].field_0 = 0
    offers[arg1].field_256 = 0
    offers[arg1].field_512 = 0
    offers[arg1].field_768 = 0
    offers[arg1].field_1024 = 0
    offers[arg1].field_1184 = 0
    require ext_code.size(offers[arg1].field_256)
    call offers[arg1].field_256.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args offers[arg1].field_1024, offers[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    emit LogItemUpdate(arg1);
    emit LogKill(offers[arg1].field_256, offers[arg1].field_768, offers[arg1].field_0, offers[arg1].field_512, uint64(block.timestamp), arg1, sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024);
    stor2 = 0
    return 1
}

function offer(uint256 arg1, address arg2, uint256 arg3, address arg4) {
    require not stor2
    stor2 = 1
    require uint128(arg1) == arg1
    require uint128(arg3) == arg3
    require arg1 > 0
    require arg2
    require arg3 > 0
    require arg4
    require arg2 != arg4
    last_offer_id++
    offers[stor0].field_0 = arg1
    offers[stor0].field_256 = arg2
    offers[stor0].field_512 = arg3
    offers[stor0].field_768 = arg4
    offers[stor0].field_1024 = msg.sender
    offers[stor0].field_1184 = uint64(block.timestamp)
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit LogItemUpdate(last_offer_id);
    emit LogMake(address(arg2), address(arg4), arg1 << 128, arg3 << 128, uint64(block.timestamp), last_offer_id, sha3(arg2, arg4), msg.sender);
    stor2 = 0
    return last_offer_id
}

function make(address arg1, address arg2, uint128 arg3, uint128 arg4) {
    require not stor2
    stor2 = 1
    require arg3 == arg3
    require arg4 == arg4
    require arg3 > 0
    require arg1
    require arg4 > 0
    require arg2
    require arg1 != arg2
    last_offer_id++
    offers[stor0].field_0 = arg3
    offers[stor0].field_128 = 0
    offers[stor0].field_256 = arg1
    offers[stor0].field_512 = arg4
    offers[stor0].field_640 = 0
    offers[stor0].field_768 = arg2
    offers[stor0].field_1024 = msg.sender
    offers[stor0].field_1184 = uint64(block.timestamp)
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg3
    require ext_call.success
    require ext_call.return_data[0]
    emit LogItemUpdate(last_offer_id);
    emit LogMake(address(arg1), address(arg2), arg3 << 128, arg4 << 128, uint64(block.timestamp), last_offer_id, sha3(arg1, arg2), msg.sender);
    stor2 = 0
    return last_offer_id
}

function take(bytes32 arg1, uint128 arg2) {
    require offers[arg1].field_1184 > 0
    require not stor2
    stor2 = 1
    if not offers[arg1].field_512:
        require offers[arg1].field_0
        require uint128(0 / offers[arg1].field_0) == 0 / offers[arg1].field_0
        require arg2 == arg2
        if not arg2:
            stor2 = 0
            revert
        if not 0 / offers[arg1].field_0:
            stor2 = 0
            revert
        if arg2 > offers[arg1].field_0:
            stor2 = 0
            revert
        if 0 / offers[arg1].field_0 > offers[arg1].field_512:
            stor2 = 0
            revert
        require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 - (0 / offers[arg1].field_0) <= offers[arg1].field_512
        offers[arg1].field_512 -= 0 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        call offers[arg1].field_768.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, offers[arg1].field_1024, 0 / offers[arg1].field_0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(offers[arg1].field_256)
        call offers[arg1].field_256.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2
        require ext_call.success
        require ext_call.return_data[0]
        emit LogItemUpdate(arg1);
        emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, 0 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
        emit LogTrade(arg2 << 128, 0 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
    else:
        require offers[arg1].field_512
        require arg2 * offers[arg1].field_512 / offers[arg1].field_512 == arg2
        require offers[arg1].field_0
        require uint128(arg2 * offers[arg1].field_512 / offers[arg1].field_0) == arg2 * offers[arg1].field_512 / offers[arg1].field_0
        require arg2 == arg2
        if not arg2:
            stor2 = 0
            revert
        if not arg2 * offers[arg1].field_512 / offers[arg1].field_0:
            stor2 = 0
            revert
        if arg2 > offers[arg1].field_0:
            stor2 = 0
            revert
        if arg2 * offers[arg1].field_512 / offers[arg1].field_0 > offers[arg1].field_512:
            stor2 = 0
            revert
        require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 - (arg2 * offers[arg1].field_512 / offers[arg1].field_0) <= offers[arg1].field_512
        offers[arg1].field_512 -= arg2 * offers[arg1].field_512 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        call offers[arg1].field_768.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, offers[arg1].field_1024, arg2 * offers[arg1].field_512 / offers[arg1].field_0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(offers[arg1].field_256)
        call offers[arg1].field_256.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2
        require ext_call.success
        require ext_call.return_data[0]
        emit LogItemUpdate(arg1);
        emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
        emit LogTrade(arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
    if not offers[arg1].field_0:
        offers[arg1].field_0 = 0
        offers[arg1].field_256 = 0
        offers[arg1].field_512 = 0
        offers[arg1].field_768 = 0
        offers[arg1].field_1024 = 0
        offers[arg1].field_1184 = 0
    stor2 = 0
}

function buy(uint256 arg1, uint256 arg2) {
    require offers[arg1].field_1184 > 0
    require not stor2
    stor2 = 1
    if not offers[arg1].field_512:
        require offers[arg1].field_0
        require uint128(0 / offers[arg1].field_0) == 0 / offers[arg1].field_0
        require uint128(arg2) == arg2
        if not arg2:
            stor2 = 0
            return 0
        if not 0 / offers[arg1].field_0:
            stor2 = 0
            return 0
        if arg2 > offers[arg1].field_0:
            stor2 = 0
            return 0
        if 0 / offers[arg1].field_0 > offers[arg1].field_512:
            stor2 = 0
            return 0
        require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 - (0 / offers[arg1].field_0) <= offers[arg1].field_512
        offers[arg1].field_512 -= 0 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        call offers[arg1].field_768.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, offers[arg1].field_1024, 0 / offers[arg1].field_0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(offers[arg1].field_256)
        call offers[arg1].field_256.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2
        require ext_call.success
        require ext_call.return_data[0]
        emit LogItemUpdate(arg1);
        emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, 0 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
        emit LogTrade(arg2, 0 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
    else:
        require offers[arg1].field_512
        require arg2 * offers[arg1].field_512 / offers[arg1].field_512 == arg2
        require offers[arg1].field_0
        require uint128(arg2 * offers[arg1].field_512 / offers[arg1].field_0) == arg2 * offers[arg1].field_512 / offers[arg1].field_0
        require uint128(arg2) == arg2
        if not arg2:
            stor2 = 0
            return 0
        if not arg2 * offers[arg1].field_512 / offers[arg1].field_0:
            stor2 = 0
            return 0
        if arg2 > offers[arg1].field_0:
            stor2 = 0
            return 0
        if arg2 * offers[arg1].field_512 / offers[arg1].field_0 > offers[arg1].field_512:
            stor2 = 0
            return 0
        require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 - (arg2 * offers[arg1].field_512 / offers[arg1].field_0) <= offers[arg1].field_512
        offers[arg1].field_512 -= arg2 * offers[arg1].field_512 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        call offers[arg1].field_768.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, offers[arg1].field_1024, arg2 * offers[arg1].field_512 / offers[arg1].field_0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(offers[arg1].field_256)
        call offers[arg1].field_256.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2
        require ext_call.success
        require ext_call.return_data[0]
        emit LogItemUpdate(arg1);
        emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
        emit LogTrade(arg2, arg2 * offers[arg1].field_512 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
    if not offers[arg1].field_0:
        offers[arg1].field_0 = 0
        offers[arg1].field_256 = 0
        offers[arg1].field_512 = 0
        offers[arg1].field_768 = 0
        offers[arg1].field_1024 = 0
        offers[arg1].field_1184 = 0
    stor2 = 0
    return 1
}



}
