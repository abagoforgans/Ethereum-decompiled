contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = msg.sender
    return code.data[46 len 17679]
}



// =====================  Runtime code  =====================


#
#  - buyRareItem(uint256 arg1)
#
address stor0;
uint32 stor1;
address owner;
address cardsAddress;
address schemaAddress;
address rareAddress;
mapping of uint256 canSellUnit;

function cards() {
    return cardsAddress
}

function rare() {
    return rareAddress
}

function owner() {
    return address(owner)
}

function getCanSellUnit(address arg1, uint256 arg2) {
    return canSellUnit[address(arg1)][arg2]
}

function schema() {
    return schemaAddress
}

function setRareAddress(address arg1) {
    require address(owner) == msg.sender
    rareAddress = arg1
}

function setCardsAddress(address arg1) {
    require address(owner) == msg.sender
    cardsAddress = arg1
}

function setConfigAddress(address arg1) {
    require address(owner) == msg.sender
    schemaAddress = arg1
}

function setAutoAddress(address arg1) {
    require address(owner) == msg.sender
    require arg1
    stor0 = arg1
}

function transferOwnership(address arg1) {
    require address(owner) == msg.sender
    require arg1
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function _fallback() payable {
    require ext_code.size(cardsAddress)
    call cardsAddress.0x358cfa25 with:
         gas gas_remaining wei
        args msg.value, 0, 1
    require ext_call.success
}

function withdrawAmount(uint256 arg1) {
    require address(owner) == msg.sender
    require arg1 <= eth.balance(this.address)
    call address(owner) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawEtherFromTrade(uint256 arg1) {
    require ext_code.size(cardsAddress)
    call cardsAddress.0xe8d320e6 with:
         gas gas_remaining wei
        args msg.sender, 0
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(cardsAddress)
    call cardsAddress.0x54605549 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg1, 0, 0
    require ext_call.success
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function sendGiftCard(address arg1) {
    require stor0 == msg.sender
    require ext_code.size(cardsAddress)
    call cardsAddress.0x196ecd25 with:
         gas gas_remaining wei
        args address(arg1), 1
    require ext_call.success
    require ext_code.size(schemaAddress)
    call schemaAddress.0x341367ec with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] < ext_call.return_data[0]
    require ext_code.size(schemaAddress)
    call schemaAddress.0x341367ec with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] + 1 >= ext_call.return_data[0]
    require ext_call.return_data[0] + 1 <= ext_call.return_data[0]
    require ext_code.size(cardsAddress)
    call cardsAddress.0xa1c90a11 with:
         gas gas_remaining wei
        args address(arg1), 0
    require ext_call.success
    require ext_code.size(schemaAddress)
    call schemaAddress.0x702123ae with:
         gas gas_remaining wei
        args 1
    require ext_call.success
    require ext_code.size(cardsAddress)
    if ext_call.return_data[0] > 0:
        call cardsAddress.0x2d171243 with:
             gas gas_remaining wei
            args address(arg1), 1, 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0x79c310a6 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0x2d171243 with:
             gas gas_remaining wei
            args address(arg1), 1, 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xce29555f with:
             gas gas_remaining wei
            args 0, 0, 1, ext_call.return_data[0], 1
        require ext_call.success
    call cardsAddress.0xa436e33b with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(cardsAddress)
    if ext_call.return_data[0] <= 0:
        call cardsAddress.0xf7fb0a4b with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
    call cardsAddress.0xfc4756df with:
         gas gas_remaining wei
        args address(arg1), 1, 1
    require ext_call.success
    require ext_code.size(cardsAddress)
    call cardsAddress.0xe7001b84 with:
         gas gas_remaining wei
        args 0, 0, 1, 1, 1
    require ext_call.success
    emit UnitBought(address(arg1), 1, 1);
}

function buyUpgradeCard(uint256 arg1) payable {
    require ext_code.size(cardsAddress)
    call cardsAddress.0x9267b291 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 >= 1
    require ext_code.size(cardsAddress)
    call cardsAddress.0xe946ad4a with:
         gas gas_remaining wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0] <= 5
    require ext_code.size(schemaAddress)
    call schemaAddress.0x73f9421d with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(cardsAddress)
    if ext_call.return_data[32] > 0:
        call cardsAddress.0xe8d320e6 with:
             gas gas_remaining wei
            args msg.sender, 0
        require ext_call.success
        require msg.value + ext_call.return_data[0] >= ext_call.return_data[0]
        require msg.value + ext_call.return_data[0] >= ext_call.return_data[32]
        if ext_call.return_data[32] > msg.value:
            require msg.value <= ext_call.return_data[32]
            require ext_code.size(cardsAddress)
            call cardsAddress.0x54605549 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), ext_call.return_data[32] - msg.value, 0, 0
            require ext_call.success
        else:
            if ext_call.return_data[32] < msg.value:
                require ext_call.return_data[32] <= msg.value
                require ext_code.size(cardsAddress)
                call cardsAddress.0x54605549 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), msg.value - ext_call.return_data[32], 0, 1
                require ext_call.success
        require ext_call.return_data[32] / 20 <= ext_call.return_data[32]
        require ext_code.size(cardsAddress)
        call cardsAddress.0x358cfa25 with:
             gas gas_remaining wei
            args ext_call.return_data[32] - (ext_call.return_data[32] / 20), 0, 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0x54605549 with:
             gas gas_remaining wei
            args 0, uint32(stor1), ext_call.return_data[32] / 20, 0, 1
        require ext_call.success
    call cardsAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(cardsAddress)
    call cardsAddress.0xa1c90a11 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[64]:
        require ext_code.size(cardsAddress)
        call cardsAddress.0x4ab3ff5a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), ext_call.return_data[96], ext_call.return_data[128], 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xb25d4571 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[96]
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0x196ecd25 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[96]
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xce29555f with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), ext_call.return_data[96], (10 * ext_call.return_data[128] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[128] * ext_call.return_data[0]), 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0x79c310a6 with:
             gas gas_remaining wei
            args msg.sender, (10 * ext_call.return_data[128] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[128] * ext_call.return_data[0])
        require ext_call.success
    else:
        if ext_call.return_data[64] != 1:
            if 2 == ext_call.return_data[64]:
                require ext_code.size(cardsAddress)
                call cardsAddress.0x7d70892d with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), ext_call.return_data[96], ext_call.return_data[128], 1
                require ext_call.success
            else:
                if 3 == ext_call.return_data[64]:
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x854c23e1 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), ext_call.return_data[96], ext_call.return_data[128], 1
                    require ext_call.success
                else:
                    if 4 == ext_call.return_data[64]:
                        require ext_code.size(cardsAddress)
                        call cardsAddress.0xf4347c85 with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), ext_call.return_data[96], ext_call.return_data[128], 1
                        require ext_call.success
                    else:
                        if 5 == ext_call.return_data[64]:
                            require ext_code.size(cardsAddress)
                            call cardsAddress.0xdfe55e70 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), ext_call.return_data[96], ext_call.return_data[128], 1
                            require ext_call.success
                        else:
                            if 6 == ext_call.return_data[64]:
                                require ext_code.size(cardsAddress)
                                call cardsAddress.setUnitJadeStealingIncreases(address arg1, uint256 arg2, uint256 arg3, bool arg4) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), ext_call.return_data[96], ext_call.return_data[128], 1
                                require ext_call.success
                            else:
                                if 7 == ext_call.return_data[64]:
                                    require ext_code.size(cardsAddress)
                                    call cardsAddress.0x482c18e3 with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), ext_call.return_data[96], ext_call.return_data[128], 1
                                    require ext_call.success
        else:
            require ext_code.size(cardsAddress)
            call cardsAddress.0x9501799d with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), ext_call.return_data[96], ext_call.return_data[128], 1
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0xd4778321 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[96]
            require ext_call.success
            require ext_code.size(schemaAddress)
            call schemaAddress.0x702123ae with:
                 gas gas_remaining wei
                args ext_call.return_data[96]
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x196ecd25 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[96]
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0xce29555f with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), ext_call.return_data[96], (ext_call.return_data[0] * ext_call.return_data[128] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[128] * ext_call.return_data[0]), 1
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x79c310a6 with:
                 gas gas_remaining wei
                args msg.sender, (ext_call.return_data[0] * ext_call.return_data[128] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[128] * ext_call.return_data[0])
            require ext_call.success
    require ext_code.size(cardsAddress)
    call cardsAddress.0x2a288272 with:
         gas gas_remaining wei
        args msg.sender, arg1
    require ext_call.success
    emit UpgradeCardBought(msg.sender, arg1);
}

