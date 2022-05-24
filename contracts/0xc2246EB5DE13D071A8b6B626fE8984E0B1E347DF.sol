contract main {




// =====================  Runtime code  =====================


#
#  - sub_dc2cbf3a(?)
#
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 stor5;
uint256 stor6;
mapping of uint8 stor8;
mapping of uint8 stor9;
array of struct milestones;
array of uint256 sub_44a0f0c2;
uint256 rate;
uint256 milestoneCount;
uint256 sub_35371cdf;
uint256 minimumGoal;
uint256 amountRaised;
uint256 deadline;
uint8 finalized;
address stor18; offset 8
uint256 stor19;
address stor20;
uint8 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;

function milestoneCount() {
    return milestoneCount
}

function deadline() {
    return deadline
}

function rate() {
    return rate
}

function sub_35371cdf(?) {
    return sub_35371cdf
}

function sub_35950fed(?) {
    return bool(stor1[address(arg1)])
}

function sub_44a0f0c2(?) {
    require arg1 < sub_44a0f0c2.length
    return sub_44a0f0c2[arg1]
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function sub_93879fa6(?) {
    return bool(stor8[arg1])
}

function whitelist(address arg1) {
    return bool(stor2[arg1])
}

function finalized() {
    return bool(finalized)
}

function minimumGoal() {
    return minimumGoal
}

function sub_c4a409e3(?) {
    return bool(stor9[arg1])
}

function milestones(uint256 arg1) {
    require arg1 < milestones.length
    return milestones[arg1].field_0, milestones[arg1].field_256, milestones[arg1].field_512
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    stor1[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    stor1[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if not arg1:
        revert with 0, 'New Owner Address Is Invalid'
    owner = arg1
}

function getState() {
    if finalized:
        return 4
    if block.timestamp < deadline:
        return 1
    if amountRaised >= minimumGoal:
        return 2
    if block.timestamp <= deadline:
        return 3
    return 5
}

function sub_c1558c64(?) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if not arg1:
        revert with 0, 'Referrer address is not valid'
    emit 0xbddd0817: arg1
    stor8[address(arg1)] = 0
}

function sub_5687a545(?) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if not arg1:
        revert with 0, 'Referrer address is not valid.'
    emit 0xc51830a0: arg1
    stor9[address(arg1)] = 0
}

function enableRefunds() {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    require ext_code.size(stor20)
    call stor20.0x8c52dc41 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6f2cc146(?) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New percentage must be equal to or greater than 0'
    emit 0x77fdd338: arg1
    stor6 = arg1
}

function sub_7738e5ff(?) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New percentage must be equal to or greater than 0'
    emit 0x1e6cd5c7: arg1
    stor5 = arg1
}

function sub_ccf6c994(?) {
    require ext_code.size(stor20)
    call stor20.getTokenAmount(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function whitelistAddress(address arg1) {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Sender is not an admin'
    if not arg1:
        revert with 0, 'Address is invalid.'
    stor2[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function removeAddressFromWhitelist(address arg1) {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Sender is not an admin'
    if not arg1:
        revert with 0, 'Address is invalid'
    stor2[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}

function setBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    require arg1
    emit 0xf5edcd45 
    require ext_code.size(stor20)
    call stor20.setWallet(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setHardCap(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if arg1 <= 0:
        revert with 0, 'No value for hard cap'
    if not arg1:
        emit 0x57bbf0b7: 0
        sub_35371cdf = 0
    else:
        require 10^18 * arg1 / arg1 == 10^18
        emit 0x57bbf0b7: (10^18 * arg1)
        sub_35371cdf = 10^18 * arg1
    return 1
}

function sub_a6a7f64d(?) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if not arg1:
        revert with 0, 'Investor address is invalid.'
    if arg2 <= 0:
        revert with 0, 'Timestamp is invalid.'
    require ext_code.size(stor18)
    call stor18.0x816127a7 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalance() {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Sender is not an admin'
    require ext_code.size(stor20)
    call stor20.getCrowdsaleBalance() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claimRefund() payable {
    require not finalized
    require block.timestamp >= deadline
    require amountRaised < minimumGoal
    require block.timestamp > deadline
    require msg.sender
    emit Refund(msg.sender);
    require ext_code.size(stor20)
    call stor20.refund(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_672f8185(?) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if not arg1:
        revert with 0, 'Address is invalid'
    if bool(stor2[address(arg1)]) != 1:
        revert with 0, 'Address is not whitelisted'
    if not arg1:
        revert with 0, 'Referrer address is not valid.'
    if stor9[address(arg1)]:
        revert with 0, 'Referrer is already Gold Status'
    emit 0xa84d277a: arg1
    stor8[address(arg1)] = 1
}

function sub_1166885f(?) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if not arg1:
        revert with 0, 'Address is invalid'
    if bool(stor2[address(arg1)]) != 1:
        revert with 0, 'Address is not whitelisted'
    if not arg1:
        revert with 0, 'Referrer address is not valid.'
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Referrer is already Silver Status'
    emit 0xbc6523df: arg1
    stor9[address(arg1)] = 1
}

function getCurrentPrice() {
    if 0 >= milestones.length:
        revert with 0, 'Must Have At Least One Milestone'
    idx = 0
    while idx < milestones.length:
        mem[0] = 10
        if milestones[idx].field_0 > block.timestamp:
            idx = idx + 1
            continue 
        require idx < milestones.length
        mem[0] = 10
        if milestones[idx].field_256 <= block.timestamp:
            idx = idx + 1
            continue 
        require idx < milestones.length
        return milestones[idx].field_512
    return 0
}

function updateRate(uint256 arg1) {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Sender is not an admin'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New Rate Must Have A Value Greater Than Zero'
    rate = arg1
    emit UpdateRate(arg1);
    idx = 0
    while idx < milestones.length:
        require idx < sub_44a0f0c2.length
        if not rate:
            require idx < milestones.length
            mem[0] = 10
            milestones[idx].field_512 = 0
        else:
            require sub_44a0f0c2[idx] * rate / rate == sub_44a0f0c2[idx]
            require idx < milestones.length
            mem[0] = 10
            milestones[idx].field_512 = sub_44a0f0c2[idx] * rate
        idx = idx + 1
        continue 
}

function claimTokens() payable {
    if not finalized:
        require block.timestamp >= deadline
        require amountRaised < minimumGoal
        require block.timestamp > deadline
        revert
    else:
        require msg.sender
        require ext_code.size(stor20)
        call stor20.0xeed72d5c with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            emit Reward(msg.sender, ext_call.return_data[0]);
            require ext_code.size(stor18)
            call stor18.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 1
}

function sub_5eb8d90b(?) payable {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if 0 >= amountRaised:
        revert with 0, 'Not Enough Funds To Withdraw!'
    if not finalized:
        if block.timestamp >= deadline:
            if amountRaised < minimumGoal:
                if block.timestamp > deadline:
                    revert with 0, 'Crowdsale Is Refunding!'
    if not finalized:
        if block.timestamp >= deadline:
            if amountRaised < minimumGoal:
                if block.timestamp <= deadline:
                    revert with 0, 'Crowdsale Failed!'
    if amountRaised < minimumGoal:
        revert with 0, 'Crowdsale Has Not Met Soft Cap!'
    emit Withdraw()
    require ext_code.size(stor20)
    call stor20.0x63bd1d4a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_2275fa3b(?) {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Sender is not an admin'
    require stor22
    stor22 = 0
    require ext_code.size(stor18)
    call stor18.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor20)
        call stor20.0x9ebdee7d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 0
        emit 0x8e45fbeb: address(arg1), -ext_call.return_data[0]
        require ext_code.size(stor18)
        call stor18.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), -ext_call.return_data[0]
    else:
        require stor26 * ext_call.return_data[0] / ext_call.return_data[0] == stor26
        require ext_code.size(stor20)
        call stor20.0x9ebdee7d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= stor26 * ext_call.return_data[0] / 100
        emit 0x8e45fbeb: address(arg1), (stor26 * ext_call.return_data[0] / 100) - ext_call.return_data[0]
        require ext_code.size(stor18)
        call stor18.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (stor26 * ext_call.return_data[0] / 100) - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finalizeCrowdsale() {
    require not finalized
    require block.timestamp >= deadline
    if amountRaised < minimumGoal:
        require block.timestamp > deadline
        revert
    else:
        if not msg.sender:
            revert with 0, 'Sender's Address Is Invalid'
        else:
            if bool(stor1[address(msg.sender)]) != 1:
                revert with 0, 'Sender is not an admin'
            else:
                require not finalized
                finalized = 1
                require ext_code.size(stor20)
                call stor20.close() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not finalized:
                        require block.timestamp >= deadline
                        require amountRaised < minimumGoal
                        require block.timestamp > deadline
                        revert
                    else:
                        require ext_code.size(stor18)
                        call stor18.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            stor28 = ext_call.return_data[0]
                            if stor25:
                                require ext_call.return_data[0] * stor25 / stor25 == ext_call.return_data[0]
                                require ext_code.size(stor20)
                                call stor20.tokensAllocated() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= ext_call.return_data[0] * stor25 / 100
                                    require ext_call.return_data[0] * stor25 / 100
                                    stor27 = (100 * ext_call.return_data[0] * stor25 / 100 * stor19) - (100 * ext_call.return_data[0] * stor19) / ext_call.return_data[0] * stor25 / 100
                                    emit 0xba7bbc46: ((ext_call.return_data[0] * stor25 / 100) - ext_call.return_data[0])
                                    require ext_code.size(stor18)
                                    call stor18.0x42966c68 with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * stor25 / 100) - ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(stor20)
                                call stor20.tokensAllocated() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0
                                    revert
}

function sub_107a88ca(?) {
    if not finalized:
        require block.timestamp >= deadline
        require amountRaised < minimumGoal
        require block.timestamp > deadline
        revert
    else:
        if owner != msg.sender:
            revert with 0, 'Sender Is Not The Owner'
        else:
            if stor28 <= 0:
                revert with 0, 'totalSupply has not been set'
            else:
                if 0 >= stor27:
                    revert with 0, 'percentToBurn has not been set'
                else:
                    if stor28:
                        require stor24 * stor28 / stor28 == stor24
                        if stor24 * stor28 / 100:
                            require stor27 * stor24 * stor28 / 100 / stor24 * stor28 / 100 == stor27
                            require stor19
                            require ext_code.size(stor18)
                            call stor18.0x42966c68 with:
                                 gas gas_remaining wei
                                args (stor27 * stor24 * stor28 / 100 / 100 / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor19
                                require stor27 * stor24 * stor28 / 100 / 100 / stor19 <= stor24 * stor28 / 100
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (stor24 * stor28 / 100) - (stor27 * stor24 * stor28 / 100 / 100 / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require stor19
                            require ext_code.size(stor18)
                            call stor18.0x42966c68 with:
                                 gas gas_remaining wei
                                args (0 / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor19
                                require 0 / stor19 <= stor24 * stor28 / 100
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (stor24 * stor28 / 100) - (0 / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        require stor19
                        require ext_code.size(stor18)
                        call stor18.0x42966c68 with:
                             gas gas_remaining wei
                            args (0 / stor19)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor19
                            require 0 / stor19 <= 0
                            require ext_code.size(stor18)
                            call stor18.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), -0 / stor19
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
}

function sub_9f8d9a8c(?) {
    if not finalized:
        require block.timestamp >= deadline
        require amountRaised < minimumGoal
        require block.timestamp > deadline
        revert
    else:
        if owner != msg.sender:
            revert with 0, 'Sender Is Not The Owner'
        else:
            if stor28 <= 0:
                revert with 0, 'totalSupply has not been set'
            else:
                if 0 >= stor27:
                    revert with 0, 'percentToBurn has not been set'
                else:
                    if stor28:
                        require stor23 * stor28 / stor28 == stor23
                        if stor23 * stor28 / 100:
                            require stor27 * stor23 * stor28 / 100 / stor23 * stor28 / 100 == stor27
                            require stor19
                            require ext_code.size(stor18)
                            call stor18.0x42966c68 with:
                                 gas gas_remaining wei
                                args (stor27 * stor23 * stor28 / 100 / 100 / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor19
                                require stor27 * stor23 * stor28 / 100 / 100 / stor19 <= stor23 * stor28 / 100
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (stor23 * stor28 / 100) - (stor27 * stor23 * stor28 / 100 / 100 / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require stor19
                            require ext_code.size(stor18)
                            call stor18.0x42966c68 with:
                                 gas gas_remaining wei
                                args (0 / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor19
                                require 0 / stor19 <= stor23 * stor28 / 100
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (stor23 * stor28 / 100) - (0 / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        require stor19
                        require ext_code.size(stor18)
                        call stor18.0x42966c68 with:
                             gas gas_remaining wei
                            args (0 / stor19)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor19
                            require 0 / stor19 <= 0
                            require ext_code.size(stor18)
                            call stor18.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), -0 / stor19
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
}

function sub_63ef25c6(?) {
    if not finalized:
        require block.timestamp >= deadline
        require amountRaised < minimumGoal
        require block.timestamp > deadline
        revert
    else:
        if owner != msg.sender:
            revert with 0, 'Sender Is Not The Owner'
        else:
            if stor26:
                require stor28 * stor26 / stor26 == stor28
                require ext_code.size(stor20)
                call stor20.0x9ebdee7d with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= stor28 * stor26 / 100
                    if stor28 * stor26 / 100:
                        require stor27 * stor28 * stor26 / 100 / stor28 * stor26 / 100 == stor27
                        require stor19
                        require ext_code.size(stor18)
                        call stor18.0x42966c68 with:
                             gas gas_remaining wei
                            args (stor27 * stor28 * stor26 / 100 / 100 / stor19)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor19
                            require stor27 * stor28 * stor26 / 100 / 100 / stor19 <= (stor28 * stor26 / 100) - ext_call.return_data[0]
                            emit 0x8e45fbeb: address(arg1), (stor28 * stor26 / 100) - ext_call.return_data[0] - (stor27 * stor28 * stor26 / 100 / 100 / stor19)
                            require ext_code.size(stor18)
                            call stor18.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (stor28 * stor26 / 100) - ext_call.return_data[0] - (stor27 * stor28 * stor26 / 100 / 100 / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require stor19
                        require ext_code.size(stor18)
                        call stor18.0x42966c68 with:
                             gas gas_remaining wei
                            args (0 / stor19)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor19
                            require 0 / stor19 <= (stor28 * stor26 / 100) - ext_call.return_data[0]
                            emit 0x8e45fbeb: address(arg1), (stor28 * stor26 / 100) - ext_call.return_data[0] - (0 / stor19)
                            require ext_code.size(stor18)
                            call stor18.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (stor28 * stor26 / 100) - ext_call.return_data[0] - (0 / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
            else:
                require ext_code.size(stor20)
                call stor20.0x9ebdee7d with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0
                    require stor19
                    require ext_code.size(stor18)
                    call stor18.0x42966c68 with:
                         gas gas_remaining wei
                        args (0 / stor19)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require stor19
                        require 0 / stor19 <= -ext_call.return_data[0]
                        emit 0x8e45fbeb: address(arg1), -ext_call.return_data[0] - (0 / stor19)
                        require ext_code.size(stor18)
                        call stor18.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), -ext_call.return_data[0] - (0 / stor19)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
}

function sub_409f82df(?) payable {
    require not finalized
    if block.timestamp >= deadline:
        require amountRaised < minimumGoal
        require block.timestamp > deadline
        revert
    else:
        if not msg.sender:
            revert with 0, 'Address is invalid'
        else:
            if bool(stor2[address(msg.sender)]) != 1:
                revert with 0, 'Address is not whitelisted'
            else:
                require not finalized
                if block.timestamp >= deadline:
                    require amountRaised < minimumGoal
                    require block.timestamp > deadline
                    revert
                else:
                    require msg.value + amountRaised >= amountRaised
                    if msg.value + amountRaised > sub_35371cdf:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Unable to process contribution as hard cap is reached'
                    else:
                        require msg.value > 0
                        if 0 >= milestones.length:
                            revert with 0, 'Must Have At Least One Milestone'
                        else:
                            idx = 0
                            while idx < milestones.length:
                                mem[0] = 10
                                if milestones[idx].field_0 > block.timestamp:
                                    idx = idx + 1
                                    continue 
                                else:
                                    require idx < milestones.length
                                    mem[0] = 10
                                    if milestones[idx].field_256 <= block.timestamp:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require idx < milestones.length
                                        require milestones[idx].field_512 <= msg.value
                                        if msg.value:
                                            require stor19 * msg.value / msg.value == stor19
                                            require milestones[idx].field_512
                                            require ext_code.size(stor18)
                                            call stor18.0x70a08231 with:
                                                 gas gas_remaining wei
                                                args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_code.size(stor20)
                                                call stor20.'u^>(' with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if stor25:
                                                        require ext_call.return_data[0] * stor25 / stor25 == ext_call.return_data[0]
                                                        require (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                        if (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0]:
                                                            require (100 * stor19 * msg.value / milestones[idx].field_512) + (100 * ext_call.return_data[0]) / (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0] == 100
                                                            require (100 * stor19 * msg.value / milestones[idx].field_512) + (100 * ext_call.return_data[0]) <= ext_call.return_data[0] * stor25
                                                            require msg.value + amountRaised >= amountRaised
                                                            amountRaised += msg.value
                                                            require stor19 * msg.value / milestones[idx].field_512 >= stor19 * msg.value / milestones[idx].field_512
                                                            emit Contribution(msg.sender, msg.value, stor19 * msg.value / milestones[idx].field_512);
                                                            require ext_code.size(stor20)
                                                            call stor20.0xad6bdc with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, stor19 * msg.value / milestones[idx].field_512, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor18)
                                                                call stor18.0x6285194e with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor20)
                                                                    call stor20.deposit(address arg1) with:
                                                                       value msg.value wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            require 0 <= ext_call.return_data[0] * stor25
                                                            require msg.value + amountRaised >= amountRaised
                                                            amountRaised += msg.value
                                                            require stor19 * msg.value / milestones[idx].field_512 >= stor19 * msg.value / milestones[idx].field_512
                                                            emit Contribution(msg.sender, msg.value, stor19 * msg.value / milestones[idx].field_512);
                                                            require ext_code.size(stor20)
                                                            call stor20.0xad6bdc with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, stor19 * msg.value / milestones[idx].field_512, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor18)
                                                                call stor18.0x6285194e with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor20)
                                                                    call stor20.deposit(address arg1) with:
                                                                       value msg.value wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        require (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                        if (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0]:
                                                            require (100 * stor19 * msg.value / milestones[idx].field_512) + (100 * ext_call.return_data[0]) / (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0] == 100
                                                            require (100 * stor19 * msg.value / milestones[idx].field_512) + (100 * ext_call.return_data[0]) <= 0
                                                            require msg.value + amountRaised >= amountRaised
                                                            amountRaised += msg.value
                                                            require stor19 * msg.value / milestones[idx].field_512 >= stor19 * msg.value / milestones[idx].field_512
                                                            emit Contribution(msg.sender, msg.value, stor19 * msg.value / milestones[idx].field_512);
                                                            require ext_code.size(stor20)
                                                            call stor20.0xad6bdc with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, stor19 * msg.value / milestones[idx].field_512, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor18)
                                                                call stor18.0x6285194e with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor20)
                                                                    call stor20.deposit(address arg1) with:
                                                                       value msg.value wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            require msg.value + amountRaised >= amountRaised
                                                            amountRaised += msg.value
                                                            require stor19 * msg.value / milestones[idx].field_512 >= stor19 * msg.value / milestones[idx].field_512
                                                            emit Contribution(msg.sender, msg.value, stor19 * msg.value / milestones[idx].field_512);
                                                            require ext_code.size(stor20)
                                                            call stor20.0xad6bdc with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, stor19 * msg.value / milestones[idx].field_512, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor18)
                                                                call stor18.0x6285194e with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor20)
                                                                    call stor20.deposit(address arg1) with:
                                                                       value msg.value wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                        else:
                                            require milestones[idx].field_512
                                            require ext_code.size(stor18)
                                            call stor18.0x70a08231 with:
                                                 gas gas_remaining wei
                                                args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_code.size(stor20)
                                                call stor20.'u^>(' with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if stor25:
                                                        require ext_call.return_data[0] * stor25 / stor25 == ext_call.return_data[0]
                                                        require (0 / milestones[idx].field_512) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                        if (0 / milestones[idx].field_512) + ext_call.return_data[0]:
                                                            require (100 * 0 / milestones[idx].field_512) + (100 * ext_call.return_data[0]) / (0 / milestones[idx].field_512) + ext_call.return_data[0] == 100
                                                            require (100 * 0 / milestones[idx].field_512) + (100 * ext_call.return_data[0]) <= ext_call.return_data[0] * stor25
                                                            require msg.value + amountRaised >= amountRaised
                                                            amountRaised += msg.value
                                                            require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                            emit Contribution(msg.sender, msg.value, 0 / milestones[idx].field_512);
                                                            require ext_code.size(stor20)
                                                            call stor20.0xad6bdc with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0 / milestones[idx].field_512, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor18)
                                                                call stor18.0x6285194e with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor20)
                                                                    call stor20.deposit(address arg1) with:
                                                                       value msg.value wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            require 0 <= ext_call.return_data[0] * stor25
                                                            require msg.value + amountRaised >= amountRaised
                                                            amountRaised += msg.value
                                                            require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                            emit Contribution(msg.sender, msg.value, 0 / milestones[idx].field_512);
                                                            require ext_code.size(stor20)
                                                            call stor20.0xad6bdc with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0 / milestones[idx].field_512, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor18)
                                                                call stor18.0x6285194e with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor20)
                                                                    call stor20.deposit(address arg1) with:
                                                                       value msg.value wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        require (0 / milestones[idx].field_512) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                        if (0 / milestones[idx].field_512) + ext_call.return_data[0]:
                                                            require (100 * 0 / milestones[idx].field_512) + (100 * ext_call.return_data[0]) / (0 / milestones[idx].field_512) + ext_call.return_data[0] == 100
                                                            require (100 * 0 / milestones[idx].field_512) + (100 * ext_call.return_data[0]) <= 0
                                                            require msg.value + amountRaised >= amountRaised
                                                            amountRaised += msg.value
                                                            require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                            emit Contribution(msg.sender, msg.value, 0 / milestones[idx].field_512);
                                                            require ext_code.size(stor20)
                                                            call stor20.0xad6bdc with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0 / milestones[idx].field_512, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor18)
                                                                call stor18.0x6285194e with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor20)
                                                                    call stor20.deposit(address arg1) with:
                                                                       value msg.value wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            require msg.value + amountRaised >= amountRaised
                                                            amountRaised += msg.value
                                                            require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                            emit Contribution(msg.sender, msg.value, 0 / milestones[idx].field_512);
                                                            require ext_code.size(stor20)
                                                            call stor20.0xad6bdc with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0 / milestones[idx].field_512, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(stor18)
                                                                call stor18.0x6285194e with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(stor20)
                                                                    call stor20.deposit(address arg1) with:
                                                                       value msg.value wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                            require 0 <= msg.value
                            require msg.value
                            require stor19 * msg.value / msg.value == stor19
                            revert
}

function sub_56a3919c(?) payable {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    else:
        if bool(stor1[address(msg.sender)]) != 1:
            revert with 0, 'Sender is not an admin'
        else:
            if not arg1:
                revert with 0, 'Address is invalid'
            else:
                if bool(stor2[address(arg1)]) != 1:
                    revert with 0, 'Address is not whitelisted'
                else:
                    require not finalized
                    if block.timestamp >= deadline:
                        require amountRaised < minimumGoal
                        require block.timestamp > deadline
                        revert
                    else:
                        require msg.value > 0
                        require arg1
                        emit 0x5a4991bf: address(arg1), msg.value
                        if bool(stor2[address(arg1)]) != 1:
                            revert with 0, 'Address is not whitelisted'
                        else:
                            require not finalized
                            if block.timestamp >= deadline:
                                require amountRaised < minimumGoal
                                require block.timestamp > deadline
                                revert
                            else:
                                require msg.value + amountRaised >= amountRaised
                                if msg.value + amountRaised > sub_35371cdf:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'Unable to process contribution as hard cap is reached'
                                else:
                                    require msg.value > 0
                                    if 0 >= milestones.length:
                                        revert with 0, 'Must Have At Least One Milestone'
                                    else:
                                        idx = 0
                                        while idx < milestones.length:
                                            mem[0] = 10
                                            if milestones[idx].field_0 > block.timestamp:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require idx < milestones.length
                                                mem[0] = 10
                                                if milestones[idx].field_256 <= block.timestamp:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require idx < milestones.length
                                                    require milestones[idx].field_512 <= msg.value
                                                    if msg.value:
                                                        require stor19 * msg.value / msg.value == stor19
                                                        require milestones[idx].field_512
                                                        require ext_code.size(stor18)
                                                        call stor18.0x70a08231 with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_code.size(stor20)
                                                            call stor20.'u^>(' with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if stor25:
                                                                    require ext_call.return_data[0] * stor25 / stor25 == ext_call.return_data[0]
                                                                    require (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                    if (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0]:
                                                                        require (100 * stor19 * msg.value / milestones[idx].field_512) + (100 * ext_call.return_data[0]) / (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0] == 100
                                                                        require (100 * stor19 * msg.value / milestones[idx].field_512) + (100 * ext_call.return_data[0]) <= ext_call.return_data[0] * stor25
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require stor19 * msg.value / milestones[idx].field_512 >= stor19 * msg.value / milestones[idx].field_512
                                                                        emit Contribution(address(arg1), msg.value, stor19 * msg.value / milestones[idx].field_512);
                                                                        require ext_code.size(stor20)
                                                                        call stor20.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), stor19 * msg.value / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor18)
                                                                            call stor18.0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor20)
                                                                                call stor20.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        require 0 <= ext_call.return_data[0] * stor25
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require stor19 * msg.value / milestones[idx].field_512 >= stor19 * msg.value / milestones[idx].field_512
                                                                        emit Contribution(address(arg1), msg.value, stor19 * msg.value / milestones[idx].field_512);
                                                                        require ext_code.size(stor20)
                                                                        call stor20.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), stor19 * msg.value / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor18)
                                                                            call stor18.0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor20)
                                                                                call stor20.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    require (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                    if (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0]:
                                                                        require (100 * stor19 * msg.value / milestones[idx].field_512) + (100 * ext_call.return_data[0]) / (stor19 * msg.value / milestones[idx].field_512) + ext_call.return_data[0] == 100
                                                                        require (100 * stor19 * msg.value / milestones[idx].field_512) + (100 * ext_call.return_data[0]) <= 0
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require stor19 * msg.value / milestones[idx].field_512 >= stor19 * msg.value / milestones[idx].field_512
                                                                        emit Contribution(address(arg1), msg.value, stor19 * msg.value / milestones[idx].field_512);
                                                                        require ext_code.size(stor20)
                                                                        call stor20.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), stor19 * msg.value / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor18)
                                                                            call stor18.0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor20)
                                                                                call stor20.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require stor19 * msg.value / milestones[idx].field_512 >= stor19 * msg.value / milestones[idx].field_512
                                                                        emit Contribution(address(arg1), msg.value, stor19 * msg.value / milestones[idx].field_512);
                                                                        require ext_code.size(stor20)
                                                                        call stor20.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), stor19 * msg.value / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor18)
                                                                            call stor18.0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor20)
                                                                                call stor20.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                    else:
                                                        require milestones[idx].field_512
                                                        require ext_code.size(stor18)
                                                        call stor18.0x70a08231 with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_code.size(stor20)
                                                            call stor20.'u^>(' with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if stor25:
                                                                    require ext_call.return_data[0] * stor25 / stor25 == ext_call.return_data[0]
                                                                    require (0 / milestones[idx].field_512) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                    if (0 / milestones[idx].field_512) + ext_call.return_data[0]:
                                                                        require (100 * 0 / milestones[idx].field_512) + (100 * ext_call.return_data[0]) / (0 / milestones[idx].field_512) + ext_call.return_data[0] == 100
                                                                        require (100 * 0 / milestones[idx].field_512) + (100 * ext_call.return_data[0]) <= ext_call.return_data[0] * stor25
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                                        emit Contribution(address(arg1), msg.value, 0 / milestones[idx].field_512);
                                                                        require ext_code.size(stor20)
                                                                        call stor20.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), 0 / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor18)
                                                                            call stor18.0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor20)
                                                                                call stor20.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        require 0 <= ext_call.return_data[0] * stor25
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                                        emit Contribution(address(arg1), msg.value, 0 / milestones[idx].field_512);
                                                                        require ext_code.size(stor20)
                                                                        call stor20.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), 0 / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor18)
                                                                            call stor18.0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor20)
                                                                                call stor20.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    require (0 / milestones[idx].field_512) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                    if (0 / milestones[idx].field_512) + ext_call.return_data[0]:
                                                                        require (100 * 0 / milestones[idx].field_512) + (100 * ext_call.return_data[0]) / (0 / milestones[idx].field_512) + ext_call.return_data[0] == 100
                                                                        require (100 * 0 / milestones[idx].field_512) + (100 * ext_call.return_data[0]) <= 0
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                                        emit Contribution(address(arg1), msg.value, 0 / milestones[idx].field_512);
                                                                        require ext_code.size(stor20)
                                                                        call stor20.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), 0 / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor18)
                                                                            call stor18.0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor20)
                                                                                call stor20.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                                        emit Contribution(address(arg1), msg.value, 0 / milestones[idx].field_512);
                                                                        require ext_code.size(stor20)
                                                                        call stor20.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), 0 / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(stor18)
                                                                            call stor18.0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor20)
                                                                                call stor20.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                        require 0 <= msg.value
                                        require msg.value
                                        require stor19 * msg.value / msg.value == stor19
                                        revert
}



}
