contract main {


// =======================  Init code  ======================


address stor5;

function _fallback() {
    stor5 = msg.sender
    return code.data[98 len 6919]
}



// =====================  Runtime code  =====================


const minPrice = 10^15


mapping of struct stor0;
array of uint256 ownedNumbers;
uint256 houseEarnings;
mapping of uint256 earnings;
mapping of uint256 deadbids;
address stor5;

function ownedNumbers(address arg1) {
    idx = 0
    while idx < ownedNumbers[address(arg1)]:
        mem[32] = 1
        require idx < ownedNumbers[address(arg1)]
        mem[0] = sha3(address(arg1), 1)
        require idx < ownedNumbers[address(arg1)]
        mem[(32 * idx) + 192] = ownedNumbers[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * ownedNumbers[address(arg1)]) + 256 len floor32(ownedNumbers[address(arg1)])] = mem[192 len floor32(ownedNumbers[address(arg1)])]
    return Array(len=ownedNumbers[address(arg1)], data=mem[192 len floor32(ownedNumbers[address(arg1)])], mem[(32 * ownedNumbers[address(arg1)]) + floor32(ownedNumbers[address(arg1)]) + 256 len (32 * ownedNumbers[address(arg1)]) - floor32(ownedNumbers[address(arg1)])]), 
}

function hasBuyNowOffer(uint256 arg1) {
    return bool(stor0[arg1].field_768)
}

function earnings(address arg1) {
    return earnings[arg1]
}

function ownershipLookup(address arg1, uint256 arg2) {
    require arg2 < ownedNumbers[arg1]
    return ownedNumbers[arg1][arg2]
}

function houseEarnings() {
    return houseEarnings
}

function deadbids(address arg1) {
    return deadbids[arg1]
}

function _fallback() payable {
    revert
}

function hasOwner(uint256 arg1) {
    return (stor0[arg1].field_0 > 0)
}

function isOwner(address arg1, uint256 arg2) {
    return (stor0[arg2].field_0 == arg1)
}

function cancelBuyNowOffer(uint256 arg1) {
    require stor0[arg1].field_0 == msg.sender
    stor0[arg1].field_1024 = 0
    stor0[arg1].field_768 = 0
}