function sellCards(uint256 arg1, uint256 arg2) {
    require ext_code.size(cardsAddress)
    call cardsAddress.0x9267b291 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(cardsAddress)
    call cardsAddress.0x196ecd25 with:
         gas gas_remaining wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require arg2 > 0
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(schemaAddress)
    if arg1 >= 40:
        call schemaAddress.0xb2570b1c with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0] - arg2, arg2
        require ext_call.success
        if ext_call.return_data[64] > 0:
            require canSellUnit[address(msg.sender)][arg1] >= arg2
        require ext_call.return_data[96]
        require ext_code.size(cardsAddress)
        call cardsAddress.0x4676b897 with:
             gas gas_remaining wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[32] <= 0:
            require ext_code.size(cardsAddress)
            call cardsAddress.0x176854f6 with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x448a0ceb with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0xa6678b60 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0], 1
        else:
            if not ext_call.return_data[32]:
                require ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(cardsAddress)
                call cardsAddress.0x176854f6 with:
                     gas gas_remaining wei
                    args msg.sender
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0x448a0ceb with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0xa6678b60 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0], 1
            else:
                require 70 * ext_call.return_data[32] / ext_call.return_data[32] == 70
                require (70 * ext_call.return_data[32] / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(cardsAddress)
                call cardsAddress.0x176854f6 with:
                     gas gas_remaining wei
                    args msg.sender
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0x448a0ceb with:
                     gas gas_remaining wei
                    args ((70 * ext_call.return_data[32] / 100) + ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0xa6678b60 with:
                     gas gas_remaining wei
                    args msg.sender, (70 * ext_call.return_data[32] / 100) + ext_call.return_data[0], 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0x97ce3a4b with:
             gas gas_remaining wei
            args msg.sender, arg1, arg2
        require ext_call.success
        if ext_call.return_data[64] > 0:
            if not ext_call.return_data[64]:
                require ext_code.size(cardsAddress)
                call cardsAddress.0x54605549 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 0, 0, 1
            else:
                require 70 * ext_call.return_data[64] / ext_call.return_data[64] == 70
                require ext_code.size(cardsAddress)
                call cardsAddress.0x54605549 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 70 * ext_call.return_data[64] / 100, 0, 1
            require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xe7001b84 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg1, arg2, 0
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xfc4756df with:
             gas gas_remaining wei
            args msg.sender, arg2, 0
        require ext_call.success
        if ext_call.return_data[64] > 0:
            require arg2 <= canSellUnit[address(msg.sender)][arg1]
            canSellUnit[address(msg.sender)][arg1] -= arg2
    else:
        call schemaAddress.0xee4827ea with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0] - arg2, arg2
        require ext_call.success
        if ext_call.return_data[96] > 0:
            require canSellUnit[address(msg.sender)][arg1] >= arg2
        require ext_call.return_data[128]
        require ext_code.size(cardsAddress)
        call cardsAddress.0x4676b897 with:
             gas gas_remaining wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[64] <= 0:
            require ext_code.size(cardsAddress)
            call cardsAddress.0x176854f6 with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x448a0ceb with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0xa6678b60 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0], 1
        else:
            if not ext_call.return_data[64]:
                require ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(cardsAddress)
                call cardsAddress.0x176854f6 with:
                     gas gas_remaining wei
                    args msg.sender
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0x448a0ceb with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0xa6678b60 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0], 1
            else:
                require 70 * ext_call.return_data[64] / ext_call.return_data[64] == 70
                require (70 * ext_call.return_data[64] / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(cardsAddress)
                call cardsAddress.0x176854f6 with:
                     gas gas_remaining wei
                    args msg.sender
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0x448a0ceb with:
                     gas gas_remaining wei
                    args ((70 * ext_call.return_data[64] / 100) + ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0xa6678b60 with:
                     gas gas_remaining wei
                    args msg.sender, (70 * ext_call.return_data[64] / 100) + ext_call.return_data[0], 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0x97ce3a4b with:
             gas gas_remaining wei
            args msg.sender, arg1, arg2
        require ext_call.success
        if ext_call.return_data[32] > 0:
            require ext_code.size(cardsAddress)
            call cardsAddress.0x396e70e0 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0xce29555f with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), arg1, ext_call.return_data[0], 0
            require ext_call.success
        if ext_call.return_data[96] > 0:
            if not ext_call.return_data[96]:
                require ext_code.size(cardsAddress)
                call cardsAddress.0x54605549 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 0, 0, 1
            else:
                require 70 * ext_call.return_data[96] / ext_call.return_data[96] == 70
                require ext_code.size(cardsAddress)
                call cardsAddress.0x54605549 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 70 * ext_call.return_data[96] / 100, 0, 1
            require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xe7001b84 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg1, arg2, 0
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xfc4756df with:
             gas gas_remaining wei
            args msg.sender, arg2, 0
        require ext_call.success
        if ext_call.return_data[96] > 0:
            require arg2 <= canSellUnit[address(msg.sender)][arg1]
            canSellUnit[address(msg.sender)][arg1] -= arg2
    emit UnitSold(msg.sender, arg1, arg2);
}

