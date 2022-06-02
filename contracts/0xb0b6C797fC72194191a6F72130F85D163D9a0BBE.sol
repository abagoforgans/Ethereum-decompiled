contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 168
uint128 stor6; offset 160
address owner;
mapping of uint8 stor7;
address stor8;
uint256 hardcap;
uint256 softcap;
uint256 pre_start;
uint256 sub_39ee3013;
uint256 sub_9de3a240;
uint256 sub_de8fb6e1;
uint256 sub_06873a7d;
uint256 sub_265ebb4d;
uint256 teamSupply;
uint256 reservedSupply;
address vaultAddress;

function sub_06873a7d(?) {
    return sub_06873a7d
}

function sub_265ebb4d(?) {
    return sub_265ebb4d
}

function rate() {
    return rate
}

function teamSupply() {
    return teamSupply
}

function sub_39ee3013(?) {
    return sub_39ee3013
}

function weiRaised() {
    return weiRaised
}

function reservedSupply() {
    return reservedSupply
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor6.field_168))
}

function pre_start() {
    return pre_start
}

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function owner() {
    return owner
}

function sub_9de3a240(?) {
    return sub_9de3a240
}

function hardcap() {
    return hardcap
}

function openingTime() {
    return openingTime
}

function sub_de8fb6e1(?) {
    return sub_de8fb6e1
}

function softcap() {
    return softcap
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function addAgent(address arg1) {
    require msg.sender == owner
    stor7[address(arg1)] = 1
}

function setHardcap(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    hardcap = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor6.field_168)
    Mask(88, 0, stor6.field_168) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor6.field_168)
    Mask(88, 0, stor6.field_168) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_76a8da92(?) {
    require msg.sender == owner
    require ext_code.size(stor8)
    call stor8.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function goalReached() {
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= softcap
}

function sub_3fdbdc76(?) {
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= hardcap
}

function sub_72cb1643(?) {
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] - teamSupply - reservedSupply / 10)
}

function teamLimit() {
    require uint8(stor6.field_160)
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] - teamSupply - reservedSupply / 10)
}

function hasClosed() {
    if block.timestamp <= closingTime:
        require ext_code.size(stor8)
        call stor8.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < hardcap:
            return 0
    return 1
}

