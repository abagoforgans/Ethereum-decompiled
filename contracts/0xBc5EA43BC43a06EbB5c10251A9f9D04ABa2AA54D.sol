contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;

function _fallback() {
    stor0 = msg.sender
    emit LogSetAuthority(msg.sender);
    stor3 = code.data[5824 len 32]
    stor4 = block.timestamp + code.data[5824 len 32]
    return code.data[161 len 5663]
}



// =====================  Runtime code  =====================


const getTime = block.timestamp


uint8 stor0; offset 160
uint128 stor0; offset 160
address authorityAddress;
mapping of struct offers;
uint256 last_offer_id;
uint256 lifetime;
uint256 close_time;
uint8 stopped;

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

function stopped() {
    return bool(stopped)
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
           bool(offers[arg1].field_1184),
           offers[arg1].field_1192
}

function authority() {
    return authorityAddress
}

function getOwner(uint256 arg1) {
    return offers[arg1].field_1024
}

function _fallback() payable {
    revert 
}

function isClosed() {
    if stopped:
        return bool(stopped)
    return (block.timestamp > close_time)
}

function bump(bytes32 arg1) {
    require offers[arg1].field_1184
    require not stopped
    require block.timestamp <= close_time
    emit LogBump(offers[arg1].field_256, offers[arg1].field_768, offers[arg1].field_0, offers[arg1].field_512, offers[arg1].field_1192, arg1, sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024);
}

function stop() {
    if authorityAddress != msg.sender:
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    stopped = 1
}

