contract main {




// =====================  Runtime code  =====================


const isEscrowContract = 1

const onERC721Received(address arg1, uint256 arg2, bytes arg3) = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
mapping of uint256 approvedWithdraw;
mapping of uint8 stor3;
mapping of struct sub_08ccc701;
mapping of uint256 stor5;
mapping of struct stor6;
uint256 withdrawAmount;
uint256 stor8;

function sub_08ccc701(?) {
    return sub_08ccc701[arg1].field_0, sub_08ccc701[arg1].field_256, sub_08ccc701[arg1].field_512
}

function approvedOBOs(address arg1) {
    return bool(stor1[arg1])
}

function withdrawAmount() {
    return withdrawAmount
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function approvedWithdrawAddresses(address arg1) {
    return approvedWithdraw[arg1]
}

function approvedTokenContracts(address arg1) {
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function addApprovedOBO(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function removeApprovedOBO(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function addApprovedTokenContract(address arg1) {
    require msg.sender == owner
    stor3[address(arg1)] = 1
}

function removeApprovedTokenContract(address arg1) {
    require msg.sender == owner
    stor3[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeApprovedWithdrawAddress(address arg1) {
    require msg.sender == owner
    approvedWithdraw[address(arg1)] = 0
    emit WithdrawAddressRemoved(arg1);
}

function addApprovedWithdrawAddress(address arg1) {
    require msg.sender == owner
    approvedWithdraw[address(arg1)] = block.timestamp
    emit WithdrawAddressAdded(arg1);
}

function getCurrentBidForToken(uint256 arg1, address arg2) {
    require stor3[address(arg2)]
    if stor5[address(arg2)][arg1]:
        return stor5[address(arg2)][arg1], stor6[stor5[address(arg2)][arg1]].field_0, stor6[stor5[address(arg2)][arg1]].field_256
    else:
        return 0
}

function sub_aa637a18(?) {
    require bool(stor1[msg.sender]) == 1
    if not sub_08ccc701[address(arg1)].field_0:
        revert with 0, 'No Payout Address was set'
    sub_08ccc701[address(arg1)].field_0 = 0
    sub_08ccc701[address(arg1)].field_256 = 0
    sub_08ccc701[address(arg1)].field_512 = 0
    emit 0x6a5d253e: address(arg1), sub_08ccc701[address(arg1)].field_0, sub_08ccc701[address(arg1)].field_256, 0
}

function withdrawFunds(address arg1) {
    require msg.sender == owner
    if 0 >= withdrawAmount:
        revert with 0, 'Nothing to withdraw right now'
    require approvedWithdraw[address(arg1)] > 0
    require block.timestamp - approvedWithdraw[address(arg1)] > 24 * 3600
    call arg1 with:
       value withdrawAmount wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    withdrawAmount = 0
}

function sub_73e5c557(?) {
    require not stor0
    require bool(stor1[msg.sender]) == 1
    if arg3 > 10000:
        revert with 0, 'Invalid percentage'
    if not arg2:
        revert with 0, 'Cant set payout to 0x0'
    if sub_08ccc701[address(arg1)].field_0:
        revert with 0, 'Payout Address already exists set'
    sub_08ccc701[address(arg1)].field_0 = arg2
    sub_08ccc701[address(arg1)].field_256 = arg3
    sub_08ccc701[address(arg1)].field_512 = block.timestamp
    emit 0x6a5d253e: address(arg1), address(arg2), arg3, 1
}

function cancelBid(uint256 arg1, address arg2, uint256 arg3) {
    require stor3[address(arg2)]
    require stor3[address(arg2)]
    if not stor5[address(arg2)][arg1]:
        revert with 0, 'No current bid available'
    if arg3 != stor5[address(arg2)][arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'bidId you provided is not the current bid'
    if stor6[stor5[address(arg2)][arg1]].field_0 != msg.sender:
        if bool(stor1[msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authorized to cancel the current bid'
    stor5[address(arg2)][arg1] = 0
    stor6[stor5[address(arg2)][arg1]].field_0 = 0
    stor6[stor5[address(arg2)][arg1]].field_256 = 0
    call stor6[stor5[address(arg2)][arg1]].field_0 with:
       value stor6[stor5[address(arg2)][arg1]].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenBidRemovedEvent(arg1, address(arg2), stor5[address(arg2)][arg1], stor6[stor5[address(arg2)][arg1]].field_0 == msg.sender);
}

function bidOnToken(uint256 arg1, address arg2) payable {
    require not stor0
    require stor3[address(arg2)]
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need to send a bid price via msg.value'
    require stor3[address(arg2)]
    require ext_code.size(arg2)
    call arg2.exists(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Requires a valid tokenId'
    if stor5[address(arg2)][arg1]:
        if msg.value <= stor6[stor5[address(arg2)][arg1]].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New bid has to be higher than current bid'
        stor5[address(arg2)][arg1] = 0
        stor6[stor5[address(arg2)][arg1]].field_0 = 0
        stor6[stor5[address(arg2)][arg1]].field_256 = 0
        call stor6[stor5[address(arg2)][arg1]].field_0 with:
           value stor6[stor5[address(arg2)][arg1]].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require stor8 + 1 >= stor8
    stor6[stor8 + 1].field_0 = msg.sender
    stor6[stor8 + 1].field_256 = msg.value
    stor5[address(arg2)][arg1] = stor8 + 1
    stor8++
    emit TokenBidCreatedEvent(arg1, address(arg2), stor8 + 1, msg.value, msg.sender);
}

function acceptBid(uint256 arg1, address arg2, uint256 arg3) {
    require not stor0
    require stor3[address(arg2)]
    require stor3[address(arg2)]
    require ext_code.size(arg2)
    call arg2.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor3[address(arg2)]
    if address(ext_call.return_data[0]) != msg.sender:
        require ext_code.size(arg2)
        call arg2.isApprovedForAll(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'You are not authorized to accept this bid'
    if 0 == stor5[address(arg2)][arg1]:
        revert with 0, 'No current bid available'
    if arg3 != stor5[address(arg2)][arg1]:
        revert with 0, 'bidId you provided is not the current bid'
    stor5[address(arg2)][arg1] = 0
    stor6[stor5[address(arg2)][arg1]].field_0 = 0
    stor6[stor5[address(arg2)][arg1]].field_256 = 0
    if not sub_08ccc701[address(ext_call.return_data[0])].field_0:
        require stor6[stor5[address(arg2)][arg1]].field_256 + withdrawAmount >= withdrawAmount
        withdrawAmount += stor6[stor5[address(arg2)][arg1]].field_256
        require stor3[address(arg2)]
        require ext_code.size(arg2)
        call arg2.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require stor3[address(arg2)]
        require ext_code.size(arg2)
        call arg2.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args this.address, stor6[stor5[address(arg2)][arg1]].field_0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenBidAccepted(arg1, address(arg2), stor5[address(arg2)][arg1], stor6[stor5[address(arg2)][arg1]].field_256, stor6[stor5[address(arg2)][arg1]].field_0, 0, 0);
    else:
        if block.timestamp - sub_08ccc701[address(ext_call.return_data[0])].field_512 > 24 * 3600 != 1:
            require stor6[stor5[address(arg2)][arg1]].field_256 + withdrawAmount >= withdrawAmount
            withdrawAmount += stor6[stor5[address(arg2)][arg1]].field_256
            require stor3[address(arg2)]
            require ext_code.size(arg2)
            call arg2.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require stor3[address(arg2)]
            require ext_code.size(arg2)
            call arg2.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args this.address, stor6[stor5[address(arg2)][arg1]].field_0, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenBidAccepted(arg1, address(arg2), stor5[address(arg2)][arg1], stor6[stor5[address(arg2)][arg1]].field_256, stor6[stor5[address(arg2)][arg1]].field_0, 0, 0);
        else:
            require sub_08ccc701[address(ext_call.return_data[0])].field_0
            if not stor6[stor5[address(arg2)][arg1]].field_256:
                if 0 > stor6[stor5[address(arg2)][arg1]].field_256:
                    revert with 0, 'Payout cannot be higher than bid price'
                require sub_08ccc701[address(ext_call.return_data[0])].field_0
                call sub_08ccc701[address(ext_call.return_data[0])].field_0 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require stor6[stor5[address(arg2)][arg1]].field_256 + withdrawAmount >= withdrawAmount
                withdrawAmount += stor6[stor5[address(arg2)][arg1]].field_256
                require stor3[address(arg2)]
                require ext_code.size(arg2)
                call arg2.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require stor3[address(arg2)]
                require ext_code.size(arg2)
                call arg2.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, stor6[stor5[address(arg2)][arg1]].field_0, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenBidAccepted(arg1, address(arg2), stor5[address(arg2)][arg1], stor6[stor5[address(arg2)][arg1]].field_256, stor6[stor5[address(arg2)][arg1]].field_0, sub_08ccc701[address(ext_call.return_data[0])].field_0, 0);
            else:
                require sub_08ccc701[address(ext_call.return_data[0])].field_256 * stor6[stor5[address(arg2)][arg1]].field_256 / stor6[stor5[address(arg2)][arg1]].field_256 == sub_08ccc701[address(ext_call.return_data[0])].field_256
                if sub_08ccc701[address(ext_call.return_data[0])].field_256 * stor6[stor5[address(arg2)][arg1]].field_256 / 10000 > stor6[stor5[address(arg2)][arg1]].field_256:
                    revert with 0, 'Payout cannot be higher than bid price'
                require sub_08ccc701[address(ext_call.return_data[0])].field_0
                call sub_08ccc701[address(ext_call.return_data[0])].field_0 with:
                   value sub_08ccc701[address(ext_call.return_data[0])].field_256 * stor6[stor5[address(arg2)][arg1]].field_256 / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require stor6[stor5[address(arg2)][arg1]].field_256 - (sub_08ccc701[address(ext_call.return_data[0])].field_256 * stor6[stor5[address(arg2)][arg1]].field_256 / 10000) + withdrawAmount >= withdrawAmount
                withdrawAmount = stor6[stor5[address(arg2)][arg1]].field_256 - (sub_08ccc701[address(ext_call.return_data[0])].field_256 * stor6[stor5[address(arg2)][arg1]].field_256 / 10000) + withdrawAmount
                require stor3[address(arg2)]
                require ext_code.size(arg2)
                call arg2.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require stor3[address(arg2)]
                require ext_code.size(arg2)
                call arg2.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, stor6[stor5[address(arg2)][arg1]].field_0, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenBidAccepted(arg1, address(arg2), stor5[address(arg2)][arg1], stor6[stor5[address(arg2)][arg1]].field_256, stor6[stor5[address(arg2)][arg1]].field_0, sub_08ccc701[address(ext_call.return_data[0])].field_0, sub_08ccc701[address(ext_call.return_data[0])].field_256 * stor6[stor5[address(arg2)][arg1]].field_256 / 10000);
}



}
