contract main {




// =====================  Runtime code  =====================


address owner;
address cfoAddress;
uint128 lockedInBets;
mapping of struct betInfo;

function cfo() {
    return cfoAddress
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
           betInfo[arg1].field_768
}

function owner() {
    return owner
}

function lockedInBets() {
    return lockedInBets
}

function kill() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if owner == arg1:
        return 0
    owner = arg1
    return 1
}

function setCfo(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if cfoAddress == arg1:
        return 0
    cfoAddress = arg1
    return 1
}

function withdrawFunds(address arg1, uint256 arg2) {
    if cfoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCfo methods called by non-co.'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCfo methods called by non-co.'
    if not betInfo[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in an 'active' state'
    if betInfo[arg1].field_480 == 1:
        revert with 0, 'The bet has been processed'
    if 2 == betInfo[arg1].field_480:
        revert with 0, 'The bet has been processed'
    if betInfo[arg1].field_0 / 100 >= 3 * 10^14:
        if betInfo[arg1].field_0 / 100 > betInfo[arg1].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
        require (10 * betInfo[arg1].field_264) - 10
        lockedInBets = uint128(lockedInBets - ((-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10))
    else:
        if 3 * 10^14 > betInfo[arg1].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
        require (10 * betInfo[arg1].field_264) - 10
        lockedInBets = uint128(lockedInBets - ((-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10))
    call betInfo[arg1].field_312 with:
       value betInfo[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(betInfo[arg1].field_0, betInfo[arg1].field_312);
    else:
        emit Payment(betInfo[arg1].field_0, betInfo[arg1].field_312);
}

function sub_0d72c639(?) payable {
    mem[128 len arg5.length] = arg5[all]
    if betInfo[arg4].field_312:
        revert with 0, 'Bet should be in a 'clean' state.'
    if arg5.length != 65:
        revert with 0, 'Invalid sig Data .'
    if msg.value < 10^16:
        revert with 0, 'Amount should be within range.'
    if msg.value > 5 * 10^18:
        revert with 0, 'Amount should be within range.'
    if arg1 < 2:
        revert with 0, 'High modulo range, betMask larger than 98.'
    if arg1 > 98:
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
    if msg.value / 100 >= 3 * 10^14:
        if msg.value / 100 > msg.value:
            revert with 0, 'Bet doesn't even cover house edge.'
        require (10 * arg1) - 10
        lockedInBets = uint128(((-15 * msg.value) + (10 * arg2 * msg.value) + (15 * msg.value / 100) - (10 * arg2 * msg.value / 100) / (10 * arg1) - 10) + lockedInBets)
        emit Commit(arg4);
        betInfo[arg4].field_0 = msg.value
        betInfo[arg4].field_256 = uint8(arg2)
        betInfo[arg4].field_264 = uint8(arg1)
        betInfo[arg4].field_272 = block.number % 1099511627776
        betInfo[arg4].field_312 = Mask(200, 0, msg.sender)
        betInfo[arg4].field_768 = msg.value / 100
    else:
        if 3 * 10^14 > msg.value:
            revert with 0, 'Bet doesn't even cover house edge.'
        require (10 * arg1) - 10
        lockedInBets = uint128(((-3 * 10^15 * arg2) + (-15 * msg.value) + (10 * arg2 * msg.value) + (125 * 10^10 * 3600) / (10 * arg1) - 10) + lockedInBets)
        emit Commit(arg4);
        betInfo[arg4].field_0 = msg.value
        betInfo[arg4].field_256 = uint8(arg2)
        betInfo[arg4].field_264 = uint8(arg1)
        betInfo[arg4].field_272 = block.number % 1099511627776
        betInfo[arg4].field_312 = Mask(200, 0, msg.sender)
        betInfo[arg4].field_768 = 3 * 10^14
}

function sub_f6a45ab4(?) payable {
    mem[128 len arg5.length] = arg5[all]
    if betInfo[arg4].field_312:
        revert with 0, 'Bet should be in a 'clean' state.'
    if arg5.length != 65:
        revert with 0, 'Invalid sig Data .'
    if msg.value < 10^16:
        revert with 0, 'Amount should be within range.'
    if msg.value > 5 * 10^18:
        revert with 0, 'Amount should be within range.'
    if arg1 < 2:
        revert with 0, 'High modulo range, betMask larger than 98.'
    if arg1 > 98:
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
    if msg.value / 100 >= 3 * 10^14:
        if msg.value / 100 > msg.value:
            revert with 0, 'Bet doesn't even cover house edge.'
        require (10 * arg1) - 10
        lockedInBets = uint128(((-15 * msg.value) + (10 * arg2 * msg.value) + (15 * msg.value / 100) - (10 * arg2 * msg.value / 100) / (10 * arg1) - 10) + lockedInBets)
        emit Commit(arg4);
        betInfo[arg4].field_0 = msg.value
        betInfo[arg4].field_256 = uint8(arg2)
        betInfo[arg4].field_264 = uint8(arg1)
        betInfo[arg4].field_272 = block.number % 1099511627776
        betInfo[arg4].field_312 = Mask(200, 0, msg.sender)
        betInfo[arg4].field_768 = msg.value / 100
    else:
        if 3 * 10^14 > msg.value:
            revert with 0, 'Bet doesn't even cover house edge.'
        require (10 * arg1) - 10
        lockedInBets = uint128(((-3 * 10^15 * arg2) + (-15 * msg.value) + (10 * arg2 * msg.value) + (125 * 10^10 * 3600) / (10 * arg1) - 10) + lockedInBets)
        emit Commit(arg4);
        betInfo[arg4].field_0 = msg.value
        betInfo[arg4].field_256 = uint8(arg2)
        betInfo[arg4].field_264 = uint8(arg1)
        betInfo[arg4].field_272 = block.number % 1099511627776
        betInfo[arg4].field_312 = Mask(200, 0, msg.sender)
        betInfo[arg4].field_768 = 3 * 10^14
}

function sub_646d0f70(?) {
    if cfoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCfo methods called by non-co.'
    if betInfo[arg1].field_272 > block.number:
        revert with 0, 'settleBet in the same block as placeBet, or before.'
    if arg2 != block.hash(betInfo[arg1].field_272):
        emit 0xf0ca0ae2: block.hash(betInfo[arg1].field_272), arg2
    if not betInfo[arg1].field_0:
        revert with 0, 'Bet should be in an 'active' state'
    betInfo[arg1].field_472 = arg3
    if betInfo[arg1].field_0 / 100 >= 3 * 10^14:
        if betInfo[arg1].field_0 / 100 > betInfo[arg1].field_0:
            revert with 0, 'Bet doesn't even cover house edge.'
        require (10 * betInfo[arg1].field_264) - 10
        lockedInBets = uint128(lockedInBets - ((-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10))
        if betInfo[arg1].field_264 <= arg3:
            call betInfo[arg1].field_312 with:
               value 1 wei
                 gas 0 wei
            if not ext_call.success:
                emit FailedPayment(1, betInfo[arg1].field_312);
            else:
                betInfo[arg1].field_480 = 2
                betInfo[arg1].field_512 = 1
                emit Payment(0, betInfo[arg1].field_312);
        else:
            if (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10:
                call betInfo[arg1].field_312 with:
                   value (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit FailedPayment(((-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
                else:
                    betInfo[arg1].field_480 = 1
                    betInfo[arg1].field_512 = (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10
                    emit Payment(((-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
            else:
                call betInfo[arg1].field_312 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, betInfo[arg1].field_312);
                else:
                    betInfo[arg1].field_480 = 2
                    betInfo[arg1].field_512 = 1
                    emit Payment(((-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
    else:
        if 3 * 10^14 > betInfo[arg1].field_0:
            revert with 0, 'Bet doesn't even cover house edge.'
        require (10 * betInfo[arg1].field_264) - 10
        lockedInBets = uint128(lockedInBets - ((-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10))
        if betInfo[arg1].field_264 <= arg3:
            call betInfo[arg1].field_312 with:
               value 1 wei
                 gas 0 wei
            if not ext_call.success:
                emit FailedPayment(1, betInfo[arg1].field_312);
            else:
                betInfo[arg1].field_480 = 2
                betInfo[arg1].field_512 = 1
                emit Payment(0, betInfo[arg1].field_312);
        else:
            if (-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10:
                call betInfo[arg1].field_312 with:
                   value (-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit FailedPayment(((-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
                else:
                    betInfo[arg1].field_480 = 1
                    betInfo[arg1].field_512 = (-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10
                    emit Payment(((-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
            else:
                call betInfo[arg1].field_312 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, betInfo[arg1].field_312);
                else:
                    betInfo[arg1].field_480 = 2
                    betInfo[arg1].field_512 = 1
                    emit Payment(((-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
}

function sub_9761409b(?) {
    if cfoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCfo methods called by non-co.'
    if betInfo[arg1].field_272 > block.number:
        revert with 0, 'settleBet in the same block as placeBet, or before.'
    if arg2 != block.hash(betInfo[arg1].field_272):
        emit 0xf0ca0ae2: block.hash(betInfo[arg1].field_272), arg2
    if not betInfo[arg1].field_0:
        revert with 0, 'Bet should be in an 'active' state'
    require betInfo[arg1].field_256
    betInfo[arg1].field_472 = uint8(sha3(arg1, arg2) % betInfo[arg1].field_256)
    if betInfo[arg1].field_0 / 100 >= 3 * 10^14:
        if betInfo[arg1].field_0 / 100 > betInfo[arg1].field_0:
            revert with 0, 'Bet doesn't even cover house edge.'
        require (10 * betInfo[arg1].field_264) - 10
        lockedInBets = uint128(lockedInBets - ((-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10))
        if betInfo[arg1].field_264 <= uint8(sha3(arg1, arg2) % betInfo[arg1].field_256):
            call betInfo[arg1].field_312 with:
               value 1 wei
                 gas 0 wei
            if not ext_call.success:
                emit FailedPayment(1, betInfo[arg1].field_312);
            else:
                betInfo[arg1].field_480 = 2
                betInfo[arg1].field_512 = 1
                emit Payment(0, betInfo[arg1].field_312);
        else:
            if (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10:
                call betInfo[arg1].field_312 with:
                   value (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit FailedPayment(((-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
                else:
                    betInfo[arg1].field_480 = 1
                    betInfo[arg1].field_512 = (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10
                    emit Payment(((-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
            else:
                call betInfo[arg1].field_312 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, betInfo[arg1].field_312);
                else:
                    betInfo[arg1].field_480 = 2
                    betInfo[arg1].field_512 = 1
                    emit Payment(((-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (15 * betInfo[arg1].field_0 / 100) - (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0 / 100) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
    else:
        if 3 * 10^14 > betInfo[arg1].field_0:
            revert with 0, 'Bet doesn't even cover house edge.'
        require (10 * betInfo[arg1].field_264) - 10
        lockedInBets = uint128(lockedInBets - ((-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10))
        if betInfo[arg1].field_264 <= uint8(sha3(arg1, arg2) % betInfo[arg1].field_256):
            call betInfo[arg1].field_312 with:
               value 1 wei
                 gas 0 wei
            if not ext_call.success:
                emit FailedPayment(1, betInfo[arg1].field_312);
            else:
                betInfo[arg1].field_480 = 2
                betInfo[arg1].field_512 = 1
                emit Payment(0, betInfo[arg1].field_312);
        else:
            if (-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10:
                call betInfo[arg1].field_312 with:
                   value (-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit FailedPayment(((-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
                else:
                    betInfo[arg1].field_480 = 1
                    betInfo[arg1].field_512 = (-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10
                    emit Payment(((-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
            else:
                call betInfo[arg1].field_312 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, betInfo[arg1].field_312);
                else:
                    betInfo[arg1].field_480 = 2
                    betInfo[arg1].field_512 = 1
                    emit Payment(((-3 * 10^15 * betInfo[arg1].field_256) + (-15 * betInfo[arg1].field_0) + (10 * betInfo[arg1].field_256 * betInfo[arg1].field_0) + (125 * 10^10 * 3600) / (10 * betInfo[arg1].field_264) - 10), betInfo[arg1].field_312);
}



}