function setAuthority(address arg1) {
    if authorityAddress != msg.sender:
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function kill(bytes32 arg1) {
    require offers[arg1].field_1184
    if not stopped:
        if block.timestamp <= close_time:
            require msg.sender == offers[arg1].field_1024
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    offers[arg1].field_0 = 0
    offers[arg1].field_256 = 0
    offers[arg1].field_512 = 0
    offers[arg1].field_768 = 0
    offers[arg1].field_1024 = 0
    offers[arg1].field_1184 = 0
    offers[arg1].field_1192 = 0
    require ext_code.size(offers[arg1].field_256)
    call offers[arg1].field_256.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args offers[arg1].field_1024, offers[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    emit ItemUpdate(arg1);
    emit LogKill(offers[arg1].field_256, offers[arg1].field_768, offers[arg1].field_0, offers[arg1].field_512, uint64(block.timestamp), arg1, sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024);
    uint8(stor0.field_160) = 0
}

function cancel(uint256 arg1) {
    require offers[arg1].field_1184
    if not stopped:
        if block.timestamp <= close_time:
            require msg.sender == offers[arg1].field_1024
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    offers[arg1].field_0 = 0
    offers[arg1].field_256 = 0
    offers[arg1].field_512 = 0
    offers[arg1].field_768 = 0
    offers[arg1].field_1024 = 0
    offers[arg1].field_1184 = 0
    offers[arg1].field_1192 = 0
    require ext_code.size(offers[arg1].field_256)
    call offers[arg1].field_256.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args offers[arg1].field_1024, offers[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    emit ItemUpdate(arg1);
    emit LogKill(offers[arg1].field_256, offers[arg1].field_768, offers[arg1].field_0, offers[arg1].field_512, uint64(block.timestamp), arg1, sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024);
    uint8(stor0.field_160) = 0
    return 1
}

function offer(uint256 arg1, address arg2, uint256 arg3, address arg4) {
    require not stopped
    require block.timestamp <= close_time
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
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
    offers[stor2 + 1].field_1192 = uint64(block.timestamp)
    offers[stor2 + 1].field_1256 = 0
    require ext_code.size(arg2)
    call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit ItemUpdate((last_offer_id + 1));
    emit LogMake(address(arg2), address(arg4), arg1 << 128, arg3 << 128, uint64(block.timestamp), last_offer_id + 1, sha3(arg2, arg4), msg.sender);
    uint8(stor0.field_160) = 0
    return (last_offer_id + 1)
}

function make(address arg1, address arg2, uint128 arg3, uint128 arg4) {
    require not stopped
    require block.timestamp <= close_time
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
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
    offers[stor2 + 1].field_1192 = uint64(block.timestamp)
    offers[stor2 + 1].field_1256 = 0
    require ext_code.size(arg1)
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg3
    require ext_call.success
    require ext_call.return_data[0]
    emit ItemUpdate((last_offer_id + 1));
    emit LogMake(address(arg1), address(arg2), arg3 << 128, arg4 << 128, uint64(block.timestamp), last_offer_id + 1, sha3(arg1, arg2), msg.sender);
    uint8(stor0.field_160) = 0
    return (last_offer_id + 1)
}

function take(bytes32 arg1, uint128 arg2) {
    require offers[arg1].field_1184
    require not stopped
    require block.timestamp <= close_time
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    require arg2 == arg2
    if arg2:
        require offers[arg1].field_512 * arg2 / arg2 == offers[arg1].field_512
    require offers[arg1].field_0
    require uint128(offers[arg1].field_512 * arg2 / offers[arg1].field_0) == offers[arg1].field_512 * arg2 / offers[arg1].field_0
    if offers[arg1].field_512 * arg2 / offers[arg1].field_0 > offers[arg1].field_512:
        uint8(stor0.field_160) = 0
        revert 
    if arg2 > offers[arg1].field_0:
        uint8(stor0.field_160) = 0
        revert 
    if offers[arg1].field_512 * arg2 / offers[arg1].field_0 != offers[arg1].field_512:
        if offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= 0:
            uint8(stor0.field_160) = 0
            revert 
        if arg2 <= 0:
            uint8(stor0.field_160) = 0
            revert 
        require arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= offers[arg1].field_512
        offers[arg1].field_512 -= offers[arg1].field_512 * arg2 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        call offers[arg1].field_768.transferFrom(address rg1, address rg2, uint256 rg3) with:
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
        emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, offers[arg1].field_512 * arg2 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
    else:
        if arg2 == offers[arg1].field_0:
            offers[arg1].field_0 = 0
            offers[arg1].field_256 = 0
            offers[arg1].field_512 = 0
            offers[arg1].field_768 = 0
            offers[arg1].field_1024 = 0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.transferFrom(address rg1, address rg2, uint256 rg3) with:
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
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, offers[arg1].field_0, offers[arg1].field_512, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
        else:
            if offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= 0:
                uint8(stor0.field_160) = 0
                revert 
            if arg2 <= 0:
                uint8(stor0.field_160) = 0
                revert 
            require arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= offers[arg1].field_512
            offers[arg1].field_512 -= offers[arg1].field_512 * arg2 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.transferFrom(address rg1, address rg2, uint256 rg3) with:
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
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, offers[arg1].field_512 * arg2 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
    uint8(stor0.field_160) = 0
}

function buy(uint256 arg1, uint256 arg2) {
    require offers[arg1].field_1184
    require not stopped
    require block.timestamp <= close_time
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    require arg2 == uint128(arg2)
    if arg2:
        require offers[arg1].field_512 * arg2 / arg2 == offers[arg1].field_512
    require offers[arg1].field_0
    require uint128(offers[arg1].field_512 * arg2 / offers[arg1].field_0) == offers[arg1].field_512 * arg2 / offers[arg1].field_0
    if offers[arg1].field_512 * arg2 / offers[arg1].field_0 > offers[arg1].field_512:
        uint8(stor0.field_160) = 0
        return 0
    if arg2 > offers[arg1].field_0:
        uint8(stor0.field_160) = 0
        return 0
    if offers[arg1].field_512 * arg2 / offers[arg1].field_0 != offers[arg1].field_512:
        if offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= 0:
            uint8(stor0.field_160) = 0
            return 0
        if arg2 <= 0:
            uint8(stor0.field_160) = 0
            return 0
        require arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= offers[arg1].field_512
        offers[arg1].field_512 -= offers[arg1].field_512 * arg2 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        call offers[arg1].field_768.transferFrom(address rg1, address rg2, uint256 rg3) with:
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
        emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, offers[arg1].field_512 * arg2 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
    else:
        if arg2 == offers[arg1].field_0:
            offers[arg1].field_0 = 0
            offers[arg1].field_256 = 0
            offers[arg1].field_512 = 0
            offers[arg1].field_768 = 0
            offers[arg1].field_1024 = 0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.transferFrom(address rg1, address rg2, uint256 rg3) with:
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
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, offers[arg1].field_0, offers[arg1].field_512, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
        else:
            if offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= 0:
                uint8(stor0.field_160) = 0
                return 0
            if arg2 <= 0:
                uint8(stor0.field_160) = 0
                return 0
            require arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= offers[arg1].field_512
            offers[arg1].field_512 -= offers[arg1].field_512 * arg2 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.transferFrom(address rg1, address rg2, uint256 rg3) with:
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
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, offers[arg1].field_512 * arg2 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
    uint8(stor0.field_160) = 0
    return 1
}



}