function claimRefund() {
    require uint8(stor6.field_160)
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < softcap
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1e9810e9(?) {
    require msg.sender == owner
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= softcap
    require eth.balance(vaultAddress) > 0
    call walletAddress with:
       value eth.balance(vaultAddress) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6616bc90(?) {
    require block.timestamp <= closingTime
    require stor7[address(msg.sender)]
    require arg1
    require arg2 > 0
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 <= hardcap
    require ext_code.size(stor8)
    call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= closingTime:
        require ext_call.return_data[0] >= hardcap
    require ext_code.size(vaultAddress)
    if ext_call.return_data[0] < softcap:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    Mask(96, 0, stor6.field_160) = 1
}

function sub_75d5387c(?) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require reservedSupply + arg2 <= ext_call.return_data[0] - teamSupply - reservedSupply / 10
    require reservedSupply + arg2 >= reservedSupply
    reservedSupply += arg2
    require ext_code.size(stor8)
    call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, sub_06873a7d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_edc263be(?) {
    require msg.sender == owner
    require arg1
    require uint8(stor6.field_160)
    require arg2 > 0
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require teamSupply + arg2 <= ext_call.return_data[0] - teamSupply - reservedSupply / 10
    require teamSupply + arg2 >= teamSupply
    teamSupply += arg2
    require ext_code.size(stor8)
    call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, sub_265ebb4d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function buyTokens(address arg1) payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require not uint8(stor6.field_168)
    if block.timestamp < pre_start:
        if not msg.value:
            require ext_code.size(stor8)
            call stor8.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_call.return_data[0] <= hardcap
        else:
            require msg.value
            require 8000 * msg.value / msg.value == 8000
            require ext_code.size(stor8)
            call stor8.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (8000 * msg.value) >= ext_call.return_data[0]
            require ext_call.return_data[0] + (8000 * msg.value) <= hardcap
    else:
        if block.timestamp > sub_39ee3013:
            if not msg.value:
                require ext_code.size(stor8)
                call stor8.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] <= hardcap
            else:
                require msg.value
                require 8000 * msg.value / msg.value == 8000
                require ext_code.size(stor8)
                call stor8.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] + (8000 * msg.value) >= ext_call.return_data[0]
                require ext_call.return_data[0] + (8000 * msg.value) <= hardcap
        else:
            if not msg.value:
                require ext_code.size(stor8)
                call stor8.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] <= hardcap
            else:
                require msg.value
                require 10000 * msg.value / msg.value == 10000
                require ext_code.size(stor8)
                call stor8.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] + (10000 * msg.value) >= ext_call.return_data[0]
                require ext_call.return_data[0] + (10000 * msg.value) <= hardcap
    if block.timestamp < pre_start:
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(stor8)
            call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg1), 0, sub_06873a7d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
        else:
            require msg.value
            require 8000 * msg.value / msg.value == 8000
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(stor8)
            call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg1), 8000 * msg.value, sub_06873a7d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchase(msg.value, 8000 * msg.value, msg.sender, arg1);
    else:
        if block.timestamp > sub_39ee3013:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(stor8)
                call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), 0, sub_06873a7d
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                require msg.value
                require 8000 * msg.value / msg.value == 8000
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(stor8)
                call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), 8000 * msg.value, sub_06873a7d
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 8000 * msg.value, msg.sender, arg1);
        else:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(stor8)
                call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), 0, sub_06873a7d
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                require msg.value
                require 10000 * msg.value / msg.value == 10000
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(stor8)
                call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), 10000 * msg.value, sub_06873a7d
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, arg1);
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= softcap:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require not uint8(stor6.field_168)
    if block.timestamp < pre_start:
        if not msg.value:
            require ext_code.size(stor8)
            call stor8.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_call.return_data[0] <= hardcap
        else:
            require msg.value
            require 8000 * msg.value / msg.value == 8000
            require ext_code.size(stor8)
            call stor8.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (8000 * msg.value) >= ext_call.return_data[0]
            require ext_call.return_data[0] + (8000 * msg.value) <= hardcap
    else:
        if block.timestamp > sub_39ee3013:
            if not msg.value:
                require ext_code.size(stor8)
                call stor8.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] <= hardcap
            else:
                require msg.value
                require 8000 * msg.value / msg.value == 8000
                require ext_code.size(stor8)
                call stor8.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] + (8000 * msg.value) >= ext_call.return_data[0]
                require ext_call.return_data[0] + (8000 * msg.value) <= hardcap
        else:
            if not msg.value:
                require ext_code.size(stor8)
                call stor8.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] <= hardcap
            else:
                require msg.value
                require 10000 * msg.value / msg.value == 10000
                require ext_code.size(stor8)
                call stor8.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] + (10000 * msg.value) >= ext_call.return_data[0]
                require ext_call.return_data[0] + (10000 * msg.value) <= hardcap
    if block.timestamp < pre_start:
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(stor8)
            call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, 0, sub_06873a7d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        else:
            require msg.value
            require 8000 * msg.value / msg.value == 8000
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(stor8)
            call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, 8000 * msg.value, sub_06873a7d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchase(msg.value, 8000 * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp > sub_39ee3013:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(stor8)
                call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, 0, sub_06873a7d
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                require msg.value
                require 8000 * msg.value / msg.value == 8000
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(stor8)
                call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, 8000 * msg.value, sub_06873a7d
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 8000 * msg.value, msg.sender, msg.sender);
        else:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(stor8)
                call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, 0, sub_06873a7d
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                require msg.value
                require 10000 * msg.value / msg.value == 10000
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(stor8)
                call stor8.mint(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, 10000 * msg.value, sub_06873a7d
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, msg.sender);
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= softcap:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
