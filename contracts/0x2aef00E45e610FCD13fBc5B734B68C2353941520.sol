contract main {




// =====================  Runtime code  =====================


address owner;
address cfoAddress;
address feeAddr;
uint8 activated_; offset 128
uint128 lockedInBets;
uint256 MIN_BET;
uint256 sub_7e95b523;
mapping of struct betInfo;
mapping of address stor7;

function cfo() {
    return cfoAddress
}

function feeAddr() {
    return feeAddr
}

function MIN_BET() {
    return MIN_BET
}

function getBetInfo(uint256 arg1) {
    return betInfo[arg1].field_0, 
           betInfo[arg1].field_256,
           betInfo[arg1].field_256,
           betInfo[arg1].field_256,
           betInfo[arg1].field_256,
           betInfo[arg1].field_256,
           betInfo[arg1].field_256,
           betInfo[arg1].field_512,
           betInfo[arg1].field_768,
           betInfo[arg1].field_1024
}

function sub_7e95b523(?) {
    return sub_7e95b523
}

function owner() {
    return owner
}

function activated_() {
    return activated_
}

function lockedInBets() {
    return lockedInBets
}

function kill() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_5ed26cc7(?) {
    if cfoAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'sorry, not cfo/owner'
    activated_ = arg1
}

function sub_30abb6d0(?) payable {
    if activated_ != 1:
        revert with 0, '-sorry, its not start yet.'
    if arg2 != msg.sender:
        revert with 0, 'should be same one.'
    stor7[arg1] = arg2
}

function setBetLimit(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    MIN_BET = arg1
    sub_7e95b523 = arg2
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    if owner == arg1:
        return 0
    owner = arg1
    return 1
}

function setFeeAddr(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    if feeAddr == arg1:
        return 0
    feeAddr = arg1
    return 1
}

function setCfo(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    if cfoAddress == arg1:
        return 0
    cfoAddress = arg1
    return 1
}

function withdrawFunds(address arg1, uint256 arg2) {
    if cfoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCfo methods called by non-cfo.'
    if activated_ != 1:
        revert with 0, '-sorry, its not start yet.'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, arg1);
    else:
        emit Payment(arg2, arg1);
}