function buyBasicCards(uint256 arg1, uint256 arg2) {
    require ext_code.size(cardsAddress)
    call cardsAddress.0x9267b291 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 >= 1
    require ext_code.size(cardsAddress)
    call cardsAddress.0x196ecd25 with:
         gas gas_remaining wei
        args msg.sender, arg1
    require ext_call.success
    require ext_code.size(schemaAddress)
    call schemaAddress.0x341367ec with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] < ext_call.return_data[0]
    require ext_code.size(schemaAddress)
    call schemaAddress.0x341367ec with:
         gas gas_remaining wei
    require ext_call.success
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    if arg2 + ext_call.return_data[0] <= ext_call.return_data[0]:
        if arg1 < 1:
            require ext_code.size(cardsAddress)
            call cardsAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
            require ext_call.return_data[0] >= 0
            require ext_code.size(cardsAddress)
            call cardsAddress.0xa1c90a11 with:
                 gas gas_remaining wei
                args msg.sender, 0
            require ext_call.success
        else:
            if arg1 > 39:
                if arg1 < 40:
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    require ext_call.success
                    require ext_call.return_data[0] >= 0
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0xa1c90a11 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    require ext_code.size(schemaAddress)
                    call schemaAddress.0xb2570b1c with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], arg2
                    require ext_call.success
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    require ext_call.success
                    require ext_call.return_data[0] >= ext_call.return_data[32]
                    require not ext_call.return_data[64]
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0xa1c90a11 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[32]
                require ext_call.success
            else:
                require ext_code.size(schemaAddress)
                call schemaAddress.0xee4827ea with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], arg2
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                require ext_call.success
                require ext_call.return_data[0] >= ext_call.return_data[64]
                require not ext_call.return_data[96]
                require ext_code.size(cardsAddress)
                call cardsAddress.0xa1c90a11 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[64]
                require ext_call.success
                if ext_call.return_data[32] > 0:
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x2d171243 with:
                         gas gas_remaining wei
                        args msg.sender, arg1, arg2
                    require ext_call.success
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x79c310a6 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x2d171243 with:
                         gas gas_remaining wei
                        args msg.sender, arg1, arg2
                    require ext_call.success
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0xce29555f with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), arg1, ext_call.return_data[0], 1
                    require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xa436e33b with:
             gas gas_remaining wei
            args msg.sender
        require ext_call.success
        require ext_code.size(cardsAddress)
        if ext_call.return_data[0] <= 0:
            call cardsAddress.0xf7fb0a4b with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
        call cardsAddress.0xfc4756df with:
             gas gas_remaining wei
            args msg.sender, arg2, 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xe7001b84 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg1, arg2, 1
        require ext_call.success
        emit UnitBought(msg.sender, arg1, arg2);
    else:
        require ext_code.size(schemaAddress)
        call schemaAddress.0x341367ec with:
             gas gas_remaining wei
        require ext_call.success
        require ext_call.return_data[0] <= ext_call.return_data[0]
        if arg1 < 1:
            require ext_code.size(cardsAddress)
            call cardsAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
            require ext_call.return_data[0] >= 0
            require ext_code.size(cardsAddress)
            call cardsAddress.0xa1c90a11 with:
                 gas gas_remaining wei
                args msg.sender, 0
            require ext_call.success
        else:
            if arg1 > 39:
                if arg1 < 40:
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    require ext_call.success
                    require ext_call.return_data[0] >= 0
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0xa1c90a11 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    require ext_code.size(schemaAddress)
                    call schemaAddress.0xb2570b1c with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], 0
                    require ext_call.success
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    require ext_call.success
                    require ext_call.return_data[0] >= ext_call.return_data[32]
                    require not ext_call.return_data[64]
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0xa1c90a11 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[32]
                require ext_call.success
            else:
                require ext_code.size(schemaAddress)
                call schemaAddress.0xee4827ea with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], 0
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                require ext_call.success
                require ext_call.return_data[0] >= ext_call.return_data[64]
                require not ext_call.return_data[96]
                require ext_code.size(cardsAddress)
                call cardsAddress.0xa1c90a11 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[64]
                require ext_call.success
                if ext_call.return_data[32] > 0:
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x2d171243 with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 0
                    require ext_call.success
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x79c310a6 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x2d171243 with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 0
                    require ext_call.success
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0xce29555f with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), arg1, ext_call.return_data[0], 1
                    require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xa436e33b with:
             gas gas_remaining wei
            args msg.sender
        require ext_call.success
        require ext_code.size(cardsAddress)
        if ext_call.return_data[0] <= 0:
            call cardsAddress.0xf7fb0a4b with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
        call cardsAddress.0xfc4756df with:
             gas gas_remaining wei
            args msg.sender, 0, 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xe7001b84 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg1, 0, 1
        require ext_call.success
        emit UnitBought(msg.sender, arg1, 0);
}

