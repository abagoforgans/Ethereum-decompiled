contract main {


// =======================  Init code  ======================


address stor2;
mapping of uint256 stor5;
mapping of uint256 stor6;
uint256 stor7;
uint256 stor8;
bool stor9; offset 256
uint8 stor9;
uint8 stor9; offset 8
uint256 stor10;
bool stor11; offset 256
uint8 stor11;
uint8 stor11; offset 8

function _fallback() payable {
    stor2 = msg.sender
    stor7 = 0
    stor8 = 12 * 3600
    uint8(stor9.field_0) = 2
    uint8(stor9.field_8) = 25
    stor9.field_256 % 1 = 0
    stor10 = 43860
    uint8(stor11.field_0) = 1
    uint8(stor11.field_8) = 15
    stor11.field_256 % 1 = 0
    require not msg.value
    stor5[0] = 720
    stor5[1] = 1440
    stor5[2] = 2880
    stor5[3] = 8640
    stor5[4] = 60480
    stor5[5] = 120960
    stor6[0] = 0
    stor6[1] = 0
    stor6[2] = 10^13
    stor6[3] = 3 * 10^13
    stor6[4] = 5 * 10^13
    stor6[5] = 7 * 10^13
    return code.data[542 len 6647]
}



// =====================  Runtime code  =====================


address cardboardUnicornTokenAddress;
address groveAddress;
address owner;
array of struct booking;
mapping of struct bookingMetadataForKey;
mapping of uint256 visitLength;
mapping of uint256 visitCost;
uint256 visitingUnicorns;
uint256 repossessionBlocks;
uint8 repossessionBountyPerTen;
uint8 repossessionBountyPerHundred; offset 8
uint256 birthBlockThreshold;
uint8 birthPerTen;
uint8 birthPerHundred; offset 8

function repossessionBlocks() {
    return repossessionBlocks
}

function birthPerTen() {
    return birthPerTen
}

function getBooking(address arg1, uint256 arg2) {
    require arg2 < booking[address(arg1)].field_0
    require booking[address(arg1)][arg2].field_256 <= 5
    require booking[address(arg1)][arg2].field_1024 <= 2
    return booking[address(arg1)][arg2].field_0, 
           booking[address(arg1)][arg2].field_256,
           booking[address(arg1)][arg2].field_512,
           booking[address(arg1)][arg2].field_768,
           booking[address(arg1)][arg2].field_1024,
           booking[address(arg1)][arg2].field_1280,
           booking[address(arg1)][arg2].field_1536
}

function visitingUnicorns() {
    return visitingUnicorns
}

function visitCost(uint8 arg1) {
    return visitCost[arg1]
}

function getBookingCount(address arg1) {
    return booking[address(arg1)].field_0
}

function cardboardUnicornTokenAddress() {
    return cardboardUnicornTokenAddress
}

function repossessionBountyPerHundred() {
    return repossessionBountyPerHundred
}

function repossessionBountyPerTen() {
    return repossessionBountyPerTen
}

function visitLength(uint8 arg1) {
    return visitLength[arg1]
}

function birthBlockThreshold() {
    return birthBlockThreshold
}

function owner() {
    return owner
}

function birthPerHundred() {
    return birthPerHundred
}

function bookingMetadataForKey(bytes32 arg1) {
    return bookingMetadataForKey[arg1].field_0, bookingMetadataForKey[arg1].field_256
}

function groveAddress() {
    return groveAddress
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeGroveAddress(address arg1) {
    require owner == msg.sender
    groveAddress = arg1
}

function changeCardboardUnicornTokenAddress(address arg1) {
    require owner == msg.sender
    cardboardUnicornTokenAddress = arg1
}

function changeBirthSettings(uint256 arg1, uint8 arg2, uint8 arg3) {
    require owner == msg.sender
    birthBlockThreshold = arg1
    birthPerTen = arg2
    birthPerHundred = arg3
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function changeRepoSettings(uint256 arg1, uint8 arg2, uint8 arg3) {
    require owner == msg.sender
    repossessionBlocks = arg1
    repossessionBountyPerTen = arg2
    repossessionBountyPerHundred = arg3
}

function changeVisitCosts(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require owner == msg.sender
    visitCost[0] = arg1
    visitCost[1] = arg2
    visitCost[2] = arg3
    visitCost[3] = arg4
    visitCost[4] = arg5
    visitCost[5] = arg6
}

function changeVisitLengths(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require owner == msg.sender
    visitLength[0] = arg1
    visitLength[1] = arg2
    visitLength[2] = arg3
    visitLength[3] = arg4
    visitLength[4] = arg5
    visitLength[5] = arg6
}

function donateUnicorns(uint256 arg1) payable {
    if arg1:
        require ext_code.size(cardboardUnicornTokenAddress)
        call cardboardUnicornTokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg1
        require ext_call.success
        emit DonationReceived(arg1, msg.sender);
}

function withdrawForeignTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function bookAfternoonVisit(uint256 arg1) payable {
    require ext_code.size(cardboardUnicornTokenAddress)
    call cardboardUnicornTokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(cardboardUnicornTokenAddress)
        call cardboardUnicornTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(cardboardUnicornTokenAddress)
            call cardboardUnicornTokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), ext_call.return_data[0]
            require ext_call.success
            emit DonationReceived(ext_call.return_data[0], msg.sender);
}

function _fallback() payable {
    if cardboardUnicornTokenAddress:
        require ext_code.size(cardboardUnicornTokenAddress)
        call cardboardUnicornTokenAddress.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args msg.sender, this.address
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(cardboardUnicornTokenAddress)
            call cardboardUnicornTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(cardboardUnicornTokenAddress)
                call cardboardUnicornTokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                require ext_call.success
                emit DonationReceived(ext_call.return_data[0], msg.sender);
}

function bookDayVisit(uint256 arg1) payable {
    if visitCost[2]:
        require visitCost[2]
        require arg1 * visitCost[2] / visitCost[2] == arg1
    require msg.value >= arg1 * visitCost[2]
    require ext_code.size(cardboardUnicornTokenAddress)
    call cardboardUnicornTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require arg1 + visitingUnicorns >= visitingUnicorns
    visitingUnicorns += arg1
    require visitLength[2] + block.number >= block.number
    booking[address(msg.sender)].field_0++
    if not booking[address(msg.sender)].field_0 <= booking[address(msg.sender)].field_0 + 1:
        idx = (7 * booking[address(msg.sender)].field_0) + 7
        while 7 * booking[address(msg.sender)].field_0 > idx:
            booking[address(msg.sender)][idx].field_0 = 0
            booking[address(msg.sender)][idx].field_256 = 0
            booking[address(msg.sender)][idx].field_512 = 0
            booking[address(msg.sender)][idx].field_768 = 0
            booking[address(msg.sender)][idx].field_1024 = 0
            booking[address(msg.sender)][idx].field_1280 = 0
            booking[address(msg.sender)][idx].field_1536 = 0
            idx = idx + 7
            continue 
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_0 = arg1
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_256 = 2
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_512 = block.number
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_768 = visitLength[2] + block.number
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1024 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1536 = 0
    bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_0 = msg.sender
    bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_256 = booking[address(msg.sender)].field_0 - 1
    if groveAddress > 0:
        require ext_code.size(groveAddress)
        call groveAddress.insert(bytes32 rg1, bytes32 rg2, int256 rg3) with:
             gas gas_remaining - 710 wei
            args 'bookingExpiration', sha3(msg.sender, booking[address(msg.sender)].field_0 - 1), visitLength[2] + block.number
        require ext_call.success
    emit NewBooking(arg1, msg.sender, booking[address(msg.sender)].field_0 - 1, 2);
}

function bookWeekVisit(uint256 arg1) payable {
    if visitCost[4]:
        require visitCost[4]
        require arg1 * visitCost[4] / visitCost[4] == arg1
    require msg.value >= arg1 * visitCost[4]
    require ext_code.size(cardboardUnicornTokenAddress)
    call cardboardUnicornTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require arg1 + visitingUnicorns >= visitingUnicorns
    visitingUnicorns += arg1
    require visitLength[4] + block.number >= block.number
    booking[address(msg.sender)].field_0++
    if not booking[address(msg.sender)].field_0 <= booking[address(msg.sender)].field_0 + 1:
        idx = (7 * booking[address(msg.sender)].field_0) + 7
        while 7 * booking[address(msg.sender)].field_0 > idx:
            booking[address(msg.sender)][idx].field_0 = 0
            booking[address(msg.sender)][idx].field_256 = 0
            booking[address(msg.sender)][idx].field_512 = 0
            booking[address(msg.sender)][idx].field_768 = 0
            booking[address(msg.sender)][idx].field_1024 = 0
            booking[address(msg.sender)][idx].field_1280 = 0
            booking[address(msg.sender)][idx].field_1536 = 0
            idx = idx + 7
            continue 
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_0 = arg1
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_256 = 4
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_512 = block.number
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_768 = visitLength[4] + block.number
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1024 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1536 = 0
    bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_0 = msg.sender
    bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_256 = booking[address(msg.sender)].field_0 - 1
    if groveAddress > 0:
        require ext_code.size(groveAddress)
        call groveAddress.insert(bytes32 rg1, bytes32 rg2, int256 rg3) with:
             gas gas_remaining - 710 wei
            args 'bookingExpiration', sha3(msg.sender, booking[address(msg.sender)].field_0 - 1), visitLength[4] + block.number
        require ext_call.success
    emit NewBooking(arg1, msg.sender, booking[address(msg.sender)].field_0 - 1, 4);
}

function bookExtendedVisit(uint256 arg1) payable {
    if visitCost[5]:
        require visitCost[5]
        require arg1 * visitCost[5] / visitCost[5] == arg1
    require msg.value >= arg1 * visitCost[5]
    require ext_code.size(cardboardUnicornTokenAddress)
    call cardboardUnicornTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require arg1 + visitingUnicorns >= visitingUnicorns
    visitingUnicorns += arg1
    require visitLength[5] + block.number >= block.number
    booking[address(msg.sender)].field_0++
    if not booking[address(msg.sender)].field_0 <= booking[address(msg.sender)].field_0 + 1:
        idx = (7 * booking[address(msg.sender)].field_0) + 7
        while 7 * booking[address(msg.sender)].field_0 > idx:
            booking[address(msg.sender)][idx].field_0 = 0
            booking[address(msg.sender)][idx].field_256 = 0
            booking[address(msg.sender)][idx].field_512 = 0
            booking[address(msg.sender)][idx].field_768 = 0
            booking[address(msg.sender)][idx].field_1024 = 0
            booking[address(msg.sender)][idx].field_1280 = 0
            booking[address(msg.sender)][idx].field_1536 = 0
            idx = idx + 7
            continue 
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_0 = arg1
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_256 = 5
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_512 = block.number
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_768 = visitLength[5] + block.number
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1024 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1536 = 0
    bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_0 = msg.sender
    bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_256 = booking[address(msg.sender)].field_0 - 1
    if groveAddress > 0:
        require ext_code.size(groveAddress)
        call groveAddress.insert(bytes32 rg1, bytes32 rg2, int256 rg3) with:
             gas gas_remaining - 710 wei
            args 'bookingExpiration', sha3(msg.sender, booking[address(msg.sender)].field_0 - 1), visitLength[5] + block.number
        require ext_call.success
    emit NewBooking(arg1, msg.sender, booking[address(msg.sender)].field_0 - 1, 5);
}

function bookOvernightVisit(uint256 arg1) payable {
    if visitCost[3]:
        require visitCost[3]
        require arg1 * visitCost[3] / visitCost[3] == arg1
    require msg.value >= arg1 * visitCost[3]
    require ext_code.size(cardboardUnicornTokenAddress)
    call cardboardUnicornTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require arg1 + visitingUnicorns >= visitingUnicorns
    visitingUnicorns += arg1
    require visitLength[3] + block.number >= block.number
    booking[address(msg.sender)].field_0++
    if not booking[address(msg.sender)].field_0 <= booking[address(msg.sender)].field_0 + 1:
        idx = (7 * booking[address(msg.sender)].field_0) + 7
        while 7 * booking[address(msg.sender)].field_0 > idx:
            booking[address(msg.sender)][idx].field_0 = 0
            booking[address(msg.sender)][idx].field_256 = 0
            booking[address(msg.sender)][idx].field_512 = 0
            booking[address(msg.sender)][idx].field_768 = 0
            booking[address(msg.sender)][idx].field_1024 = 0
            booking[address(msg.sender)][idx].field_1280 = 0
            booking[address(msg.sender)][idx].field_1536 = 0
            idx = idx + 7
            continue 
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_0 = arg1
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_256 = 3
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_512 = block.number
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_768 = visitLength[3] + block.number
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1024 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1536 = 0
    bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_0 = msg.sender
    bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_256 = booking[address(msg.sender)].field_0 - 1
    if groveAddress > 0:
        require ext_code.size(groveAddress)
        call groveAddress.insert(bytes32 rg1, bytes32 rg2, int256 rg3) with:
             gas gas_remaining - 710 wei
            args 'bookingExpiration', sha3(msg.sender, booking[address(msg.sender)].field_0 - 1), visitLength[3] + block.number
        require ext_call.success
    emit NewBooking(arg1, msg.sender, booking[address(msg.sender)].field_0 - 1, 3);
}

function bookSpaVisit(uint256 arg1) payable {
    if visitCost[0]:
        require visitCost[0]
        require arg1 * visitCost[0] / visitCost[0] == arg1
    require msg.value >= arg1 * visitCost[0]
    require ext_code.size(cardboardUnicornTokenAddress)
    call cardboardUnicornTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require arg1 + visitingUnicorns >= visitingUnicorns
    visitingUnicorns += arg1
    require visitLength[0] + block.number >= block.number
    booking[address(msg.sender)].field_0++
    if not booking[address(msg.sender)].field_0 <= booking[address(msg.sender)].field_0 + 1:
        idx = (7 * booking[address(msg.sender)].field_0) + 7
        while 7 * booking[address(msg.sender)].field_0 > idx:
            booking[address(msg.sender)][idx].field_0 = 0
            booking[address(msg.sender)][idx].field_256 = 0
            booking[address(msg.sender)][idx].field_512 = 0
            booking[address(msg.sender)][idx].field_768 = 0
            booking[address(msg.sender)][idx].field_1024 = 0
            booking[address(msg.sender)][idx].field_1280 = 0
            booking[address(msg.sender)][idx].field_1536 = 0
            idx = idx + 7
            continue 
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_0 = arg1
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_256 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_512 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_512 = block.number
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_768 = visitLength[0] + block.number
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1024 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
    booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1536 = 0
    bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_0 = msg.sender
    bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_256 = booking[address(msg.sender)].field_0 - 1
    if groveAddress > 0:
        require ext_code.size(groveAddress)
        call groveAddress.insert(bytes32 rg1, bytes32 rg2, int256 rg3) with:
             gas gas_remaining - 710 wei
            args 'bookingExpiration', sha3(msg.sender, booking[address(msg.sender)].field_0 - 1), visitLength[0] + block.number
        require ext_call.success
    emit NewBooking(arg1, msg.sender, booking[address(msg.sender)].field_0 - 1, 0);
}

function repossessBooking(address arg1, uint256 arg2) {
    require booking[address(arg1)].field_0 > arg2
    require arg2 < booking[address(arg1)].field_0
    require repossessionBlocks + booking[address(arg1)][arg2].field_768 >= booking[address(arg1)][arg2].field_768
    require block.number > repossessionBlocks + booking[address(arg1)][arg2].field_768
    require booking[address(arg1)][arg2].field_1024 <= 2
    require not booking[address(arg1)][arg2].field_1024
    require booking[address(arg1)][arg2].field_0 <= visitingUnicorns
    visitingUnicorns -= booking[address(arg1)][arg2].field_0
    emit BookingUpdate(booking[address(arg1)][arg2].field_0, arg1, arg2, 2);
    if booking[address(arg1)][arg2].field_0 >= 100:
        if repossessionBountyPerHundred:
            require repossessionBountyPerHundred
            require booking[address(arg1)][arg2].field_0 / 100 * repossessionBountyPerHundred / repossessionBountyPerHundred == booking[address(arg1)][arg2].field_0 / 100
        require ext_code.size(cardboardUnicornTokenAddress)
        call cardboardUnicornTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, booking[address(arg1)][arg2].field_0 / 100 * repossessionBountyPerHundred
        require ext_call.success
        emit RepossessionBounty((booking[address(arg1)][arg2].field_0 / 100 * repossessionBountyPerHundred), msg.sender);
        booking[address(arg1)][arg2].field_1024 = 2
        booking[address(arg1)][arg2].field_1280 = block.number
        booking[address(arg1)][arg2].field_1536 = booking[address(arg1)][arg2].field_0 - (booking[address(arg1)][arg2].field_0 / 100 * repossessionBountyPerHundred)
    else:
        if booking[address(arg1)][arg2].field_0 < 10:
            require ext_code.size(cardboardUnicornTokenAddress)
            call cardboardUnicornTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1
            require ext_call.success
            emit RepossessionBounty(1, msg.sender);
            booking[address(arg1)][arg2].field_1024 = 2
            booking[address(arg1)][arg2].field_1280 = block.number
            booking[address(arg1)][arg2].field_1536 = booking[address(arg1)][arg2].field_0 - 1
        else:
            if repossessionBountyPerTen:
                require repossessionBountyPerTen
                require booking[address(arg1)][arg2].field_0 / 10 * repossessionBountyPerTen / repossessionBountyPerTen == booking[address(arg1)][arg2].field_0 / 10
            require ext_code.size(cardboardUnicornTokenAddress)
            call cardboardUnicornTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, booking[address(arg1)][arg2].field_0 / 10 * repossessionBountyPerTen
            require ext_call.success
            emit RepossessionBounty((booking[address(arg1)][arg2].field_0 / 10 * repossessionBountyPerTen), msg.sender);
            booking[address(arg1)][arg2].field_1024 = 2
            booking[address(arg1)][arg2].field_1280 = block.number
            booking[address(arg1)][arg2].field_1536 = booking[address(arg1)][arg2].field_0 - (booking[address(arg1)][arg2].field_0 / 10 * repossessionBountyPerTen)
    require arg2 < booking[address(arg1)].field_0
    require booking[address(arg1)][arg2].field_256 <= 5
    booking[address(arg1)][arg2].field_256 = booking[address(arg1)][arg2].field_256
    require booking[address(arg1)][arg2].field_1024 <= 2
    booking[address(arg1)][arg2].field_1024 = booking[address(arg1)][arg2].field_1024
}

function addBooking(uint8 arg1, uint256 arg2) payable {
    require arg1 <= 5
    if arg1 == 1:
        require ext_code.size(cardboardUnicornTokenAddress)
        call cardboardUnicornTokenAddress.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args msg.sender, this.address
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(cardboardUnicornTokenAddress)
            call cardboardUnicornTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(cardboardUnicornTokenAddress)
                call cardboardUnicornTokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                require ext_call.success
                emit DonationReceived(ext_call.return_data[0], msg.sender);
    else:
        require arg1 <= 5
        if visitCost[arg1 << 248]:
            require visitCost[arg1 << 248]
            require arg2 * visitCost[arg1 << 248] / visitCost[arg1 << 248] == arg2
        require msg.value >= arg2 * visitCost[arg1 << 248]
        require ext_code.size(cardboardUnicornTokenAddress)
        call cardboardUnicornTokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require arg2 + visitingUnicorns >= visitingUnicorns
        visitingUnicorns += arg2
        require arg1 <= 5
        require visitLength[arg1 << 248] + block.number >= block.number
        booking[address(msg.sender)].field_0++
        if not booking[address(msg.sender)].field_0 <= booking[address(msg.sender)].field_0 + 1:
            idx = (7 * booking[address(msg.sender)].field_0) + 7
            while 7 * booking[address(msg.sender)].field_0 > idx:
                booking[address(msg.sender)][idx].field_0 = 0
                booking[address(msg.sender)][idx].field_256 = 0
                booking[address(msg.sender)][idx].field_512 = 0
                booking[address(msg.sender)][idx].field_768 = 0
                booking[address(msg.sender)][idx].field_1024 = 0
                booking[address(msg.sender)][idx].field_1280 = 0
                booking[address(msg.sender)][idx].field_1536 = 0
                idx = idx + 7
                continue 
        require arg1 <= 5
        booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_0 = arg2
        require arg1 <= 5
        booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_256 = arg1
        booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_512 = block.number
        booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_768 = visitLength[arg1 << 248] + block.number
        booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1024 = 0
        booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
        booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1280 = 0
        booking[address(msg.sender)][booking[address(msg.sender)].field_0].field_1536 = 0
        bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_0 = msg.sender
        bookingMetadataForKey[msg.sender][stor3[address(msg.sender)].field_0 - 1].field_256 = booking[address(msg.sender)].field_0 - 1
        if groveAddress > 0:
            require ext_code.size(groveAddress)
            call groveAddress.insert(bytes32 rg1, bytes32 rg2, int256 rg3) with:
                 gas gas_remaining - 710 wei
                args 'bookingExpiration', sha3(msg.sender, booking[address(msg.sender)].field_0 - 1), visitLength[arg1 << 248] + block.number
            require ext_call.success
        require arg1 <= 5
        emit NewBooking(arg2, msg.sender, booking[address(msg.sender)].field_0 - 1, arg1);
}

function completeBooking(uint256 arg1) {
    require booking[address(msg.sender)].field_0 > arg1
    require arg1 < booking[address(msg.sender)].field_0
    require block.number >= booking[address(msg.sender)][arg1].field_768
    require booking[address(msg.sender)][arg1].field_1024 <= 2
    require not booking[address(msg.sender)][arg1].field_1024
    require booking[address(msg.sender)][arg1].field_512 <= block.number
    if block.number - booking[address(msg.sender)][arg1].field_512 < birthBlockThreshold:
        booking[address(msg.sender)][arg1].field_1024 = 1
        booking[address(msg.sender)][arg1].field_1280 = block.number
        booking[address(msg.sender)][arg1].field_1536 = booking[address(msg.sender)][arg1].field_0
        require arg1 < booking[address(msg.sender)].field_0
        require booking[address(msg.sender)][arg1].field_256 <= 5
        booking[address(msg.sender)][arg1].field_256 = booking[address(msg.sender)][arg1].field_256
        require booking[address(msg.sender)][arg1].field_1024 <= 2
        booking[address(msg.sender)][arg1].field_1024 = booking[address(msg.sender)][arg1].field_1024
        require booking[address(msg.sender)][arg1].field_0 <= visitingUnicorns
        visitingUnicorns -= booking[address(msg.sender)][arg1].field_0
        require ext_code.size(cardboardUnicornTokenAddress)
        call cardboardUnicornTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, booking[address(msg.sender)][arg1].field_0
        require ext_call.success
        emit BookingUpdate(booking[address(msg.sender)][arg1].field_0, msg.sender, arg1, 1);
    else:
        if booking[address(msg.sender)][arg1].field_0 >= 100:
            if birthPerHundred:
                require birthPerHundred
                require booking[address(msg.sender)][arg1].field_0 / 100 * birthPerHundred / birthPerHundred == booking[address(msg.sender)][arg1].field_0 / 100
            if booking[address(msg.sender)][arg1].field_0 / 100 * birthPerHundred <= 0:
                booking[address(msg.sender)][arg1].field_1024 = 1
                booking[address(msg.sender)][arg1].field_1280 = block.number
                booking[address(msg.sender)][arg1].field_1536 = booking[address(msg.sender)][arg1].field_0
                require arg1 < booking[address(msg.sender)].field_0
                require booking[address(msg.sender)][arg1].field_256 <= 5
                booking[address(msg.sender)][arg1].field_256 = booking[address(msg.sender)][arg1].field_256
                require booking[address(msg.sender)][arg1].field_1024 <= 2
                booking[address(msg.sender)][arg1].field_1024 = booking[address(msg.sender)][arg1].field_1024
                require booking[address(msg.sender)][arg1].field_0 <= visitingUnicorns
                visitingUnicorns -= booking[address(msg.sender)][arg1].field_0
                require ext_code.size(cardboardUnicornTokenAddress)
                call cardboardUnicornTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, booking[address(msg.sender)][arg1].field_0
                require ext_call.success
                emit BookingUpdate(booking[address(msg.sender)][arg1].field_0, msg.sender, arg1, 1);
            else:
                require ext_code.size(cardboardUnicornTokenAddress)
                call cardboardUnicornTokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0] - visitingUnicorns >= booking[address(msg.sender)][arg1].field_0 / 100 * birthPerHundred:
                    require (booking[address(msg.sender)][arg1].field_0 / 100 * birthPerHundred) + booking[address(msg.sender)][arg1].field_0 >= booking[address(msg.sender)][arg1].field_0
                    booking[address(msg.sender)][arg1].field_1024 = 1
                    booking[address(msg.sender)][arg1].field_1280 = block.number
                    booking[address(msg.sender)][arg1].field_1536 = (booking[address(msg.sender)][arg1].field_0 / 100 * birthPerHundred) + booking[address(msg.sender)][arg1].field_0
                    require arg1 < booking[address(msg.sender)].field_0
                    require booking[address(msg.sender)][arg1].field_256 <= 5
                    booking[address(msg.sender)][arg1].field_256 = booking[address(msg.sender)][arg1].field_256
                    require booking[address(msg.sender)][arg1].field_1024 <= 2
                    booking[address(msg.sender)][arg1].field_1024 = booking[address(msg.sender)][arg1].field_1024
                    require (booking[address(msg.sender)][arg1].field_0 / 100 * birthPerHundred) + booking[address(msg.sender)][arg1].field_0 <= visitingUnicorns
                    visitingUnicorns = visitingUnicorns - (booking[address(msg.sender)][arg1].field_0 / 100 * birthPerHundred) - booking[address(msg.sender)][arg1].field_0
                    require ext_code.size(cardboardUnicornTokenAddress)
                    call cardboardUnicornTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (booking[address(msg.sender)][arg1].field_0 / 100 * birthPerHundred) + booking[address(msg.sender)][arg1].field_0
                    require ext_call.success
                    emit BookingUpdate(((booking[address(msg.sender)][arg1].field_0 / 100 * birthPerHundred) + booking[address(msg.sender)][arg1].field_0), msg.sender, arg1, 1);
                else:
                    require ext_call.return_data[0] - visitingUnicorns + booking[address(msg.sender)][arg1].field_0 >= booking[address(msg.sender)][arg1].field_0
                    booking[address(msg.sender)][arg1].field_1024 = 1
                    booking[address(msg.sender)][arg1].field_1280 = block.number
                    booking[address(msg.sender)][arg1].field_1536 = ext_call.return_data[0] - visitingUnicorns + booking[address(msg.sender)][arg1].field_0
                    require arg1 < booking[address(msg.sender)].field_0
                    require booking[address(msg.sender)][arg1].field_256 <= 5
                    booking[address(msg.sender)][arg1].field_256 = booking[address(msg.sender)][arg1].field_256
                    require booking[address(msg.sender)][arg1].field_1024 <= 2
                    booking[address(msg.sender)][arg1].field_1024 = booking[address(msg.sender)][arg1].field_1024
                    require ext_call.return_data[0] - visitingUnicorns + booking[address(msg.sender)][arg1].field_0 <= visitingUnicorns
                    visitingUnicorns = (2 * visitingUnicorns) - ext_call.return_data[0] - booking[address(msg.sender)][arg1].field_0
                    require ext_code.size(cardboardUnicornTokenAddress)
                    call cardboardUnicornTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0] - visitingUnicorns + booking[address(msg.sender)][arg1].field_0
                    require ext_call.success
                    emit BookingUpdate((ext_call.return_data[0] - visitingUnicorns + booking[address(msg.sender)][arg1].field_0), msg.sender, arg1, 1);
        else:
            if booking[address(msg.sender)][arg1].field_0 < 10:
                booking[address(msg.sender)][arg1].field_1024 = 1
                booking[address(msg.sender)][arg1].field_1280 = block.number
                booking[address(msg.sender)][arg1].field_1536 = booking[address(msg.sender)][arg1].field_0
                require arg1 < booking[address(msg.sender)].field_0
                require booking[address(msg.sender)][arg1].field_256 <= 5
                booking[address(msg.sender)][arg1].field_256 = booking[address(msg.sender)][arg1].field_256
                require booking[address(msg.sender)][arg1].field_1024 <= 2
                booking[address(msg.sender)][arg1].field_1024 = booking[address(msg.sender)][arg1].field_1024
                require booking[address(msg.sender)][arg1].field_0 <= visitingUnicorns
                visitingUnicorns -= booking[address(msg.sender)][arg1].field_0
                require ext_code.size(cardboardUnicornTokenAddress)
                call cardboardUnicornTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, booking[address(msg.sender)][arg1].field_0
                require ext_call.success
                emit BookingUpdate(booking[address(msg.sender)][arg1].field_0, msg.sender, arg1, 1);
            else:
                if birthPerTen:
                    require birthPerTen
                    require booking[address(msg.sender)][arg1].field_0 / 10 * birthPerTen / birthPerTen == booking[address(msg.sender)][arg1].field_0 / 10
                if booking[address(msg.sender)][arg1].field_0 / 10 * birthPerTen <= 0:
                    booking[address(msg.sender)][arg1].field_1024 = 1
                    booking[address(msg.sender)][arg1].field_1280 = block.number
                    booking[address(msg.sender)][arg1].field_1536 = booking[address(msg.sender)][arg1].field_0
                    require arg1 < booking[address(msg.sender)].field_0
                    require booking[address(msg.sender)][arg1].field_256 <= 5
                    booking[address(msg.sender)][arg1].field_256 = booking[address(msg.sender)][arg1].field_256
                    require booking[address(msg.sender)][arg1].field_1024 <= 2
                    booking[address(msg.sender)][arg1].field_1024 = booking[address(msg.sender)][arg1].field_1024
                    require booking[address(msg.sender)][arg1].field_0 <= visitingUnicorns
                    visitingUnicorns -= booking[address(msg.sender)][arg1].field_0
                    require ext_code.size(cardboardUnicornTokenAddress)
                    call cardboardUnicornTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, booking[address(msg.sender)][arg1].field_0
                    require ext_call.success
                    emit BookingUpdate(booking[address(msg.sender)][arg1].field_0, msg.sender, arg1, 1);
                else:
                    require ext_code.size(cardboardUnicornTokenAddress)
                    call cardboardUnicornTokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if ext_call.return_data[0] - visitingUnicorns >= booking[address(msg.sender)][arg1].field_0 / 10 * birthPerTen:
                        require (booking[address(msg.sender)][arg1].field_0 / 10 * birthPerTen) + booking[address(msg.sender)][arg1].field_0 >= booking[address(msg.sender)][arg1].field_0
                        booking[address(msg.sender)][arg1].field_1024 = 1
                        booking[address(msg.sender)][arg1].field_1280 = block.number
                        booking[address(msg.sender)][arg1].field_1536 = (booking[address(msg.sender)][arg1].field_0 / 10 * birthPerTen) + booking[address(msg.sender)][arg1].field_0
                        require arg1 < booking[address(msg.sender)].field_0
                        require booking[address(msg.sender)][arg1].field_256 <= 5
                        booking[address(msg.sender)][arg1].field_256 = booking[address(msg.sender)][arg1].field_256
                        require booking[address(msg.sender)][arg1].field_1024 <= 2
                        booking[address(msg.sender)][arg1].field_1024 = booking[address(msg.sender)][arg1].field_1024
                        require (booking[address(msg.sender)][arg1].field_0 / 10 * birthPerTen) + booking[address(msg.sender)][arg1].field_0 <= visitingUnicorns
                        visitingUnicorns = visitingUnicorns - (booking[address(msg.sender)][arg1].field_0 / 10 * birthPerTen) - booking[address(msg.sender)][arg1].field_0
                        require ext_code.size(cardboardUnicornTokenAddress)
                        call cardboardUnicornTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (booking[address(msg.sender)][arg1].field_0 / 10 * birthPerTen) + booking[address(msg.sender)][arg1].field_0
                        require ext_call.success
                        emit BookingUpdate(((booking[address(msg.sender)][arg1].field_0 / 10 * birthPerTen) + booking[address(msg.sender)][arg1].field_0), msg.sender, arg1, 1);
                    else:
                        require ext_call.return_data[0] - visitingUnicorns + booking[address(msg.sender)][arg1].field_0 >= booking[address(msg.sender)][arg1].field_0
                        booking[address(msg.sender)][arg1].field_1024 = 1
                        booking[address(msg.sender)][arg1].field_1280 = block.number
                        booking[address(msg.sender)][arg1].field_1536 = ext_call.return_data[0] - visitingUnicorns + booking[address(msg.sender)][arg1].field_0
                        require arg1 < booking[address(msg.sender)].field_0
                        require booking[address(msg.sender)][arg1].field_256 <= 5
                        booking[address(msg.sender)][arg1].field_256 = booking[address(msg.sender)][arg1].field_256
                        require booking[address(msg.sender)][arg1].field_1024 <= 2
                        booking[address(msg.sender)][arg1].field_1024 = booking[address(msg.sender)][arg1].field_1024
                        require ext_call.return_data[0] - visitingUnicorns + booking[address(msg.sender)][arg1].field_0 <= visitingUnicorns
                        visitingUnicorns = (2 * visitingUnicorns) - ext_call.return_data[0] - booking[address(msg.sender)][arg1].field_0
                        require ext_code.size(cardboardUnicornTokenAddress)
                        call cardboardUnicornTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0] - visitingUnicorns + booking[address(msg.sender)][arg1].field_0
                        require ext_call.success
                        emit BookingUpdate((ext_call.return_data[0] - visitingUnicorns + booking[address(msg.sender)][arg1].field_0), msg.sender, arg1, 1);
}



}
