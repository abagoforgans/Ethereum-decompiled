contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;

function _fallback() {
    stor3 = code.data[4281 len 32]
    stor4 = block.timestamp + code.data[4281 len 32]
    return code.data[88 len 4193]
}



// =====================  Runtime code  =====================


const getTime = block.timestamp


uint8 stor0;
mapping of struct offers;
uint256 last_offer_id;
uint256 lifetime;
uint256 close_time;

function last_offer_id() {
    return last_offer_id
}

function getOffer(uint256 arg1) {
    return offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_512, offers[arg1].field_768
}

function close_time() {
    return close_time
}

function lifetime() {
    return lifetime
}

function isActive(uint256 arg1) {
    return bool(offers[arg1].field_1184)
}

function offers(uint256 arg1) {
    return offers[arg1].field_0, 
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           offers[arg1].field_1024,
           bool(offers[arg1].field_1184)
}

function getOwner(uint256 arg1) {
    return offers[arg1].field_1024
}

function _fallback() payable {
    revert
}

function isClosed() {
    return (block.timestamp > close_time)
}

function kill(bytes32 arg1) {
    require offers[arg1].field_1184
    if block.timestamp <= close_time:
        require msg.sender == offers[arg1].field_1024
    require not stor0
    stor0 = 1
    offers[arg1].field_0 = 0
    offers[arg1].field_256 = 0
    offers[arg1].field_512 = 0
    offers[arg1].field_768 = 0
    offers[arg1].field_1024 = 0
    offers[arg1].field_1184 = 0
    require ext_code.size(offers[arg1].field_256)
    call offers[arg1].field_256.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args offers[arg1].field_1024, offers[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    emit ItemUpdate(arg1);
    emit 0xb1354391: arg1, offers[arg1].field_1024, offers[arg1].field_256, offers[arg1].field_768
    stor0 = 0
}

function cancel(uint256 arg1) {
    require offers[arg1].field_1184
    if block.timestamp <= close_time:
        require msg.sender == offers[arg1].field_1024
    require not stor0
    stor0 = 1
    offers[arg1].field_0 = 0
    offers[arg1].field_256 = 0
    offers[arg1].field_512 = 0
    offers[arg1].field_768 = 0
    offers[arg1].field_1024 = 0
    offers[arg1].field_1184 = 0
    require ext_code.size(offers[arg1].field_256)
    call offers[arg1].field_256.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args offers[arg1].field_1024, offers[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    emit ItemUpdate(arg1);
    emit 0xb1354391: arg1, offers[arg1].field_1024, offers[arg1].field_256, offers[arg1].field_768
    stor0 = 0
    return 1
}

function offer(uint256 arg1, address arg2, uint256 arg3, address arg4) {
    require block.timestamp <= close_time
    require not stor0
    stor0 = 1
    require arg1 == uint128(arg1)
    require uint128(arg3) == arg3
    require arg1 > 0
    require arg2
    require arg3 > 0
    require arg4
    require arg2 != arg4
    last_offer_id++
    offers[stor2 + 1].field_0 = arg1
    offers[stor2 + 1].field_256 = arg2
    offers[stor2 + 1].field_512 = arg3
    offers[stor2 + 1].field_768 = arg4
    offers[stor2 + 1].field_1024 = msg.sender
    offers[stor2 + 1].field_1184 = 1
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit ItemUpdate((last_offer_id + 1));
    emit 0x36ecb4e2: last_offer_id + 1, arg1 << 128, uint128(arg3), msg.sender, arg2, arg4
    stor0 = 0
    return (last_offer_id + 1)
}

function make(address arg1, address arg2, uint128 arg3, uint128 arg4) {
    require block.timestamp <= close_time
    require not stor0
    stor0 = 1
    require arg3 == arg3
    require arg4 == arg4
    require arg3 > 0
    require arg1
    require arg4 > 0
    require arg2
    require arg1 != arg2
    last_offer_id++
    offers[stor2 + 1].field_0 = arg3
    offers[stor2 + 1].field_128 = 0
    offers[stor2 + 1].field_256 = arg1
    offers[stor2 + 1].field_512 = arg4
    offers[stor2 + 1].field_640 = 0
    offers[stor2 + 1].field_768 = arg2
    offers[stor2 + 1].field_1024 = msg.sender
    offers[stor2 + 1].field_1184 = 1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg3
    require ext_call.success
    require ext_call.return_data[0]
    emit ItemUpdate((last_offer_id + 1));
    emit 0x36ecb4e2: last_offer_id + 1, arg3 << 128, arg4, msg.sender, arg1, arg2
    stor0 = 0
    return (last_offer_id + 1)
}

function take(bytes32 arg1, uint128 arg2) {
    require offers[arg1].field_1184
    require block.timestamp <= close_time
    require not stor0
    stor0 = 1
    require arg2 == arg2
    if arg2:
        require arg2
        require offers[arg1].field_512 * arg2 / arg2 == offers[arg1].field_512
    require offers[arg1].field_0
    require uint128(offers[arg1].field_512 * arg2 / offers[arg1].field_0) == offers[arg1].field_512 * arg2 / offers[arg1].field_0
    if offers[arg1].field_512 * arg2 / offers[arg1].field_0 > offers[arg1].field_512:
        stor0 = 0
        revert 
    if arg2 > offers[arg1].field_0:
        stor0 = 0
        revert 
    if offers[arg1].field_512 * arg2 / offers[arg1].field_0 != offers[arg1].field_512:
        if offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= 0:
            stor0 = 0
            revert 
        if arg2 <= 0:
            stor0 = 0
            revert 
        require arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= offers[arg1].field_512
        offers[arg1].field_512 -= offers[arg1].field_512 * arg2 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        call offers[arg1].field_768.0x23b872dd with:
             gas gas_remaining - 50 wei
            args msg.sender, offers[arg1].field_1024, offers[arg1].field_512 * arg2 / offers[arg1].field_0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(offers[arg1].field_256)
        call offers[arg1].field_256.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args msg.sender, arg2
        require ext_call.success
        require ext_call.return_data[0]
        emit Trade(arg2 << 128, offers[arg1].field_512 * arg2 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
        emit ItemUpdate(arg1);
        emit 0xaf0a607f: arg1, msg.sender, arg2 << 128, uint128(offers[arg1].field_512 * arg2 / offers[arg1].field_0), offers[arg1].field_1024, offers[arg1].field_256, offers[arg1].field_768
    else:
        if arg2 == offers[arg1].field_0:
            offers[arg1].field_0 = 0
            offers[arg1].field_256 = 0
            offers[arg1].field_512 = 0
            offers[arg1].field_768 = 0
            offers[arg1].field_1024 = 0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining - 50 wei
                args msg.sender, offers[arg1].field_1024, offers[arg1].field_512 * arg2 / offers[arg1].field_0
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, arg2
            require ext_call.success
            require ext_call.return_data[0]
            emit Trade(arg2 << 128, offers[arg1].field_512 * arg2 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
            emit ItemUpdate(arg1);
            emit 0xaf0a607f: arg1, msg.sender, offers[arg1].field_0, offers[arg1].field_512, offers[arg1].field_1024, offers[arg1].field_256, offers[arg1].field_768
        else:
            if offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= 0:
                stor0 = 0
                revert 
            if arg2 <= 0:
                stor0 = 0
                revert 
            require arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= offers[arg1].field_512
            offers[arg1].field_512 -= offers[arg1].field_512 * arg2 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining - 50 wei
                args msg.sender, offers[arg1].field_1024, offers[arg1].field_512 * arg2 / offers[arg1].field_0
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, arg2
            require ext_call.success
            require ext_call.return_data[0]
            emit Trade(arg2 << 128, offers[arg1].field_512 * arg2 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
            emit ItemUpdate(arg1);
            emit 0xaf0a607f: arg1, msg.sender, arg2 << 128, uint128(offers[arg1].field_512 * arg2 / offers[arg1].field_0), offers[arg1].field_1024, offers[arg1].field_256, offers[arg1].field_768
    stor0 = 0
}

function buy(uint256 arg1, uint256 arg2) {
    require offers[arg1].field_1184
    require block.timestamp <= close_time
    require not stor0
    stor0 = 1
    require arg2 == uint128(arg2)
    if arg2:
        require arg2
        require offers[arg1].field_512 * arg2 / arg2 == offers[arg1].field_512
    require offers[arg1].field_0
    require uint128(offers[arg1].field_512 * arg2 / offers[arg1].field_0) == offers[arg1].field_512 * arg2 / offers[arg1].field_0
    if offers[arg1].field_512 * arg2 / offers[arg1].field_0 > offers[arg1].field_512:
        stor0 = 0
        return 0
    if arg2 > offers[arg1].field_0:
        stor0 = 0
        return 0
    if offers[arg1].field_512 * arg2 / offers[arg1].field_0 != offers[arg1].field_512:
        if offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= 0:
            stor0 = 0
            return 0
        if arg2 <= 0:
            stor0 = 0
            return 0
        require arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= offers[arg1].field_512
        offers[arg1].field_512 -= offers[arg1].field_512 * arg2 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        call offers[arg1].field_768.0x23b872dd with:
             gas gas_remaining - 50 wei
            args msg.sender, offers[arg1].field_1024, offers[arg1].field_512 * arg2 / offers[arg1].field_0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(offers[arg1].field_256)
        call offers[arg1].field_256.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args msg.sender, arg2
        require ext_call.success
        require ext_call.return_data[0]
        emit Trade(arg2, offers[arg1].field_512 * arg2 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
        emit ItemUpdate(arg1);
        emit 0xaf0a607f: arg1, msg.sender, arg2 << 128, uint128(offers[arg1].field_512 * arg2 / offers[arg1].field_0), offers[arg1].field_1024, offers[arg1].field_256, offers[arg1].field_768
    else:
        if arg2 == offers[arg1].field_0:
            offers[arg1].field_0 = 0
            offers[arg1].field_256 = 0
            offers[arg1].field_512 = 0
            offers[arg1].field_768 = 0
            offers[arg1].field_1024 = 0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining - 50 wei
                args msg.sender, offers[arg1].field_1024, offers[arg1].field_512 * arg2 / offers[arg1].field_0
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, arg2
            require ext_call.success
            require ext_call.return_data[0]
            emit Trade(arg2, offers[arg1].field_512 * arg2 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
            emit ItemUpdate(arg1);
            emit 0xaf0a607f: arg1, msg.sender, offers[arg1].field_0, offers[arg1].field_512, offers[arg1].field_1024, offers[arg1].field_256, offers[arg1].field_768
        else:
            if offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= 0:
                stor0 = 0
                return 0
            if arg2 <= 0:
                stor0 = 0
                return 0
            require arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= offers[arg1].field_512
            offers[arg1].field_512 -= offers[arg1].field_512 * arg2 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining - 50 wei
                args msg.sender, offers[arg1].field_1024, offers[arg1].field_512 * arg2 / offers[arg1].field_0
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, arg2
            require ext_call.success
            require ext_call.return_data[0]
            emit Trade(arg2, offers[arg1].field_512 * arg2 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
            emit ItemUpdate(arg1);
            emit 0xaf0a607f: arg1, msg.sender, arg2 << 128, uint128(offers[arg1].field_512 * arg2 / offers[arg1].field_0), offers[arg1].field_1024, offers[arg1].field_256, offers[arg1].field_768
    stor0 = 0
    return 1
}



}