function refundBet(uint256 arg1) {
    if cfoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCfo methods called by non-cfo.'
    if activated_ != 1:
        revert with 0, '-sorry, its not start yet.'
    if not betInfo[arg1].field_312:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'bet should be in a 'placebet' state.'
    if not betInfo[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in an 'active' state'
    if betInfo[arg1].field_480 == 1:
        revert with 0, 'The bet has been processed'
    if 2 == betInfo[arg1].field_480:
        revert with 0, 'The bet has been processed'
    lockedInBets = uint128(lockedInBets - betInfo[arg1].field_512)
    call betInfo[arg1].field_312 with:
       value betInfo[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(betInfo[arg1].field_0, betInfo[arg1].field_312);
    else:
        emit Payment(betInfo[arg1].field_0, betInfo[arg1].field_312);
}

function sub_646d0f70(?) {
    if cfoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCfo methods called by non-cfo.'
    if activated_ != 1:
        revert with 0, '-sorry, its not start yet.'
    if not betInfo[arg1].field_312:
        revert with 0, 'bet should be in a 'placebet' state.'
    if betInfo[arg1].field_480:
        revert with 0, 'bet should be in a 'win = null' state.'
    if arg3 < 1:
        revert with 0, 'high modulo range, betMask larger than 100.'
    if arg3 > 100:
        revert with 0, 'high modulo range, betMask larger than 100.'
    if betInfo[arg1].field_272 > block.number:
        revert with 0, 'settleBet in the same block as placeBet, or before.'
    if arg2 != block.hash(betInfo[arg1].field_272):
        emit 0xf0ca0ae2: block.hash(betInfo[arg1].field_272), arg2
    if 0 == betInfo[arg1].field_0:
        revert with 0, 'Bet should be in an 'active' state'
    betInfo[arg1].field_472 = arg3
    if betInfo[arg1].field_264 <= arg3:
        call feeAddr with:
           value betInfo[arg1].field_1024 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit FailedPayment(betInfo[arg1].field_1024, feeAddr);
        else:
            emit Payment(betInfo[arg1].field_1024, feeAddr);
        lockedInBets = uint128(lockedInBets - betInfo[arg1].field_512)
        betInfo[arg1].field_480 = 2
        betInfo[arg1].field_512 = 0
    else:
        call feeAddr with:
           value betInfo[arg1].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit FailedPayment(betInfo[arg1].field_768, feeAddr);
            call betInfo[arg1].field_312 with:
               value betInfo[arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
            emit FailedPayment(betInfo[arg1].field_512, betInfo[arg1].field_312);
        else:
            emit Payment(betInfo[arg1].field_768, feeAddr);
            call betInfo[arg1].field_312 with:
               value betInfo[arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
            emit Payment(betInfo[arg1].field_512, betInfo[arg1].field_312);
        lockedInBets = uint128(lockedInBets - betInfo[arg1].field_512)
        betInfo[arg1].field_480 = 1
}

function sub_0d72c639(?) payable {
    mem[128 len arg5.length] = arg5[all]
    if activated_ != 1:
        revert with 0, '-sorry, its not start yet.'
    if betInfo[arg4].field_312:
        revert with 0, 'Bet should be in a 'clean' state.'
    if arg5.length != 65:
        revert with 0, 'Invalid sig Data .'
    if arg2 != 100:
        revert with 0, 'modulo should be 100.'
    if msg.value < MIN_BET:
        revert with 0, 'Amount should be within range.'
    if msg.value > sub_7e95b523:
        revert with 0, 'Amount should be within range.'
    if arg1 < 2:
        revert with 0, 'High modulo range, betMask larger than 98.'
    if arg1 > 96:
        revert with 0, 'High modulo range, betMask larger than 98.'
    mem[ceil32(arg5.length) + 160] = arg4
    mem[ceil32(arg5.length) + 192] = arg3
    mem[ceil32(arg5.length) + 128] = 64
    if mem[192 len 1] >= 27:
        if mem[192 len 1] != 27:
            if mem[192 len 1] != 28:
                revert with 0, 'ECDSA signature is not valid.'
        signer = erecover(sha3(arg4, arg3), mem[161] << 248, mem[128], mem[160]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg4, arg3)), mem[161] << 248, mem[128], mem[160]) 
    else:
        if uint8(mem[192 len 1] + 27) != 27:
            if uint8(mem[192 len 1] + 27) != 28:
                revert with 0, 'ECDSA signature is not valid.'
        signer = erecover(sha3(arg4, arg3), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg4, arg3)), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != cfoAddress:
        if address(signer) != cfoAddress:
            revert with 0, 'ECDSA signature is not valid.'
    require (10 * arg1) - 10
    require (10 * arg1) - 10
    lockedInBets = uint128((10 * msg.value * arg2 / (10 * arg1) - 10) - (10 * 15 * msg.value / 1000 * arg2 / (10 * arg1) - 10) + lockedInBets)
    emit Commit(arg4);
    betInfo[arg4].field_0 = msg.value
    betInfo[arg4].field_256 = uint8(arg2)
    betInfo[arg4].field_264 = uint8(arg1)
    betInfo[arg4].field_312 = msg.sender
    betInfo[arg4].field_272 = block.number % 1099511627776
    betInfo[arg4].field_512 = (10 * msg.value * arg2 / (10 * arg1) - 10) - (10 * 15 * msg.value / 1000 * arg2 / (10 * arg1) - 10)
    betInfo[arg4].field_768 = 10 * 15 * msg.value / 1000 * arg2 / (10 * arg1) - 10
    betInfo[arg4].field_1024 = 15 * msg.value / 1000
}



}
