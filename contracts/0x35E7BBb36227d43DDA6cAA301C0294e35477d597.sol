contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 15906]
}



// =====================  Runtime code  =====================


#
#  - receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4)
#
address owner;
address cardsAddress;
address schemaAddress;
address rareAddress;
address tokenContractAddress;
mapping of uint256 canSellUnit;

function tokenContract() {
    return tokenContractAddress
}

function cards() {
    return cardsAddress
}

function rare() {
    return rareAddress
}

function owner() {
    return owner
}

function getCanSellUnit(address arg1, uint256 arg2) {
    return canSellUnit[address(arg1)][arg2]
}

function schema() {
    return schemaAddress
}

function kill() {
    require owner == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    require ext_call.success
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setBitGuildToken(address arg1) {
    tokenContractAddress = arg1
}

function setRareAddress(address arg1) {
    require owner == msg.sender
    rareAddress = arg1
}

function setCardsAddress(address arg1) {
    require owner == msg.sender
    cardsAddress = arg1
}

function setConfigAddress(address arg1) {
    require owner == msg.sender
    schemaAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEtherFromTrade(uint256 arg1) {
    require ext_code.size(cardsAddress)
    call cardsAddress.0xe8d320e6 with:
         gas gas_remaining wei
        args msg.sender, 1
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(cardsAddress)
    call cardsAddress.0x54605549 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg1, 1, 0
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    require ext_call.success
}

function withdrawToken(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= arg1
    require ext_code.size(cardsAddress)
    call cardsAddress.0x54605549 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg1, 1, 0
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    require ext_call.success
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
        require ext_code.size(schemaAddress)
        call schemaAddress.0xb6206e67 with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
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
        else:
            require arg2 * ext_call.return_data[0] / ext_call.return_data[0] == arg2
            require ext_call.return_data[96]
            if arg2 * ext_call.return_data[0] > 0:
                require canSellUnit[address(msg.sender)][arg1] >= arg2
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
            if arg2 * ext_call.return_data[0] > 0:
                if not arg2 * ext_call.return_data[0]:
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x54605549 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 0, 1, 1
                else:
                    require 70 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] == 70
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x54605549 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 70 * arg2 * ext_call.return_data[0] / 100, 1, 1
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
            if arg2 * ext_call.return_data[0] > 0:
                require arg2 <= canSellUnit[address(msg.sender)][arg1]
                canSellUnit[address(msg.sender)][arg1] -= arg2
    else:
        call schemaAddress.0xee4827ea with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0] - arg2, arg2
        require ext_call.success
        require ext_code.size(schemaAddress)
        call schemaAddress.0xfbe45b48 with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
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
            require ext_code.size(cardsAddress)
            if ext_call.return_data[32] > 0:
                call cardsAddress.0x396e70e0 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(cardsAddress)
                call cardsAddress.0xce29555f with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), arg1, ext_call.return_data[0], 0
                require ext_call.success
            call cardsAddress.0xe7001b84 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), arg1, arg2, 0
            require ext_call.success
            require ext_code.size(cardsAddress)
            call cardsAddress.0xfc4756df with:
                 gas gas_remaining wei
                args msg.sender, arg2, 0
            require ext_call.success
        else:
            require arg2 * ext_call.return_data[0] / ext_call.return_data[0] == arg2
            require ext_call.return_data[128]
            if arg2 * ext_call.return_data[0] > 0:
                require canSellUnit[address(msg.sender)][arg1] >= arg2
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
            if arg2 * ext_call.return_data[0] > 0:
                if not arg2 * ext_call.return_data[0]:
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x54605549 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 0, 1, 1
                else:
                    require 70 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] == 70
                    require ext_code.size(cardsAddress)
                    call cardsAddress.0x54605549 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 70 * arg2 * ext_call.return_data[0] / 100, 1, 1
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
            if arg2 * ext_call.return_data[0] > 0:
                require arg2 <= canSellUnit[address(msg.sender)][arg1]
                canSellUnit[address(msg.sender)][arg1] -= arg2
    emit UnitSold(msg.sender, arg1, arg2);
}



}