function updateMessage(uint256 arg1, string arg2) {
    require stor0[arg1].field_0 == msg.sender
    stor0[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function canAcceptBuyNow(uint256 arg1, address arg2) {
    if stor0[arg1].field_0 == arg2:
        return stor0[arg1].field_0 != arg2
    return bool(stor0[arg1].field_768)
}

function withdrawEarnings() {
    earnings[address(msg.sender)] = 0
    call msg.sender with:
       value earnings[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawDeadBids() {
    deadbids[address(msg.sender)] = 0
    call msg.sender with:
       value deadbids[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawHouseEarnings() {
    require msg.sender == stor5
    houseEarnings = 0
    call msg.sender with:
       value houseEarnings wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function placeBuyNowOffer(uint256 arg1, uint256 arg2) {
    require stor0[arg1].field_0 == msg.sender
    require arg2 >= 10^15
    stor0[arg1].field_1024 = arg2
    stor0[arg1].field_768 = 1
    emit PriceSet(arg2, arg1);
}

function cancelBid(uint256 arg1) {
    require msg.sender == stor0[arg1].field_1280
    deadbids[stor0[arg1].field_1280] += stor0[arg1].field_1536
    stor0[arg1].field_1536 = 0
    stor0[arg1].field_1280 = 0
    emit BidCanceled(stor0[arg1].field_1536, arg1);
}

function placeNewBid(uint256 arg1) payable {
    require stor0[arg1].field_0 > 0
    require stor0[arg1].field_0 != msg.sender
    require msg.value >= 10^15
    require msg.value > stor0[arg1].field_1536 + 10^15
    deadbids[stor0[arg1].field_1280] += stor0[arg1].field_1536
    stor0[arg1].field_1536 = msg.value
    stor0[arg1].field_1280 = msg.sender
    emit BidPlaced(msg.value, arg1);
}

function ownership(uint256 arg1) {
    mem[352] = stor0[arg1][2].field_0
    idx = 352
    s = 0
    while stor0[arg1][2].length + 352 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[352 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32)]),
           bool(stor0[arg1].field_768),
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536
}

function takeNumber(uint256 arg1) {
    require stor0[arg1].field_0 <= 0
    require stor0[arg1].field_0 != msg.sender
    stor0[arg1].field_0 = msg.sender
    stor0[arg1].field_256 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_513 = 0
    stor0[arg1].field_520 = mem[352 len 31]
    idx = 0
    while stor0[arg1][2].length + 31 / 32 > idx:
        stor0[arg1][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    stor0[arg1].field_768 = 0
    stor0[arg1].field_1024 = 0
    stor0[arg1].field_1280 = 0
    stor0[arg1].field_1536 = 0
    stor0[arg1].field_1536 = 0
    ownedNumbers[address(msg.sender)]++
    if not ownedNumbers[address(msg.sender)] <= ownedNumbers[address(msg.sender)] + 1:
        idx = ownedNumbers[address(msg.sender)] + 1
        while ownedNumbers[address(msg.sender)] > idx:
            ownedNumbers[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    ownedNumbers[address(msg.sender)][ownedNumbers[address(msg.sender)]] = arg1
    stor0[arg1].field_256 = ownedNumbers[address(msg.sender)] - 1
    emit NumberTaken(arg1);
}

function acceptBid(uint256 arg1) {
    require stor0[arg1].field_0 == msg.sender
    require stor0[arg1].field_1536 > 0
    require stor0[arg1].field_1280
    earnings[stor0[arg1].field_0] = earnings[stor0[arg1].field_0] + stor0[arg1].field_1536 - (stor0[arg1].field_1536 / 100)
    houseEarnings += stor0[arg1].field_1536 / 100
    require stor0[arg1].field_0 == stor0[arg1].field_0
    stor0[arg1].field_0 = stor0[arg1].field_1280
    require ownedNumbers[stor0[arg1].field_0] - 1 < ownedNumbers[stor0[arg1].field_0]
    require stor0[arg1].field_256 < ownedNumbers[stor0[arg1].field_0]
    ownedNumbers[stor0[arg1].field_0][stor0[arg1].field_256] = ownedNumbers[stor0[arg1].field_0][ownedNumbers[stor0[arg1].field_0]]
    ownedNumbers[stor0[arg1].field_0]--
    if not ownedNumbers[stor0[arg1].field_0] <= ownedNumbers[stor0[arg1].field_0] - 1:
        idx = ownedNumbers[stor0[arg1].field_0] - 1
        while ownedNumbers[stor0[arg1].field_0] > idx:
            ownedNumbers[stor0[arg1].field_0][idx] = 0
            idx = idx + 1
            continue 
    ownedNumbers[stor0[arg1].field_1280]++
    if not ownedNumbers[stor0[arg1].field_1280] <= ownedNumbers[stor0[arg1].field_1280] + 1:
        idx = ownedNumbers[stor0[arg1].field_1280] + 1
        while ownedNumbers[stor0[arg1].field_1280] > idx:
            ownedNumbers[stor0[arg1].field_1280][idx] = 0
            idx = idx + 1
            continue 
    ownedNumbers[stor0[arg1].field_1280][ownedNumbers[stor0[arg1].field_1280]] = arg1
    stor0[arg1].field_256 = ownedNumbers[stor0[arg1].field_1280] - 1
    stor0[arg1].field_1280 = 0
    stor0[arg1].field_1536 = 0
    emit BidAccepted(stor0[arg1].field_1536, arg1);
}

function acceptBuyNowOffer(uint256 arg1) payable {
    require stor0[arg1].field_0 != msg.sender
    require stor0[arg1].field_768
    require msg.value == stor0[arg1].field_1024
    earnings[stor0[arg1].field_0] = earnings[stor0[arg1].field_0] + msg.value - (msg.value / 100)
    houseEarnings += msg.value / 100
    deadbids[stor0[arg1].field_1280] += stor0[arg1].field_1536
    stor0[arg1].field_1536 = 0
    stor0[arg1].field_1280 = 0
    require stor0[arg1].field_0 == stor0[arg1].field_0
    stor0[arg1].field_0 = msg.sender
    require ownedNumbers[stor0[arg1].field_0] - 1 < ownedNumbers[stor0[arg1].field_0]
    require stor0[arg1].field_256 < ownedNumbers[stor0[arg1].field_0]
    ownedNumbers[stor0[arg1].field_0][stor0[arg1].field_256] = ownedNumbers[stor0[arg1].field_0][ownedNumbers[stor0[arg1].field_0]]
    ownedNumbers[stor0[arg1].field_0]--
    if not ownedNumbers[stor0[arg1].field_0] <= ownedNumbers[stor0[arg1].field_0] - 1:
        idx = ownedNumbers[stor0[arg1].field_0] - 1
        while ownedNumbers[stor0[arg1].field_0] > idx:
            ownedNumbers[stor0[arg1].field_0][idx] = 0
            idx = idx + 1
            continue 
    ownedNumbers[address(msg.sender)]++
    if not ownedNumbers[address(msg.sender)] <= ownedNumbers[address(msg.sender)] + 1:
        idx = ownedNumbers[address(msg.sender)] + 1
        while ownedNumbers[address(msg.sender)] > idx:
            ownedNumbers[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    ownedNumbers[address(msg.sender)][ownedNumbers[address(msg.sender)]] = arg1
    stor0[arg1].field_256 = ownedNumbers[address(msg.sender)] - 1
    stor0[arg1].field_1024 = 0
    stor0[arg1].field_768 = 0
    emit PriceAccepted(msg.value, arg1);
}



}
