contract main {




// =====================  Runtime code  =====================


#
#  - settleBet(uint256[] arg1, bytes32 arg2)
#  - settleBetVerifi(uint256[] arg1, bytes32 arg2)
#
uint256 jackpotSize;
uint256 sub_d956f0b0;
uint256 stor10;
address owner;
address stor12;
address managerAddress;
address stor14;
array of struct sub_11ee2048;
address sub_433384c9Address;
address verifierAddress;
mapping of struct bets;
array of uint32 stor19;
uint256 MIN_BET;
uint256 sub_7e95b523;
uint256 MAX_AMOUNT;
uint256 maxProfit;
uint256 sub_7a11eb4f;
uint8 platformFeePercentage;
uint8 sub_966e043e; offset 8
uint8 sub_732db92d; offset 16
uint256 lockedInBets;
uint128 stor9;
uint128 stor9; offset 128
uint256 sub_08c7389f;

function sub_08c7389f(?) {
    return sub_08c7389f
}

function sub_11ee2048(?) {
    require arg1 < sub_11ee2048.length
    return address(sub_11ee2048[arg1].field_0)
}

function bets(uint256 arg1) {
    return bets[arg1].field_0, bets[arg1].field_256 % 1099511627776, address(bets[arg1].field_296)
}

function verifier() {
    return verifierAddress
}

function sub_433384c9(?) {
    return sub_433384c9Address
}

function manager() {
    return managerAddress
}

function jackpotSize() {
    return jackpotSize
}

function MIN_BET() {
    return MIN_BET
}

function sub_732db92d(?) {
    return sub_732db92d
}

function sub_7a11eb4f(?) {
    return sub_7a11eb4f
}

function sub_7e95b523(?) {
    return sub_7e95b523
}

function owner() {
    return owner
}

function sub_966e043e(?) {
    return sub_966e043e
}

function maxProfit() {
    return maxProfit
}

function sub_bf388360(?) {
    require arg1 < stor19.length
    return sub_bf388360[uint8(arg1)]
}

function platformFeePercentage() {
    return platformFeePercentage
}

function MAX_AMOUNT() {
    return MAX_AMOUNT
}

function sub_d956f0b0(?) {
    return sub_d956f0b0
}

function lockedInBets() {
    return lockedInBets
}

function kill() {
    require msg.sender == owner
    require not lockedInBets
    require not sub_08c7389f
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function acceptNextOwner() {
    require msg.sender == stor12
    owner = stor12
}

function sub_b94baf95(?) {
    require msg.sender == managerAddress
    MIN_BET = arg1
}

function sub_b012c253(?) {
    require msg.sender == managerAddress
    MAX_AMOUNT = arg1
}

function acceptNextManager() {
    require msg.sender == stor14
    managerAddress = stor14
}

function sub_b7b99fff(?) {
    require msg.sender == managerAddress
    sub_7e95b523 = arg1
}

function setVerifier(address arg1) {
    require msg.sender == owner
    verifierAddress = arg1
}

function updateBitComparisonMask(bytes32 arg1) {
    require msg.sender == owner
    stor10 = arg1
}

function updateJackpotFeePercentage(uint8 arg1) {
    require msg.sender == owner
    sub_966e043e = arg1
}

function setTokenAddress(address arg1) {
    require msg.sender == managerAddress
    sub_433384c9Address = arg1
}

function updateERC20rewardMultiple(uint8 arg1) {
    require msg.sender == managerAddress
    sub_732db92d = arg1
}

function updatePlatformFeePercentage(uint8 arg1) {
    require msg.sender == owner
    platformFeePercentage = arg1
}

function approveNextOwner(address arg1) {
    require msg.sender == owner
    require owner != arg1
    stor12 = arg1
}

function setMaxProfit(uint256 arg1) {
    require msg.sender == owner
    require arg1 < MAX_AMOUNT
    maxProfit = arg1
}

function sub_ae801332(?) payable {
    return sha3(sha3(arg2, arg1), arg3), sha3(sha3(sha3(arg2, arg1), arg3), arg1), block.hash(arg4)
}

function approveNextManager(address arg1) {
    require msg.sender == managerAddress
    require managerAddress != arg1
    stor14 = arg1
}

function setSecretSignerByIndex(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 < sub_11ee2048.length
    address(sub_11ee2048[arg2].field_0) = arg1
}

function sendFundsToOwner(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0xcba1f008: arg2, arg1
    else:
        emit 0x8bca6990: arg2, arg1
}

function updateWithdrawalModeByIndex(uint8 arg1, uint32 arg2) {
    require msg.sender == managerAddress
    require arg1 < stor19.length
    stor19[uint8(arg1) / 8].field_0 = arg2 * 256^(4 * arg1 % 8) or !(test266151307() * 256^(4 * arg1 % 8)) and stor19[uint8(arg1) / 8].field_0
}

function sendFundsToManager(uint256 arg1) {
    require msg.sender == owner
    call managerAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0x20fbd8c4: arg1, managerAddress
    else:
        emit 0xa23b18a6: arg1, managerAddress
}

function withdrawAllFunds(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(eth.balance(this.address), arg1);
    else:
        lockedInBets = 0
        emit Payment(eth.balance(this.address), arg1);
}

function sendTokenFundsToManager(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(sub_433384c9Address)
    call sub_433384c9Address.0xa9059cbb with:
         gas gas_remaining wei
        args managerAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPayment(arg1, managerAddress);
}

function clearStorage(uint256[] arg1) {
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 18
        if not bets[cd[((32 * idx) + arg1 + 36)]].field_0:
            if block.number > bets[cd[((32 * idx) + arg1 + 36)]].field_256 % 1099511627776 + 250:
                Mask(200, 0, bets[cd[((32 * idx) + arg1 + 36)]].field_256) = 0
        idx = idx + 1
        continue 
}

function withdrawFunds(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= eth.balance(this.address)
    require lockedInBets + jackpotSize >= jackpotSize
    require arg2 >= 0
    require 2 * arg2 >= arg2
    require (2 * arg2) + lockedInBets + jackpotSize <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, arg1);
    else:
        emit Payment(arg2, arg1);
}

function getBonusPercentageByMachineMode(uint8 arg1) {
    if not arg1:
        if 0 < stor19.length:
            if 1 < stor19.length:
                return uint32(stor19.field_0), uint32(stor19.field_32)
    else:
        require 2 * uint8(arg1) / arg1 == 2
        if 2 * uint8(arg1) < stor19.length:
            require (2 * uint8(arg1)) + 1 >= 2 * uint8(arg1)
            if (2 * uint8(arg1)) + 1 < stor19.length:
                return uint32(stor19[uint8(arg1) / 4].field_(64 * arg1 % 4) - 224), 
                       stor('array', ('div', 0.125, ('add', 1, ('mask_shl', 8, 0, 1, ('param', 'arg1')))), ('name', 'stor19', 19))[uint8((2 * uint8(arg1)) + 1)]
    revert
}

function setSecretSignerList(address[] arg1) {
    require msg.sender == owner
    sub_11ee2048.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_11ee2048.length > idx:
            address(sub_11ee2048[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            address(sub_11ee2048[s].field_0) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_11ee2048.length > idx:
            address(sub_11ee2048[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function getContractAddress() {
    if sub_11ee2048.length:
        mem[128] = address(sub_11ee2048.field_0)
        idx = 128
        s = 0
        while (32 * sub_11ee2048.length) + 96 > idx:
            mem[idx + 32] = address(sub_11ee2048[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_11ee2048.length) + 288 len floor32(sub_11ee2048.length)] = mem[128 len floor32(sub_11ee2048.length)]
    return owner, 
           managerAddress,
           Array(len=sub_11ee2048.length, data=mem[128 len floor32(sub_11ee2048.length)], mem[(32 * sub_11ee2048.length) + floor32(sub_11ee2048.length) + 288 len (32 * sub_11ee2048.length) - floor32(sub_11ee2048.length)]),
           sub_433384c9Address
}

function getContractInformation() {
    if stor19.length:
        mem[128] = uint32(stor19.field_0)
        idx = 128
        s = 0
        while (32 * stor19.length) + 96 > idx:
            mem[idx + 32] = uint32(stor19.field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
    mem[(32 * stor19.length) + 544 len floor32(stor19.length)] = mem[128 len floor32(stor19.length)]
    return jackpotSize, 
           sub_d956f0b0,
           MIN_BET,
           sub_7e95b523,
           MAX_AMOUNT,
           platformFeePercentage,
           platformFeePercentage,
           maxProfit,
           sub_7a11eb4f,
           lockedInBets,
           sub_08c7389f,
           Array(len=stor19.length, data=mem[128 len floor32(stor19.length)], mem[(32 * stor19.length) + floor32(stor19.length) + 544 len (32 * stor19.length) - floor32(stor19.length)])
}

function withdrawAlltokenFunds(address arg1) {
    require msg.sender == owner
    require ext_code.size(sub_433384c9Address)
    call sub_433384c9Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_433384c9Address)
    call sub_433384c9Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_08c7389f = 0
    require ext_code.size(sub_433384c9Address)
    call sub_433384c9Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPayment(ext_call.return_data[0], arg1);
}

function getPossibleWinAmount(uint256 arg1, uint256 arg2) {
    if not arg2:
        if not arg2:
            if not arg2:
                return 0
            require arg1 * arg2 / arg2 == arg1
            return 0, 0, arg1 * arg2 / 10000
        require sub_966e043e * arg2 / arg2 == sub_966e043e
        if not arg2:
            return 0, sub_966e043e * arg2 / 1000, 0
        require arg1 * arg2 / arg2 == arg1
        return 0, sub_966e043e * arg2 / 1000, arg1 * arg2 / 10000
    require platformFeePercentage * arg2 / arg2 == platformFeePercentage
    if not arg2:
        if not arg2:
            return platformFeePercentage * arg2 / 1000, 0, 0
        require arg1 * arg2 / arg2 == arg1
        return platformFeePercentage * arg2 / 1000, 0, arg1 * arg2 / 10000
    require sub_966e043e * arg2 / arg2 == sub_966e043e
    if not arg2:
        return platformFeePercentage * arg2 / 1000, sub_966e043e * arg2 / 1000, 0
    require arg1 * arg2 / arg2 == arg1
    return platformFeePercentage * arg2 / 1000, sub_966e043e * arg2 / 1000, arg1 * arg2 / 10000
}

function withdrawToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(sub_433384c9Address)
    call sub_433384c9Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require sub_08c7389f + sub_d956f0b0 >= sub_d956f0b0
    require arg2 >= 0
    require ext_code.size(sub_433384c9Address)
    call sub_433384c9Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + sub_08c7389f + sub_d956f0b0 <= ext_call.return_data[0]
    require ext_code.size(sub_433384c9Address)
    call sub_433384c9Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPayment(arg2, arg1);
}

function placeBet(uint256[] arg1, bytes32 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, bytes32 arg6, uint8 arg7) payable {
    require 0 < arg1.length
    require uint8(cd[(arg1 + 36)]) != 0
    require arg3 >= block.number
    signer = erecover(arg2, arg7 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require 2 < arg1.length
    require cd[(arg1 + 100)] < sub_11ee2048.length
    require address(sub_11ee2048[cd[(arg1 + 100)]].field_0) == address(signer)
    require not address(bets[arg4].field_296)
    require 1 < arg1.length
    require cd[(arg1 + 68)] + lockedInBets >= lockedInBets
    lockedInBets += cd[(arg1 + 68)]
    require maxProfit + msg.value >= msg.value
    require 1 < arg1.length
    require cd[(arg1 + 68)] <= maxProfit + msg.value
    require eth.balance(this.address) >= lockedInBets
    bets[arg4].field_0 = msg.value
    bets[arg4].field_256 % 1099511627776 = block.number % 1099511627776
    Mask(216, 0, bets[arg4].field_296) = Mask(216, 0, msg.sender)
    require 0 < arg1.length
    emit 0x893924b4: msg.value, uint8(cd[(arg1 + 36)]), msg.sender
}

function updateWithdrawalMode(uint32[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == managerAddress
    stor19.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor19.length + 7 / 8 > idx:
            uint32(stor19[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            uint256(stor19.field_0) = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and uint256(stor19.field_0)
            s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
            idx = idx + 32
            continue 
        idx = floor32(arg1.length) >> 3
        s = sha3(19)
        while idx:
            stor[s] = !(test266151307() * 256^idx) and stor[s]
            idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
            s = (idx + 7 / 32) + s
            continue 
        idx = (floor32(arg1.length) >> 3) + Mask(252, 2, None + -(floor32(arg1.length) >> 3) + 5) + 7 / 32 * Mask(254, 0, None + -(floor32(arg1.length) >> 3) + 5) >> 2
        while stor19.length + 7 / 8 > idx:
            uint32(stor19[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function placeTokenBet(uint256[] arg1, bytes32 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, bytes32 arg6, uint8 arg7, uint256 arg8, address arg9) {
    require 0 < arg1.length
    require cd[(arg1 + 36)] != 0
    require arg3 >= block.number
    signer = erecover(arg2, arg7 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require 2 < arg1.length
    require cd[(arg1 + 100)] < sub_11ee2048.length
    require address(sub_11ee2048[cd[(arg1 + 100)]].field_0) == address(signer)
    require not address(bets[arg4].field_296)
    require 1 < arg1.length
    require cd[(arg1 + 68)] + sub_08c7389f >= sub_08c7389f
    sub_08c7389f += cd[(arg1 + 68)]
    require sub_7a11eb4f + arg8 >= arg8
    require 1 < arg1.length
    require cd[(arg1 + 68)] <= sub_7a11eb4f + arg8
    require ext_code.size(sub_433384c9Address)
    call sub_433384c9Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_08c7389f <= ext_call.return_data[0]
    bets[arg4].field_0 = arg8
    bets[arg4].field_256 % 1099511627776 = block.number % 1099511627776
    address(bets[arg4].field_296) = arg9
    require 0 < arg1.length
    emit 0x893924b4: arg8, uint8(cd[(arg1 + 36)]), arg9
}

function initialParameter(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint8 arg9, uint8 arg10, uint8 arg11, uint32[] arg12) {
    require msg.sender == owner
    managerAddress = arg1
    sub_11ee2048.length = arg2.length
    if not arg2.length:
        idx = 0
        while sub_11ee2048.length > idx:
            address(sub_11ee2048[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg2 + 36
        while arg2 + (32 * arg2.length) + 36 > idx:
            address(sub_11ee2048[s].field_0) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while sub_11ee2048.length > idx:
            address(sub_11ee2048[idx].field_0) = 0
            idx = idx + 1
            continue 
    sub_433384c9Address = arg3
    MIN_BET = arg4
    sub_7e95b523 = arg5
    maxProfit = arg6
    sub_7a11eb4f = arg7
    MAX_AMOUNT = arg8
    platformFeePercentage = arg9
    sub_966e043e = arg10
    sub_732db92d = arg11
    stor19.length = arg12.length
    if not arg12.length:
        idx = 0
        while stor19.length + 7 / 8 > idx:
            uint32(stor19[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg12 + 36
        while arg12 + (32 * arg12.length) + 36 > idx:
            uint256(stor19.field_0) = uint32(cd[idx]) * 256^s or !(test266151307() * 256^s) and uint256(stor19.field_0)
            s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
            idx = idx + 32
            continue 
        idx = floor32(arg12.length) >> 3
        s = sha3(19)
        while idx:
            stor[s] = !(test266151307() * 256^idx) and stor[s]
            idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
            s = (idx + 7 / 32) + s
            continue 
        idx = (floor32(arg12.length) >> 3) + Mask(252, 2, None + -(floor32(arg12.length) >> 3) + 5) + 7 / 32 * Mask(254, 0, None + -(floor32(arg12.length) >> 3) + 5) >> 2
        while stor19.length + 7 / 8 > idx:
            uint32(stor19[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function refundBet(uint256 arg1, uint8 arg2) {
    if not bets[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in an 'active' state'
    require bets[arg1].field_256 % 1099511627776 + 250 >= bets[arg1].field_256 % 1099511627776
    require block.number > bets[arg1].field_256 % 1099511627776 + 250
    bets[arg1].field_0 = 0
    if not arg2:
        require 0 < stor19.length
        require 1 < stor19.length
        if bets[arg1].field_0:
            require platformFeePercentage * bets[arg1].field_0 / bets[arg1].field_0 == platformFeePercentage
        if bets[arg1].field_0:
            require sub_966e043e * bets[arg1].field_0 / bets[arg1].field_0 == sub_966e043e
        if not bets[arg1].field_0:
            require 0 <= lockedInBets
        else:
            require uint32(stor19.field_32) * bets[arg1].field_0 / bets[arg1].field_0 == uint32(stor19.field_32)
            require uint32(stor19.field_32) * bets[arg1].field_0 / 10000 <= lockedInBets
            lockedInBets -= uint32(stor19.field_32) * bets[arg1].field_0 / 10000
    else:
        require 2 * uint8(arg2) / arg2 == 2
        require 2 * uint8(arg2) < stor19.length
        require (2 * uint8(arg2)) + 1 >= 2 * uint8(arg2)
        require (2 * uint8(arg2)) + 1 < stor19.length
        if bets[arg1].field_0:
            require platformFeePercentage * bets[arg1].field_0 / bets[arg1].field_0 == platformFeePercentage
        if bets[arg1].field_0:
            require sub_966e043e * bets[arg1].field_0 / bets[arg1].field_0 == sub_966e043e
        if not bets[arg1].field_0:
            require 0 <= lockedInBets
        else:
            require stor('array', ('div', 0.125, ('add', 1, ('mask_shl', 8, 0, 1, ('param', 'arg2')))), ('name', 'stor19', 19))[uint8((2 * uint8(arg2)) + 1)] * bets[arg1].field_0 / bets[arg1].field_0 == stor('array', ('div', 0.125, ('add', 1, ('mask_shl', 8, 0, 1, ('param', 'arg2')))), ('name', 'stor19', 19))[uint8((2 * uint8(arg2)) + 1)]
            require stor('array', ('div', 0.125, ('add', 1, ('mask_shl', 8, 0, 1, ('param', 'arg2')))), ('name', 'stor19', 19))[uint8((2 * uint8(arg2)) + 1)] * bets[arg1].field_0 / 10000 <= lockedInBets
            lockedInBets -= stor('array', ('div', 0.125, ('add', 1, ('mask_shl', 8, 0, 1, ('param', 'arg2')))), ('name', 'stor19', 19))[uint8((2 * uint8(arg2)) + 1)] * bets[arg1].field_0 / 10000
    call address(bets[arg1].field_296) with:
       value bets[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(bets[arg1].field_0, address(bets[arg1].field_296));
    else:
        emit Payment(bets[arg1].field_0, address(bets[arg1].field_296));
}

function refundTokenBet(uint256 arg1, uint8 arg2) {
    if not bets[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in an 'active' state'
    require bets[arg1].field_256 % 1099511627776 + 250 >= bets[arg1].field_256 % 1099511627776
    require block.number > bets[arg1].field_256 % 1099511627776 + 250
    bets[arg1].field_0 = 0
    if not arg2:
        require 0 < stor19.length
        require 1 < stor19.length
        if bets[arg1].field_0:
            require platformFeePercentage * bets[arg1].field_0 / bets[arg1].field_0 == platformFeePercentage
        if bets[arg1].field_0:
            require sub_966e043e * bets[arg1].field_0 / bets[arg1].field_0 == sub_966e043e
        if not bets[arg1].field_0:
            require 0 <= sub_08c7389f
            sub_08c7389f = uint128(stor9.field_0)
        else:
            require uint32(stor19.field_32) * bets[arg1].field_0 / bets[arg1].field_0 == uint32(stor19.field_32)
            require uint32(stor19.field_32) * bets[arg1].field_0 / 10000 <= sub_08c7389f
            uint128(stor9.field_0) = uint128(sub_08c7389f - (uint32(stor19.field_32) * bets[arg1].field_0 / 10000))
            uint128(stor9.field_128) = 0
    else:
        require 2 * uint8(arg2) / arg2 == 2
        require 2 * uint8(arg2) < stor19.length
        require (2 * uint8(arg2)) + 1 >= 2 * uint8(arg2)
        require (2 * uint8(arg2)) + 1 < stor19.length
        if bets[arg1].field_0:
            require platformFeePercentage * bets[arg1].field_0 / bets[arg1].field_0 == platformFeePercentage
        if bets[arg1].field_0:
            require sub_966e043e * bets[arg1].field_0 / bets[arg1].field_0 == sub_966e043e
        if not bets[arg1].field_0:
            require 0 <= sub_08c7389f
            sub_08c7389f = uint128(stor9.field_0)
        else:
            require stor('array', ('div', 0.125, ('add', 1, ('mask_shl', 8, 0, 1, ('param', 'arg2')))), ('name', 'stor19', 19))[uint8((2 * uint8(arg2)) + 1)] * bets[arg1].field_0 / bets[arg1].field_0 == stor('array', ('div', 0.125, ('add', 1, ('mask_shl', 8, 0, 1, ('param', 'arg2')))), ('name', 'stor19', 19))[uint8((2 * uint8(arg2)) + 1)]
            require stor('array', ('div', 0.125, ('add', 1, ('mask_shl', 8, 0, 1, ('param', 'arg2')))), ('name', 'stor19', 19))[uint8((2 * uint8(arg2)) + 1)] * bets[arg1].field_0 / 10000 <= sub_08c7389f
            uint128(stor9.field_0) = uint128(sub_08c7389f - (stor('array', ('div', 0.125, ('add', 1, ('mask_shl', 8, 0, 1, ('param', 'arg2')))), ('name', 'stor19', 19))[uint8((2 * uint8(arg2)) + 1)] * bets[arg1].field_0 / 10000))
            uint128(stor9.field_128) = 0
    require ext_code.size(sub_433384c9Address)
    call sub_433384c9Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(bets[arg1].field_256), bets[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPayment(bets[arg1].field_0, address(bets[arg1].field_296));
}



}
