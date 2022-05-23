contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
mapping of uint8 stor3;
array of struct milestones;
array of uint256 sub_44a0f0c2;
uint256 rate;
uint256 milestoneCount;
uint256 sub_35371cdf;
uint256 minimumGoal;
uint256 amountRaised;
uint256 deadline;
uint8 stor12;
address stor12; offset 8
uint256 stor13;
address stor14;
uint256 stor15;
uint256 stor16;
uint8 stor17; offset 160
address stor17;

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

function paused() {
    return bool(stor2)
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor3[arg1])
}

function finalized() {
    return bool(uint8(stor12.field_0))
}

function minimumGoal() {
    return minimumGoal
}

function milestones(uint256 arg1) {
    require arg1 < milestones.length
    return milestones[arg1].field_0, milestones[arg1].field_256, milestones[arg1].field_512
}

function _fallback() payable {
    revert
}

function checkAdmin(address arg1) {
    require stor1[address(arg1)]
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    require stor2
    stor2 = 0
    emit Unpause()
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    require not stor2
    stor2 = 1
    emit Pause()
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

function setMarketingWallet(address arg1) {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    require stor1[address(msg.sender)]
    require arg1
    emit 0xf2ceab04 
    address(stor17.field_0) = arg1
}

function whitelistAddress(address arg1) {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    require stor1[address(msg.sender)]
    require arg1
    stor3[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function getState() {
    if uint8(stor12.field_0):
        return 4
    if block.timestamp < deadline:
        return 1
    if amountRaised >= minimumGoal:
        return 2
    if block.timestamp <= deadline:
        return 3
    return 5
}

function removeAddressFromWhitelist(address arg1) {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    require stor1[address(msg.sender)]
    require arg1
    stor3[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}

function enableRefunds() {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    require ext_code.size(stor14)
    call stor14.0x8c52dc41 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ccf6c994(?) {
    require ext_code.size(stor14)
    call stor14.getTokenAmount(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    require arg1
    emit 0xf5edcd45 
    require ext_code.size(stor14)
    call stor14.0xdeaa59df with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalance() {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    require stor1[address(msg.sender)]
    require ext_code.size(stor14)
    call stor14.getCrowdsaleBalance() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claimRefund() payable {
    require not stor2
    require not uint8(stor12.field_0)
    require block.timestamp >= deadline
    require amountRaised < minimumGoal
    require block.timestamp > deadline
    require msg.sender
    emit Refund(msg.sender);
    require ext_code.size(stor14)
    call stor14.refund(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getCurrentPrice() {
    if 0 >= milestones.length:
        revert with 0, 'Must Have At Least One Milestone'
    idx = 0
    while idx < milestones.length:
        mem[0] = 4
        if milestones[idx].field_0 > block.timestamp:
            idx = idx + 1
            continue 
        require idx < milestones.length
        mem[0] = 4
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
    require stor1[address(msg.sender)]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New Rate Must Have A Value Greater Than Zero'
    rate = arg1
    emit UpdateRate(arg1);
    idx = 0
    while idx < milestones.length:
        require idx < sub_44a0f0c2.length
        if not rate:
            require idx < milestones.length
            mem[0] = 4
            milestones[idx].field_512 = 0
        else:
            require sub_44a0f0c2[idx] * rate / rate == sub_44a0f0c2[idx]
            require idx < milestones.length
            mem[0] = 4
            milestones[idx].field_512 = sub_44a0f0c2[idx] * rate
        idx = idx + 1
        continue 
}

function sub_5eb8d90b(?) payable {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if 0 >= amountRaised:
        revert with 0, 'Not Enough Funds To Withdraw!'
    if not uint8(stor12.field_0):
        if block.timestamp >= deadline:
            if amountRaised < minimumGoal:
                if block.timestamp > deadline:
                    revert with 0, 'Crowdsale Is Refunding!'
    if not uint8(stor12.field_0):
        if block.timestamp >= deadline:
            if amountRaised < minimumGoal:
                if block.timestamp <= deadline:
                    revert with 0, 'Crowdsale Failed!'
    if amountRaised < minimumGoal:
        revert with 0, 'Crowdsale Has Not Met Soft Cap!'
    emit Withdraw()
    require ext_code.size(stor14)
    call stor14.payout() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function claimTokens() payable {
    require not stor2
    if not uint8(stor12.field_0):
        require block.timestamp >= deadline
        require amountRaised < minimumGoal
        require block.timestamp > deadline
        revert
    else:
        require msg.sender
        require ext_code.size(stor14)
        call stor14.0xeed72d5c with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            emit Reward(msg.sender, ext_call.return_data[0]);
            require ext_code.size(address(stor12.field_8))
            call address(stor12.field_8).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 1
}

function sub_12b70202(?) {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    require stor1[address(msg.sender)]
    require uint8(stor17.field_160)
    uint8(stor17.field_160) = 0
    require ext_code.size(address(stor12.field_8))
    call address(stor12.field_8).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor14)
        call stor14.0x9ebdee7d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 0
        if -ext_call.return_data[0] > 0:
            if address(stor17.field_0):
                emit 0x8e45fbeb: address(stor17.field_0), -ext_call.return_data[0]
                require ext_code.size(address(stor12.field_8))
                call address(stor12.field_8).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor17.field_0), -ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require stor16 * ext_call.return_data[0] / ext_call.return_data[0] == stor16
        require ext_code.size(stor14)
        call stor14.0x9ebdee7d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= stor16 * ext_call.return_data[0] / 100
        if (stor16 * ext_call.return_data[0] / 100) - ext_call.return_data[0] > 0:
            if address(stor17.field_0):
                emit 0x8e45fbeb: address(stor17.field_0), (stor16 * ext_call.return_data[0] / 100) - ext_call.return_data[0]
                require ext_code.size(address(stor12.field_8))
                call address(stor12.field_8).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor17.field_0), (stor16 * ext_call.return_data[0] / 100) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_409f82df(?) payable {
    require not uint8(stor12.field_0)
    if block.timestamp >= deadline:
        require amountRaised < minimumGoal
        require block.timestamp > deadline
        revert
    else:
        require not stor2
        require msg.sender
        require 1 == bool(stor3[address(msg.sender)])
        require not uint8(stor12.field_0)
        if block.timestamp >= deadline:
            require amountRaised < minimumGoal
            require block.timestamp > deadline
            revert
        else:
            require msg.sender
            require msg.value > 0
            require msg.value + amountRaised >= amountRaised
            require msg.value + amountRaised <= sub_35371cdf
            require msg.value > 0
            if 0 >= milestones.length:
                revert with 0, 'Must Have At Least One Milestone'
            else:
                idx = 0
                while idx < milestones.length:
                    mem[0] = 4
                    if milestones[idx].field_0 > block.timestamp:
                        idx = idx + 1
                        continue 
                    else:
                        require idx < milestones.length
                        mem[0] = 4
                        if milestones[idx].field_256 <= block.timestamp:
                            idx = idx + 1
                            continue 
                        else:
                            require idx < milestones.length
                            require milestones[idx].field_512 <= msg.value
                            if msg.value:
                                require stor13 * msg.value / msg.value == stor13
                                require milestones[idx].field_512
                                require msg.value + amountRaised >= amountRaised
                                amountRaised += msg.value
                                require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                require ext_code.size(stor14)
                                call stor14.0xad6bdc with:
                                     gas gas_remaining wei
                                    args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(address(stor12.field_8))
                                    call address(stor12.field_8).0x6285194e with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor14)
                                        call stor14.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require milestones[idx].field_512
                                require msg.value + amountRaised >= amountRaised
                                amountRaised += msg.value
                                require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                emit Contribution(msg.sender, msg.value, 0 / milestones[idx].field_512);
                                require ext_code.size(stor14)
                                call stor14.0xad6bdc with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / milestones[idx].field_512, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(address(stor12.field_8))
                                    call address(stor12.field_8).0x6285194e with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor14)
                                        call stor14.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                require 0 <= msg.value
                require msg.value
                require stor13 * msg.value / msg.value == stor13
                revert
}

function sub_56a3919c(?) payable {
    if not msg.sender:
        revert with 0, 'Sender's Address Is Invalid'
    else:
        require stor1[address(msg.sender)]
        require arg1
        require 1 == bool(stor3[address(arg1)])
        require not uint8(stor12.field_0)
        if block.timestamp >= deadline:
            require amountRaised < minimumGoal
            require block.timestamp > deadline
            revert
        else:
            require msg.value > 0
            emit 0x5a4991bf: address(arg1), msg.value
            require not stor2
            require arg1
            require 1 == bool(stor3[address(arg1)])
            require not uint8(stor12.field_0)
            if block.timestamp >= deadline:
                require amountRaised < minimumGoal
                require block.timestamp > deadline
                revert
            else:
                require arg1
                require msg.value > 0
                require msg.value + amountRaised >= amountRaised
                require msg.value + amountRaised <= sub_35371cdf
                require msg.value > 0
                if 0 >= milestones.length:
                    revert with 0, 'Must Have At Least One Milestone'
                else:
                    idx = 0
                    while idx < milestones.length:
                        mem[0] = 4
                        if milestones[idx].field_0 > block.timestamp:
                            idx = idx + 1
                            continue 
                        else:
                            require idx < milestones.length
                            mem[0] = 4
                            if milestones[idx].field_256 <= block.timestamp:
                                idx = idx + 1
                                continue 
                            else:
                                require idx < milestones.length
                                require milestones[idx].field_512 <= msg.value
                                if msg.value:
                                    require stor13 * msg.value / msg.value == stor13
                                    require milestones[idx].field_512
                                    require msg.value + amountRaised >= amountRaised
                                    amountRaised += msg.value
                                    require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                    emit Contribution(address(arg1), msg.value, stor13 * msg.value / milestones[idx].field_512);
                                    require ext_code.size(stor14)
                                    call stor14.0xad6bdc with:
                                         gas gas_remaining wei
                                        args address(arg1), stor13 * msg.value / milestones[idx].field_512, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(address(stor12.field_8))
                                        call address(stor12.field_8).0x6285194e with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor14)
                                            call stor14.deposit(address arg1) with:
                                               value msg.value wei
                                                 gas gas_remaining wei
                                                args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require milestones[idx].field_512
                                    require msg.value + amountRaised >= amountRaised
                                    amountRaised += msg.value
                                    require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                    emit Contribution(address(arg1), msg.value, 0 / milestones[idx].field_512);
                                    require ext_code.size(stor14)
                                    call stor14.0xad6bdc with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / milestones[idx].field_512, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(address(stor12.field_8))
                                        call address(stor12.field_8).0x6285194e with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor14)
                                            call stor14.deposit(address arg1) with:
                                               value msg.value wei
                                                 gas gas_remaining wei
                                                args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                    require 0 <= msg.value
                    require msg.value
                    require stor13 * msg.value / msg.value == stor13
                    revert
}

function finalizeCrowdsale() {
    require not uint8(stor12.field_0)
    require block.timestamp >= deadline
    if amountRaised < minimumGoal:
        require block.timestamp > deadline
        revert
    else:
        if not msg.sender:
            revert with 0, 'Sender's Address Is Invalid'
        else:
            require stor1[address(msg.sender)]
            require not uint8(stor12.field_0)
            uint8(stor12.field_0) = 1
            require ext_code.size(stor14)
            call stor14.close() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                if not uint8(stor12.field_0):
                    require block.timestamp >= deadline
                    require amountRaised < minimumGoal
                    require block.timestamp > deadline
                    revert
                else:
                    if owner != msg.sender:
                        revert with 0, 'Sender Is Not The Owner'
                    else:
                        require ext_code.size(address(stor12.field_8))
                        call address(stor12.field_8).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require stor16 * ext_call.return_data[0] / ext_call.return_data[0] == stor16
                                require ext_code.size(stor14)
                                call stor14.0x9ebdee7d with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= stor16 * ext_call.return_data[0] / 100
                                    require ext_code.size(stor14)
                                    call stor14.0x755e3e28 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor16 * ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                                        require ext_call.return_data[0] <= ext_call.return_data[0] - (stor16 * ext_call.return_data[0] / 100)
                                        if -stor16 * ext_call.return_data[0] / 100 <= 0:
                                            if (stor16 * ext_call.return_data[0] / 100) - ext_call.return_data[0] <= 0:
                                            else:
                                                if not address(stor17.field_0):
                                                else:
                                                    emit 0x8e45fbeb: address(stor17.field_0), (stor16 * ext_call.return_data[0] / 100) - ext_call.return_data[0]
                                                    require ext_code.size(address(stor12.field_8))
                                                    call address(stor12.field_8).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(stor17.field_0), (stor16 * ext_call.return_data[0] / 100) - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            emit 0xba7bbc46: -(stor16 * ext_call.return_data[0] / 100)
                                            require ext_code.size(address(stor12.field_8))
                                            call address(stor12.field_8).0x42966c68 with:
                                                 gas gas_remaining wei
                                                args -(stor16 * ext_call.return_data[0] / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if (stor16 * ext_call.return_data[0] / 100) - ext_call.return_data[0] <= 0:
                                                else:
                                                    if not address(stor17.field_0):
                                                    else:
                                                        emit 0x8e45fbeb: address(stor17.field_0), (stor16 * ext_call.return_data[0] / 100) - ext_call.return_data[0]
                                                        require ext_code.size(address(stor12.field_8))
                                                        call address(stor12.field_8).0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args address(stor17.field_0), (stor16 * ext_call.return_data[0] / 100) - ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                            else:
                                require ext_code.size(stor14)
                                call stor14.0x9ebdee7d with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0
                                    require ext_code.size(stor14)
                                    call stor14.0x755e3e28 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 0 <= ext_call.return_data[0]
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        if -ext_call.return_data[0] <= 0:
                                        else:
                                            if not address(stor17.field_0):
                                            else:
                                                emit 0x8e45fbeb: address(stor17.field_0), -ext_call.return_data[0]
                                                require ext_code.size(address(stor12.field_8))
                                                call address(stor12.field_8).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(stor17.field_0), -ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
}

function sub_dc2cbf3a(?) payable {
    require arg1
    require 1 == bool(stor3[address(arg1)])
    require not uint8(stor12.field_0)
    if block.timestamp >= deadline:
        require amountRaised < minimumGoal
        require block.timestamp > deadline
        revert
    else:
        require msg.value > 0
        if not uint8(stor17.field_160):
            require ext_code.size(address(stor12.field_8))
            call address(stor12.field_8).0x6285194e with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require not stor2
                require msg.sender
                require 1 == bool(stor3[address(msg.sender)])
                require not uint8(stor12.field_0)
                if block.timestamp >= deadline:
                    require amountRaised < minimumGoal
                    require block.timestamp > deadline
                    revert
                else:
                    require msg.sender
                    require msg.value > 0
                    require msg.value + amountRaised >= amountRaised
                    require msg.value + amountRaised <= sub_35371cdf
                    require msg.value > 0
                    if 0 >= milestones.length:
                        revert with 0, 'Must Have At Least One Milestone'
                    else:
                        idx = 0
                        while idx < milestones.length:
                            mem[0] = 4
                            if milestones[idx].field_0 > block.timestamp:
                                idx = idx + 1
                                continue 
                            else:
                                require idx < milestones.length
                                mem[0] = 4
                                if milestones[idx].field_256 <= block.timestamp:
                                    idx = idx + 1
                                    continue 
                                else:
                                    require idx < milestones.length
                                    require milestones[idx].field_512 <= msg.value
                                    if msg.value:
                                        require stor13 * msg.value / msg.value == stor13
                                        require milestones[idx].field_512
                                        if not uint8(stor17.field_160):
                                            require msg.value + amountRaised >= amountRaised
                                            amountRaised += msg.value
                                            require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                            emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                            require ext_code.size(stor14)
                                            call stor14.0xad6bdc with:
                                                 gas gas_remaining wei
                                                args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(address(stor12.field_8))
                                                call address(stor12.field_8).0x6285194e with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(stor14)
                                                    call stor14.deposit(address arg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if stor13 * msg.value / milestones[idx].field_512:
                                                require stor15 * stor13 * msg.value / milestones[idx].field_512 / stor13 * msg.value / milestones[idx].field_512 == stor15
                                                require msg.value + amountRaised >= amountRaised
                                                amountRaised += msg.value
                                                require (stor15 * stor13 * msg.value / milestones[idx].field_512 / 100) + (stor13 * msg.value / milestones[idx].field_512) >= stor13 * msg.value / milestones[idx].field_512
                                                emit Contribution(msg.sender, msg.value, (stor15 * stor13 * msg.value / milestones[idx].field_512 / 100) + (stor13 * msg.value / milestones[idx].field_512));
                                                require ext_code.size(stor14)
                                                call stor14.0xad6bdc with:
                                                     gas gas_remaining wei
                                                    args msg.sender, stor13 * msg.value / milestones[idx].field_512, stor15 * stor13 * msg.value / milestones[idx].field_512 / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(address(stor12.field_8))
                                                    call address(stor12.field_8).0x6285194e with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(stor14)
                                                        call stor14.deposit(address arg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require msg.value + amountRaised >= amountRaised
                                                amountRaised += msg.value
                                                require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                                emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                                require ext_code.size(stor14)
                                                call stor14.0xad6bdc with:
                                                     gas gas_remaining wei
                                                    args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(address(stor12.field_8))
                                                    call address(stor12.field_8).0x6285194e with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(stor14)
                                                        call stor14.deposit(address arg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                    else:
                                        require milestones[idx].field_512
                                        if not uint8(stor17.field_160):
                                            require msg.value + amountRaised >= amountRaised
                                            amountRaised += msg.value
                                            require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                            emit Contribution(msg.sender, msg.value, 0 / milestones[idx].field_512);
                                            require ext_code.size(stor14)
                                            call stor14.0xad6bdc with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0 / milestones[idx].field_512, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(address(stor12.field_8))
                                                call address(stor12.field_8).0x6285194e with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(stor14)
                                                    call stor14.deposit(address arg1) with:
                                                       value msg.value wei
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if 0 / milestones[idx].field_512:
                                                require stor15 * 0 / milestones[idx].field_512 / 0 / milestones[idx].field_512 == stor15
                                                require msg.value + amountRaised >= amountRaised
                                                amountRaised += msg.value
                                                require (stor15 * 0 / milestones[idx].field_512 / 100) + (0 / milestones[idx].field_512) >= 0 / milestones[idx].field_512
                                                emit Contribution(msg.sender, msg.value, (stor15 * 0 / milestones[idx].field_512 / 100) + (0 / milestones[idx].field_512));
                                                require ext_code.size(stor14)
                                                call stor14.0xad6bdc with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0 / milestones[idx].field_512, stor15 * 0 / milestones[idx].field_512 / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(address(stor12.field_8))
                                                    call address(stor12.field_8).0x6285194e with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(stor14)
                                                        call stor14.deposit(address arg1) with:
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
                                                require ext_code.size(stor14)
                                                call stor14.0xad6bdc with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0 / milestones[idx].field_512, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(address(stor12.field_8))
                                                    call address(stor12.field_8).0x6285194e with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(stor14)
                                                        call stor14.deposit(address arg1) with:
                                                           value msg.value wei
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                        require 0 <= msg.value
                        require msg.value
                        require stor13 * msg.value / msg.value == stor13
                        revert
        else:
            require msg.value > 0
            if 0 >= milestones.length:
                revert with 0, 'Must Have At Least One Milestone'
            else:
                idx = 0
                while idx < milestones.length:
                    mem[0] = 4
                    if milestones[idx].field_0 > block.timestamp:
                        idx = idx + 1
                        continue 
                    else:
                        require idx < milestones.length
                        mem[0] = 4
                        if milestones[idx].field_256 <= block.timestamp:
                            idx = idx + 1
                            continue 
                        else:
                            require idx < milestones.length
                            require milestones[idx].field_512 <= msg.value
                            if msg.value:
                                require stor13 * msg.value / msg.value == stor13
                                require milestones[idx].field_512
                                if stor13 * msg.value / milestones[idx].field_512:
                                    require stor15 * stor13 * msg.value / milestones[idx].field_512 / stor13 * msg.value / milestones[idx].field_512 == stor15
                                    emit Commission(msg.sender, address(arg1), stor15 * stor13 * msg.value / milestones[idx].field_512 / 100);
                                    require ext_code.size(stor14)
                                    call stor14.0xad6bdc with:
                                         gas gas_remaining wei
                                        args address(arg1), 0, stor15 * stor13 * msg.value / milestones[idx].field_512 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(address(stor12.field_8))
                                        call address(stor12.field_8).0x6285194e with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require not stor2
                                            require msg.sender
                                            require 1 == bool(stor3[address(msg.sender)])
                                            require not uint8(stor12.field_0)
                                            if block.timestamp >= deadline:
                                                require amountRaised < minimumGoal
                                                require block.timestamp > deadline
                                                revert
                                            else:
                                                require msg.sender
                                                require msg.value > 0
                                                require msg.value + amountRaised >= amountRaised
                                                require msg.value + amountRaised <= sub_35371cdf
                                                require msg.value > 0
                                                if 0 >= milestones.length:
                                                    revert with 0, 'Must Have At Least One Milestone'
                                                else:
                                                    idx = 0
                                                    while idx < milestones.length:
                                                        mem[0] = 4
                                                        if milestones[idx].field_0 > block.timestamp:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < milestones.length
                                                            mem[0] = 4
                                                            if milestones[idx].field_256 <= block.timestamp:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require idx < milestones.length
                                                                require milestones[idx].field_512 <= msg.value
                                                                if msg.value:
                                                                    require stor13 * msg.value / msg.value == stor13
                                                                    require milestones[idx].field_512
                                                                    if not uint8(stor17.field_160):
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                                                        emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                                                        require ext_code.size(stor14)
                                                                        call stor14.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(stor12.field_8))
                                                                            call address(stor12.field_8).0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor14)
                                                                                call stor14.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        if stor13 * msg.value / milestones[idx].field_512:
                                                                            require stor15 * stor13 * msg.value / milestones[idx].field_512 / stor13 * msg.value / milestones[idx].field_512 == stor15
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require (stor15 * stor13 * msg.value / milestones[idx].field_512 / 100) + (stor13 * msg.value / milestones[idx].field_512) >= stor13 * msg.value / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, (stor15 * stor13 * msg.value / milestones[idx].field_512 / 100) + (stor13 * msg.value / milestones[idx].field_512));
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, stor13 * msg.value / milestones[idx].field_512, stor15 * stor13 * msg.value / milestones[idx].field_512 / 100
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                        else:
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    require milestones[idx].field_512
                                                                    if not uint8(stor17.field_160):
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                                        emit Contribution(msg.sender, msg.value, 0 / milestones[idx].field_512);
                                                                        require ext_code.size(stor14)
                                                                        call stor14.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0 / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(stor12.field_8))
                                                                            call address(stor12.field_8).0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor14)
                                                                                call stor14.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        if 0 / milestones[idx].field_512:
                                                                            require stor15 * 0 / milestones[idx].field_512 / 0 / milestones[idx].field_512 == stor15
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require (stor15 * 0 / milestones[idx].field_512 / 100) + (0 / milestones[idx].field_512) >= 0 / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, (stor15 * 0 / milestones[idx].field_512 / 100) + (0 / milestones[idx].field_512));
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0 / milestones[idx].field_512, stor15 * 0 / milestones[idx].field_512 / 100
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
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
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0 / milestones[idx].field_512, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                    require 0 <= msg.value
                                                    require msg.value
                                                    require stor13 * msg.value / msg.value == stor13
                                                    revert
                                else:
                                    emit Commission(msg.sender, address(arg1), 0);
                                    require ext_code.size(stor14)
                                    call stor14.0xad6bdc with:
                                         gas gas_remaining wei
                                        args address(arg1), 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(address(stor12.field_8))
                                        call address(stor12.field_8).0x6285194e with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require not stor2
                                            require msg.sender
                                            require 1 == bool(stor3[address(msg.sender)])
                                            require not uint8(stor12.field_0)
                                            if block.timestamp >= deadline:
                                                require amountRaised < minimumGoal
                                                require block.timestamp > deadline
                                                revert
                                            else:
                                                require msg.sender
                                                require msg.value > 0
                                                require msg.value + amountRaised >= amountRaised
                                                require msg.value + amountRaised <= sub_35371cdf
                                                require msg.value > 0
                                                if 0 >= milestones.length:
                                                    revert with 0, 'Must Have At Least One Milestone'
                                                else:
                                                    idx = 0
                                                    while idx < milestones.length:
                                                        mem[0] = 4
                                                        if milestones[idx].field_0 > block.timestamp:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < milestones.length
                                                            mem[0] = 4
                                                            if milestones[idx].field_256 <= block.timestamp:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require idx < milestones.length
                                                                require milestones[idx].field_512 <= msg.value
                                                                if msg.value:
                                                                    require stor13 * msg.value / msg.value == stor13
                                                                    require milestones[idx].field_512
                                                                    if not uint8(stor17.field_160):
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                                                        emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                                                        require ext_code.size(stor14)
                                                                        call stor14.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(stor12.field_8))
                                                                            call address(stor12.field_8).0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor14)
                                                                                call stor14.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        if stor13 * msg.value / milestones[idx].field_512:
                                                                            require stor15 * stor13 * msg.value / milestones[idx].field_512 / stor13 * msg.value / milestones[idx].field_512 == stor15
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require (stor15 * stor13 * msg.value / milestones[idx].field_512 / 100) + (stor13 * msg.value / milestones[idx].field_512) >= stor13 * msg.value / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, (stor15 * stor13 * msg.value / milestones[idx].field_512 / 100) + (stor13 * msg.value / milestones[idx].field_512));
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, stor13 * msg.value / milestones[idx].field_512, stor15 * stor13 * msg.value / milestones[idx].field_512 / 100
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                        else:
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    require milestones[idx].field_512
                                                                    if not uint8(stor17.field_160):
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                                        emit Contribution(msg.sender, msg.value, 0 / milestones[idx].field_512);
                                                                        require ext_code.size(stor14)
                                                                        call stor14.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0 / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(stor12.field_8))
                                                                            call address(stor12.field_8).0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor14)
                                                                                call stor14.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        if 0 / milestones[idx].field_512:
                                                                            require stor15 * 0 / milestones[idx].field_512 / 0 / milestones[idx].field_512 == stor15
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require (stor15 * 0 / milestones[idx].field_512 / 100) + (0 / milestones[idx].field_512) >= 0 / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, (stor15 * 0 / milestones[idx].field_512 / 100) + (0 / milestones[idx].field_512));
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0 / milestones[idx].field_512, stor15 * 0 / milestones[idx].field_512 / 100
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
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
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0 / milestones[idx].field_512, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                    require 0 <= msg.value
                                                    require msg.value
                                                    require stor13 * msg.value / msg.value == stor13
                                                    revert
                            else:
                                require milestones[idx].field_512
                                if 0 / milestones[idx].field_512:
                                    require stor15 * 0 / milestones[idx].field_512 / 0 / milestones[idx].field_512 == stor15
                                    emit Commission(msg.sender, address(arg1), stor15 * 0 / milestones[idx].field_512 / 100);
                                    require ext_code.size(stor14)
                                    call stor14.0xad6bdc with:
                                         gas gas_remaining wei
                                        args address(arg1), 0, stor15 * 0 / milestones[idx].field_512 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(address(stor12.field_8))
                                        call address(stor12.field_8).0x6285194e with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require not stor2
                                            require msg.sender
                                            require 1 == bool(stor3[address(msg.sender)])
                                            require not uint8(stor12.field_0)
                                            if block.timestamp >= deadline:
                                                require amountRaised < minimumGoal
                                                require block.timestamp > deadline
                                                revert
                                            else:
                                                require msg.sender
                                                require msg.value > 0
                                                require msg.value + amountRaised >= amountRaised
                                                require msg.value + amountRaised <= sub_35371cdf
                                                require msg.value > 0
                                                if 0 >= milestones.length:
                                                    revert with 0, 'Must Have At Least One Milestone'
                                                else:
                                                    idx = 0
                                                    while idx < milestones.length:
                                                        mem[0] = 4
                                                        if milestones[idx].field_0 > block.timestamp:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < milestones.length
                                                            mem[0] = 4
                                                            if milestones[idx].field_256 <= block.timestamp:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require idx < milestones.length
                                                                require milestones[idx].field_512 <= msg.value
                                                                if msg.value:
                                                                    require stor13 * msg.value / msg.value == stor13
                                                                    require milestones[idx].field_512
                                                                    if not uint8(stor17.field_160):
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                                                        emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                                                        require ext_code.size(stor14)
                                                                        call stor14.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(stor12.field_8))
                                                                            call address(stor12.field_8).0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor14)
                                                                                call stor14.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        if stor13 * msg.value / milestones[idx].field_512:
                                                                            require stor15 * stor13 * msg.value / milestones[idx].field_512 / stor13 * msg.value / milestones[idx].field_512 == stor15
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require (stor15 * stor13 * msg.value / milestones[idx].field_512 / 100) + (stor13 * msg.value / milestones[idx].field_512) >= stor13 * msg.value / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, (stor15 * stor13 * msg.value / milestones[idx].field_512 / 100) + (stor13 * msg.value / milestones[idx].field_512));
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, stor13 * msg.value / milestones[idx].field_512, stor15 * stor13 * msg.value / milestones[idx].field_512 / 100
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                        else:
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    require milestones[idx].field_512
                                                                    if not uint8(stor17.field_160):
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                                        emit Contribution(msg.sender, msg.value, 0 / milestones[idx].field_512);
                                                                        require ext_code.size(stor14)
                                                                        call stor14.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0 / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(stor12.field_8))
                                                                            call address(stor12.field_8).0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor14)
                                                                                call stor14.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        if 0 / milestones[idx].field_512:
                                                                            require stor15 * 0 / milestones[idx].field_512 / 0 / milestones[idx].field_512 == stor15
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require (stor15 * 0 / milestones[idx].field_512 / 100) + (0 / milestones[idx].field_512) >= 0 / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, (stor15 * 0 / milestones[idx].field_512 / 100) + (0 / milestones[idx].field_512));
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0 / milestones[idx].field_512, stor15 * 0 / milestones[idx].field_512 / 100
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
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
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0 / milestones[idx].field_512, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                    require 0 <= msg.value
                                                    require msg.value
                                                    require stor13 * msg.value / msg.value == stor13
                                                    revert
                                else:
                                    emit Commission(msg.sender, address(arg1), 0);
                                    require ext_code.size(stor14)
                                    call stor14.0xad6bdc with:
                                         gas gas_remaining wei
                                        args address(arg1), 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(address(stor12.field_8))
                                        call address(stor12.field_8).0x6285194e with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require not stor2
                                            require msg.sender
                                            require 1 == bool(stor3[address(msg.sender)])
                                            require not uint8(stor12.field_0)
                                            if block.timestamp >= deadline:
                                                require amountRaised < minimumGoal
                                                require block.timestamp > deadline
                                                revert
                                            else:
                                                require msg.sender
                                                require msg.value > 0
                                                require msg.value + amountRaised >= amountRaised
                                                require msg.value + amountRaised <= sub_35371cdf
                                                require msg.value > 0
                                                if 0 >= milestones.length:
                                                    revert with 0, 'Must Have At Least One Milestone'
                                                else:
                                                    idx = 0
                                                    while idx < milestones.length:
                                                        mem[0] = 4
                                                        if milestones[idx].field_0 > block.timestamp:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < milestones.length
                                                            mem[0] = 4
                                                            if milestones[idx].field_256 <= block.timestamp:
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require idx < milestones.length
                                                                require milestones[idx].field_512 <= msg.value
                                                                if msg.value:
                                                                    require stor13 * msg.value / msg.value == stor13
                                                                    require milestones[idx].field_512
                                                                    if not uint8(stor17.field_160):
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                                                        emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                                                        require ext_code.size(stor14)
                                                                        call stor14.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(stor12.field_8))
                                                                            call address(stor12.field_8).0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor14)
                                                                                call stor14.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        if stor13 * msg.value / milestones[idx].field_512:
                                                                            require stor15 * stor13 * msg.value / milestones[idx].field_512 / stor13 * msg.value / milestones[idx].field_512 == stor15
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require (stor15 * stor13 * msg.value / milestones[idx].field_512 / 100) + (stor13 * msg.value / milestones[idx].field_512) >= stor13 * msg.value / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, (stor15 * stor13 * msg.value / milestones[idx].field_512 / 100) + (stor13 * msg.value / milestones[idx].field_512));
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, stor13 * msg.value / milestones[idx].field_512, stor15 * stor13 * msg.value / milestones[idx].field_512 / 100
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                        else:
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require stor13 * msg.value / milestones[idx].field_512 >= stor13 * msg.value / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, stor13 * msg.value / milestones[idx].field_512);
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, stor13 * msg.value / milestones[idx].field_512, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    require milestones[idx].field_512
                                                                    if not uint8(stor17.field_160):
                                                                        require msg.value + amountRaised >= amountRaised
                                                                        amountRaised += msg.value
                                                                        require 0 / milestones[idx].field_512 >= 0 / milestones[idx].field_512
                                                                        emit Contribution(msg.sender, msg.value, 0 / milestones[idx].field_512);
                                                                        require ext_code.size(stor14)
                                                                        call stor14.0xad6bdc with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0 / milestones[idx].field_512, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(stor12.field_8))
                                                                            call address(stor12.field_8).0x6285194e with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(stor14)
                                                                                call stor14.deposit(address arg1) with:
                                                                                   value msg.value wei
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        if 0 / milestones[idx].field_512:
                                                                            require stor15 * 0 / milestones[idx].field_512 / 0 / milestones[idx].field_512 == stor15
                                                                            require msg.value + amountRaised >= amountRaised
                                                                            amountRaised += msg.value
                                                                            require (stor15 * 0 / milestones[idx].field_512 / 100) + (0 / milestones[idx].field_512) >= 0 / milestones[idx].field_512
                                                                            emit Contribution(msg.sender, msg.value, (stor15 * 0 / milestones[idx].field_512 / 100) + (0 / milestones[idx].field_512));
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0 / milestones[idx].field_512, stor15 * 0 / milestones[idx].field_512 / 100
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
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
                                                                            require ext_code.size(stor14)
                                                                            call stor14.0xad6bdc with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0 / milestones[idx].field_512, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(stor12.field_8))
                                                                                call address(stor12.field_8).0x6285194e with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(stor14)
                                                                                    call stor14.deposit(address arg1) with:
                                                                                       value msg.value wei
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                    require 0 <= msg.value
                                                    require msg.value
                                                    require stor13 * msg.value / msg.value == stor13
                                                    revert
                require 0 <= msg.value
                require msg.value
                require stor13 * msg.value / msg.value == stor13
                revert
}



}
