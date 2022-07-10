contract main {




// =====================  Runtime code  =====================


#
#  - placeBet(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#  - placeBetWithInviter(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, address arg7)
#
const thisBalance = eth.balance(this.address)


address stor0;
address owner;
address stor2;
uint256 maxProfit;
address secretSignerAddress;
uint128 lockedInBets;
mapping of uint8 stor6;
address sub_a9c1685bAddress;
mapping of struct stor8;

function secretSigner() {
    return secretSignerAddress
}

function owner() {
    return owner
}

function getSecretSigner() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    return secretSignerAddress
}

function sub_a9c1685b(?) {
    return sub_a9c1685bAddress
}

function maxProfit() {
    return maxProfit
}

function lockedInBets() {
    return lockedInBets
}

function kill() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if lockedInBets:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'All bets should be processed (settled or refunded) before self-destruct.'
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function acceptNextOwner() {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only accept preapproved new owner.'
    owner = stor2
}

function setSecretSigner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    secretSignerAddress = arg1
}

function setVIPLibraryAddress(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_a9c1685bAddress = arg1
    stor0 = arg1
}

function addCroupier(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if not stor6[address(arg1)]:
        stor6[address(arg1)] = 1
}

function deleteCroupier(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if bool(stor6[address(arg1)]) == 1:
        stor6[address(arg1)] = 0
}

function sub_e78e0362(?) {
    require ext_code.size(stor0)
    call stor0.0xe78e0362 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveNextOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 == owner:
        revert with 0, 'Cannot approve current owner.'
    stor2 = arg1
}

function setMaxProfit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 >= 10 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'maxProfit should be a sane number.'
    maxProfit = arg1
}

function withdrawFunds(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    if lockedInBets + arg2 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, arg1);
    else:
        emit Payment(arg2, 0, 0, 0, arg1);
}

function refundBet(uint256 arg1) {
    if not stor8[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in an 'active' state'
    if block.number <= stor8[arg1].field_264 + 250:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blockhash can't be queried by EVM.'
    stor8[arg1].field_0 = 0
    if 0 >= stor8[arg1].field_256:
        revert with 0, 'Win probability out of range.'
    if stor8[arg1].field_256 > 100:
        revert with 0, 'Win probability out of range.'
    if stor8[arg1].field_0 >= 3 * 10^16:
        if 2 * stor8[arg1].field_0 / 100 >= 4 * 10^14:
            if (2 * stor8[arg1].field_0 / 100) + 3 * 10^14 > stor8[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor8[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor8[arg1].field_0) + (-100 * 2 * stor8[arg1].field_0 / 100) - 3 * 10^16 / stor8[arg1].field_256))
        else:
            if 7 * 10^14 > stor8[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor8[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor8[arg1].field_0) - 7 * 10^16 / stor8[arg1].field_256))
    else:
        if 2 * stor8[arg1].field_0 / 100 >= 4 * 10^14:
            if 2 * stor8[arg1].field_0 / 100 > stor8[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor8[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor8[arg1].field_0) - (100 * 2 * stor8[arg1].field_0 / 100) / stor8[arg1].field_256))
        else:
            if 4 * 10^14 > stor8[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor8[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor8[arg1].field_0) - 4 * 10^16 / stor8[arg1].field_256))
    call stor8[arg1].field_344 with:
       value stor8[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(stor8[arg1].field_0, stor8[arg1].field_344);
    else:
        emit Payment(stor8[arg1].field_0, 0, 0, 0, stor8[arg1].field_344);
}