function buyEthCards(uint256 arg1, uint256 arg2) payable {
    require ext_code.size(cardsAddress)
    call cardsAddress.0x9267b291 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 >= 1
    require ext_code.size(cardsAddress)
    call cardsAddress.0x196ecd25 with:
         gas gas_remaining wei
        args msg.sender, arg1
    require ext_call.success
    require ext_code.size(schemaAddress)
    call schemaAddress.0x341367ec with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] < ext_call.return_data[0]
    require ext_code.size(schemaAddress)
    call schemaAddress.0x341367ec with:
         gas gas_remaining wei
    require ext_call.success
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    if arg2 + ext_call.return_data[0] <= ext_call.return_data[0]:
        require arg1 >= 1
        if arg1 > 39:
            require arg1 >= 40
            require ext_code.size(schemaAddress)
            call schemaAddress.0xb2570b1c with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], arg2
            require ext_call.success
            require ext_call.return_data[64] > 0
            require ext_code.size(cardsAddress)
            call cardsAddress.0xe8d320e6 with:
                 gas gas_remaining wei
                args msg.sender, 0
            require ext_call.success
            require msg.value + ext_call.return_data[0] >= ext_call.return_data[0]
            require msg.value + ext_call.return_data[0] >= ext_call.return_data[64]
            require ext_code.size(cardsAddress)
            call cardsAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
            require ext_call.return_data[0] >= ext_call.return_data[32]
            require ext_code.size(cardsAddress)
            call cardsAddress.0xa1c90a11 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[32]
            require ext_call.success
            if ext_call.return_data[64] > msg.value:
                require msg.value <= ext_call.return_data[64]
                require ext_code.size(cardsAddress)
                call cardsAddress.0x54605549 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), ext_call.return_data[64] - msg.value, 0, 0
                require ext_call.success
            else:
                if msg.value > ext_call.return_data[64]:
                    require ext_call.return_data[64] <= msg.value
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x54605549 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), msg.value - ext_call.return_data[64], 0, 1
                    require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x358cfa25 with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[64]), 0, 1
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x54605549 with:
                 gas gas_remaining wei
                args 0, uint32(stor1), ext_call.return_data[64] / 20, 0, 1
            require ext_call.success
        else:
            require ext_code.size(schemaAddress)
            call schemaAddress.0xee4827ea with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], arg2
            require ext_call.success
            require ext_call.return_data[96] > 0
            require ext_code.size(cardsAddress)
            call cardsAddress.0xe8d320e6 with:
                 gas gas_remaining wei
                args msg.sender, 0
            require ext_call.success
            require msg.value + ext_call.return_data[0] >= ext_call.return_data[0]
            require msg.value + ext_call.return_data[0] >= ext_call.return_data[96]
            require ext_code.size(cardsAddress)
            call cardsAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
            require ext_call.return_data[0] >= ext_call.return_data[64]
            require ext_code.size(cardsAddress)
            call cardsAddress.0xa1c90a11 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[64]
            require ext_call.success
            if ext_call.return_data[96] > msg.value:
                require msg.value <= ext_call.return_data[96]
                require ext_code.size(cardsAddress)
                call cardsAddress.0x54605549 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), ext_call.return_data[96] - msg.value, 0, 0
                require ext_call.success
            else:
                if msg.value > ext_call.return_data[96]:
                    require ext_call.return_data[96] <= msg.value
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x54605549 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), msg.value - ext_call.return_data[96], 0, 1
                    require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x358cfa25 with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[96]), 0, 1
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x54605549 with:
                 gas gas_remaining wei
                args 0, uint32(stor1), ext_call.return_data[96] / 20, 0, 1
            require ext_call.success
            if ext_call.return_data[32] > 0:
                require ext_code.size(cardsAddress)
                call cardsAddress.0x2d171243 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, arg2
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0x79c310a6 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0x2d171243 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, arg2
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0xce29555f with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), arg1, ext_call.return_data[0], 1
                require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xa436e33b with:
             gas gas_remaining wei
            args msg.sender
        require ext_call.success
        require ext_code.size(cardsAddress)
        if ext_call.return_data[0] <= 0:
            call cardsAddress.0xf7fb0a4b with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
        call cardsAddress.0xfc4756df with:
             gas gas_remaining wei
            args msg.sender, arg2, 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xe7001b84 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg1, arg2, 1
        require ext_call.success
        require arg2 + canSellUnit[address(msg.sender)][arg1] >= canSellUnit[address(msg.sender)][arg1]
        canSellUnit[address(msg.sender)][arg1] += arg2
        emit UnitBought(msg.sender, arg1, arg2);
    else:
        require ext_code.size(schemaAddress)
        call schemaAddress.0x341367ec with:
             gas gas_remaining wei
        require ext_call.success
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require arg1 >= 1
        if arg1 > 39:
            require arg1 >= 40
            require ext_code.size(schemaAddress)
            call schemaAddress.0xb2570b1c with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], 0
            require ext_call.success
            require ext_call.return_data[64] > 0
            require ext_code.size(cardsAddress)
            call cardsAddress.0xe8d320e6 with:
                 gas gas_remaining wei
                args msg.sender, 0
            require ext_call.success
            require msg.value + ext_call.return_data[0] >= ext_call.return_data[0]
            require msg.value + ext_call.return_data[0] >= ext_call.return_data[64]
            require ext_code.size(cardsAddress)
            call cardsAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
            require ext_call.return_data[0] >= ext_call.return_data[32]
            require ext_code.size(cardsAddress)
            call cardsAddress.0xa1c90a11 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[32]
            require ext_call.success
            if ext_call.return_data[64] > msg.value:
                require msg.value <= ext_call.return_data[64]
                require ext_code.size(cardsAddress)
                call cardsAddress.0x54605549 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), ext_call.return_data[64] - msg.value, 0, 0
                require ext_call.success
            else:
                if msg.value > ext_call.return_data[64]:
                    require ext_call.return_data[64] <= msg.value
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x54605549 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), msg.value - ext_call.return_data[64], 0, 1
                    require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x358cfa25 with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[64]), 0, 1
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x54605549 with:
                 gas gas_remaining wei
                args 0, uint32(stor1), ext_call.return_data[64] / 20, 0, 1
            require ext_call.success
        else:
            require ext_code.size(schemaAddress)
            call schemaAddress.0xee4827ea with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], 0
            require ext_call.success
            require ext_call.return_data[96] > 0
            require ext_code.size(cardsAddress)
            call cardsAddress.0xe8d320e6 with:
                 gas gas_remaining wei
                args msg.sender, 0
            require ext_call.success
            require msg.value + ext_call.return_data[0] >= ext_call.return_data[0]
            require msg.value + ext_call.return_data[0] >= ext_call.return_data[96]
            require ext_code.size(cardsAddress)
            call cardsAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
            require ext_call.return_data[0] >= ext_call.return_data[64]
            require ext_code.size(cardsAddress)
            call cardsAddress.0xa1c90a11 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[64]
            require ext_call.success
            if ext_call.return_data[96] > msg.value:
                require msg.value <= ext_call.return_data[96]
                require ext_code.size(cardsAddress)
                call cardsAddress.0x54605549 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), ext_call.return_data[96] - msg.value, 0, 0
                require ext_call.success
            else:
                if msg.value > ext_call.return_data[96]:
                    require ext_call.return_data[96] <= msg.value
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x54605549 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), msg.value - ext_call.return_data[96], 0, 1
                    require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x358cfa25 with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[96]), 0, 1
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0x54605549 with:
                 gas gas_remaining wei
                args 0, uint32(stor1), ext_call.return_data[96] / 20, 0, 1
            require ext_call.success
            if ext_call.return_data[32] > 0:
                require ext_code.size(cardsAddress)
                call cardsAddress.0x2d171243 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, 0
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0x79c310a6 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0x2d171243 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, 0
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0xce29555f with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), arg1, ext_call.return_data[0], 1
                require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xa436e33b with:
             gas gas_remaining wei
            args msg.sender
        require ext_call.success
        require ext_code.size(cardsAddress)
        if ext_call.return_data[0] <= 0:
            call cardsAddress.0xf7fb0a4b with:
                 gas gas_remaining wei
                args msg.sender
            require ext_call.success
        call cardsAddress.0xfc4756df with:
             gas gas_remaining wei
            args msg.sender, 0, 1
        require ext_call.success
        require ext_code.size(cardsAddress)
        call cardsAddress.0xe7001b84 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg1, 0, 1
        require ext_call.success
        require canSellUnit[address(msg.sender)][arg1] >= canSellUnit[address(msg.sender)][arg1]
        emit UnitBought(msg.sender, arg1, 0);
}



}