function settleBet(uint256 arg1, bytes32 arg2) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCroupier methods called by non-croupier.'
    if block.number <= stor8[arg1].field_264:
        revert with 0, 'settleBet in the same block as placeBet, or before.'
    if block.number > stor8[arg1].field_264 + 250:
        revert with 0, 'Blockhash can't be queried by EVM.'
    require block.hash(stor8[arg1].field_264) == arg2
    if not stor8[arg1].field_0:
        revert with 0, 'Bet should be in an 'active' state'
    stor8[arg1].field_0 = 0
    if 0 >= stor8[arg1].field_256:
        revert with 0, 'Win probability out of range.'
    if stor8[arg1].field_256 > 100:
        revert with 0, 'Win probability out of range.'
    if stor8[arg1].field_0 >= 3 * 10^16:
        if 2 * stor8[arg1].field_0 / 100 >= 4 * 10^14:
            if (2 * stor8[arg1].field_0 / 100) + 3 * 10^14 > stor8[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor8[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor8[arg1].field_0) + (-100 * 2 * stor8[arg1].field_0 / 100) - 3 * 10^16 / stor8[arg1].field_256))
            if stor8[arg1].field_0 >= 3 * 10^16:
                require ext_code.size(stor0)
                call stor0.0xd6d30a51 with:
                   value 3 * 10^14 wei
                     gas gas_remaining wei
                    args 3 * 10^14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sha3(arg1, arg2) / 100 % 1000:
                    require ext_code.size(stor0)
                    call stor0.0xe78e0362 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0x62b686fc with:
                         gas gas_remaining wei
                        args stor8[arg1].field_344
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > 0:
                        emit JackpotPayment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                            ext_call.return_data[0],
                                            sha3(arg1, arg2) % 100,
                                            stor8[arg1].field_256,
                                            0,
                                            stor8[arg1].field_0,
                                            stor8[arg1].field_344,
            if stor8[arg1].field_512:
                call stor8[arg1].field_512 with:
                   value 7 * 2 * stor8[arg1].field_0 / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if sha3(arg1, arg2) % 100 >= stor8[arg1].field_256:
                call stor8[arg1].field_344 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, stor8[arg1].field_344);
                else:
                    emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                 0,
                                 sha3(arg1, arg2) % 100,
                                 stor8[arg1].field_256,
                                 0,
                                 stor8[arg1].field_0,
                                 stor8[arg1].field_344,
            else:
                if not (100 * stor8[arg1].field_0) + (-100 * 2 * stor8[arg1].field_0 / 100) - 3 * 10^16 / stor8[arg1].field_256:
                    call stor8[arg1].field_344 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor8[arg1].field_344);
                    else:
                        emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                     (100 * stor8[arg1].field_0) + (-100 * 2 * stor8[arg1].field_0 / 100) - 3 * 10^16 / stor8[arg1].field_256,
                                     sha3(arg1, arg2) % 100,
                                     stor8[arg1].field_256,
                                     0,
                                     stor8[arg1].field_0,
                                     stor8[arg1].field_344,
                else:
                    call stor8[arg1].field_344 with:
                       value (100 * stor8[arg1].field_0) + (-100 * 2 * stor8[arg1].field_0 / 100) - 3 * 10^16 / stor8[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(((100 * stor8[arg1].field_0) + (-100 * 2 * stor8[arg1].field_0 / 100) - 3 * 10^16 / stor8[arg1].field_256), stor8[arg1].field_344);
                    else:
                        emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                     (100 * stor8[arg1].field_0) + (-100 * 2 * stor8[arg1].field_0 / 100) - 3 * 10^16 / stor8[arg1].field_256,
                                     sha3(arg1, arg2) % 100,
                                     stor8[arg1].field_256,
                                     0,
                                     stor8[arg1].field_0,
                                     stor8[arg1].field_344,
        else:
            if 7 * 10^14 > stor8[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor8[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor8[arg1].field_0) - 7 * 10^16 / stor8[arg1].field_256))
            if stor8[arg1].field_0 >= 3 * 10^16:
                require ext_code.size(stor0)
                call stor0.0xd6d30a51 with:
                   value 3 * 10^14 wei
                     gas gas_remaining wei
                    args 3 * 10^14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sha3(arg1, arg2) / 100 % 1000:
                    require ext_code.size(stor0)
                    call stor0.0xe78e0362 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0x62b686fc with:
                         gas gas_remaining wei
                        args stor8[arg1].field_344
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > 0:
                        emit JackpotPayment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                            ext_call.return_data[0],
                                            sha3(arg1, arg2) % 100,
                                            stor8[arg1].field_256,
                                            0,
                                            stor8[arg1].field_0,
                                            stor8[arg1].field_344,
            if stor8[arg1].field_512:
                call stor8[arg1].field_512 with:
                   value 7 * 2 * stor8[arg1].field_0 / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if sha3(arg1, arg2) % 100 >= stor8[arg1].field_256:
                call stor8[arg1].field_344 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, stor8[arg1].field_344);
                else:
                    emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                 0,
                                 sha3(arg1, arg2) % 100,
                                 stor8[arg1].field_256,
                                 0,
                                 stor8[arg1].field_0,
                                 stor8[arg1].field_344,
            else:
                if not (100 * stor8[arg1].field_0) - 7 * 10^16 / stor8[arg1].field_256:
                    call stor8[arg1].field_344 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor8[arg1].field_344);
                    else:
                        emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                     (100 * stor8[arg1].field_0) - 7 * 10^16 / stor8[arg1].field_256,
                                     sha3(arg1, arg2) % 100,
                                     stor8[arg1].field_256,
                                     0,
                                     stor8[arg1].field_0,
                                     stor8[arg1].field_344,
                else:
                    call stor8[arg1].field_344 with:
                       value (100 * stor8[arg1].field_0) - 7 * 10^16 / stor8[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(((100 * stor8[arg1].field_0) - 7 * 10^16 / stor8[arg1].field_256), stor8[arg1].field_344);
                    else:
                        emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                     (100 * stor8[arg1].field_0) - 7 * 10^16 / stor8[arg1].field_256,
                                     sha3(arg1, arg2) % 100,
                                     stor8[arg1].field_256,
                                     0,
                                     stor8[arg1].field_0,
                                     stor8[arg1].field_344,
    else:
        if 2 * stor8[arg1].field_0 / 100 >= 4 * 10^14:
            if 2 * stor8[arg1].field_0 / 100 > stor8[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor8[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor8[arg1].field_0) - (100 * 2 * stor8[arg1].field_0 / 100) / stor8[arg1].field_256))
            if stor8[arg1].field_0 >= 3 * 10^16:
                require ext_code.size(stor0)
                call stor0.0xd6d30a51 with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sha3(arg1, arg2) / 100 % 1000:
                    require ext_code.size(stor0)
                    call stor0.0xe78e0362 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0x62b686fc with:
                         gas gas_remaining wei
                        args stor8[arg1].field_344
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > 0:
                        emit JackpotPayment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                            ext_call.return_data[0],
                                            sha3(arg1, arg2) % 100,
                                            stor8[arg1].field_256,
                                            0,
                                            stor8[arg1].field_0,
                                            stor8[arg1].field_344,
            if stor8[arg1].field_512:
                call stor8[arg1].field_512 with:
                   value 7 * 2 * stor8[arg1].field_0 / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if sha3(arg1, arg2) % 100 >= stor8[arg1].field_256:
                call stor8[arg1].field_344 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, stor8[arg1].field_344);
                else:
                    emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                 0,
                                 sha3(arg1, arg2) % 100,
                                 stor8[arg1].field_256,
                                 0,
                                 stor8[arg1].field_0,
                                 stor8[arg1].field_344,
            else:
                if not (100 * stor8[arg1].field_0) - (100 * 2 * stor8[arg1].field_0 / 100) / stor8[arg1].field_256:
                    call stor8[arg1].field_344 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor8[arg1].field_344);
                    else:
                        emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                     (100 * stor8[arg1].field_0) - (100 * 2 * stor8[arg1].field_0 / 100) / stor8[arg1].field_256,
                                     sha3(arg1, arg2) % 100,
                                     stor8[arg1].field_256,
                                     0,
                                     stor8[arg1].field_0,
                                     stor8[arg1].field_344,
                else:
                    call stor8[arg1].field_344 with:
                       value (100 * stor8[arg1].field_0) - (100 * 2 * stor8[arg1].field_0 / 100) / stor8[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(((100 * stor8[arg1].field_0) - (100 * 2 * stor8[arg1].field_0 / 100) / stor8[arg1].field_256), stor8[arg1].field_344);
                    else:
                        emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                     (100 * stor8[arg1].field_0) - (100 * 2 * stor8[arg1].field_0 / 100) / stor8[arg1].field_256,
                                     sha3(arg1, arg2) % 100,
                                     stor8[arg1].field_256,
                                     0,
                                     stor8[arg1].field_0,
                                     stor8[arg1].field_344,
        else:
            if 4 * 10^14 > stor8[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor8[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor8[arg1].field_0) - 4 * 10^16 / stor8[arg1].field_256))
            if stor8[arg1].field_0 >= 3 * 10^16:
                require ext_code.size(stor0)
                call stor0.0xd6d30a51 with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sha3(arg1, arg2) / 100 % 1000:
                    require ext_code.size(stor0)
                    call stor0.0xe78e0362 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0x62b686fc with:
                         gas gas_remaining wei
                        args stor8[arg1].field_344
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > 0:
                        emit JackpotPayment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                            ext_call.return_data[0],
                                            sha3(arg1, arg2) % 100,
                                            stor8[arg1].field_256,
                                            0,
                                            stor8[arg1].field_0,
                                            stor8[arg1].field_344,
            if stor8[arg1].field_512:
                call stor8[arg1].field_512 with:
                   value 7 * 2 * stor8[arg1].field_0 / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if sha3(arg1, arg2) % 100 >= stor8[arg1].field_256:
                call stor8[arg1].field_344 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, stor8[arg1].field_344);
                else:
                    emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                 0,
                                 sha3(arg1, arg2) % 100,
                                 stor8[arg1].field_256,
                                 0,
                                 stor8[arg1].field_0,
                                 stor8[arg1].field_344,
            else:
                if not (100 * stor8[arg1].field_0) - 4 * 10^16 / stor8[arg1].field_256:
                    call stor8[arg1].field_344 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor8[arg1].field_344);
                    else:
                        emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                     (100 * stor8[arg1].field_0) - 4 * 10^16 / stor8[arg1].field_256,
                                     sha3(arg1, arg2) % 100,
                                     stor8[arg1].field_256,
                                     0,
                                     stor8[arg1].field_0,
                                     stor8[arg1].field_344,
                else:
                    call stor8[arg1].field_344 with:
                       value (100 * stor8[arg1].field_0) - 4 * 10^16 / stor8[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(((100 * stor8[arg1].field_0) - 4 * 10^16 / stor8[arg1].field_256), stor8[arg1].field_344);
                    else:
                        emit Payment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                     (100 * stor8[arg1].field_0) - 4 * 10^16 / stor8[arg1].field_256,
                                     sha3(arg1, arg2) % 100,
                                     stor8[arg1].field_256,
                                     0,
                                     stor8[arg1].field_0,
                                     stor8[arg1].field_344,
}



}
