contract main {




// =====================  Runtime code  =====================


const sub_0d950a02(?) = (block.timestamp + 120)

const sub_48ef200f(?) = 4 * 10^17

const preIcoBonus = 25

const bonusSupply = 83333333333333

const sub_92417064(?) = 1556668799

const sub_a4c2001d(?) = 333333333333333

const saleSupply = 25 * 10^13

const hardCapUSD = 8 * 10^6

const sub_f073e3ef(?) = (block.timestamp + 60)


address owner;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor7;
uint256 goal;
address stor9;
uint256 cap;
uint8 stor11;
uint256 icoStartTime;
address sub_8506eecbAddress;
address bonusAddress;
uint256 stor15;
mapping of uint8 stor16;
address stor17;

function rate() {
    return rate
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor11)
}

function sub_8506eecb(?) {
    return sub_8506eecbAddress
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
}

function bonusAddress() {
    return bonusAddress
}

function icoStartTime() {
    return icoStartTime
}

function openingTime() {
    return openingTime
}

function blacklisted(address arg1) {
    return bool(stor16[arg1])
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function goalReached() {
    return weiRaised >= goal
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function sub_d03eef52(?) {
    require msg.sender == owner
    sub_8506eecbAddress = arg1
}

function unpause() {
    require msg.sender == owner
    require stor11
    stor11 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor11
    stor11 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getStage() {
    if block.timestamp < openingTime:
        return 0
    if block.timestamp < icoStartTime:
        return 1
    if block.timestamp >= closingTime:
        return 3
    return 2
}

function sub_825e35c2(?) {
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, 'USDETH rate should not be zero'
    stor15 = arg1
    require 8 * 10^6 * stor15 / 8 * 10^6 == stor15
    cap = 8 * 10^6 * stor15
}

function claimRefund() {
    require stor7
    require weiRaised < goal
    require ext_code.size(stor9)
    call stor9.withdraw(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function preallocate(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    if stor16[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address where tokens will be sent is blacklisted'
    require not stor11
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Preallocated tokens should be greater than zero'
    require weiRaised + arg3 >= weiRaised
    if weiRaised + arg3 > cap:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Raised tokens should not exceed hard cap'
    require weiRaised + arg3 >= weiRaised
    weiRaised += arg3
    require ext_code.size(stor17)
    if this.address != this.address:
        call stor17.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg1), arg2
    else:
        call stor17.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPurchase(arg3, arg2, arg1, arg1);
    require ext_code.size(stor9)
    call stor9.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finalize() {
    require msg.sender == owner
    require not stor7
    require block.timestamp > closingTime
    if not sub_8506eecbAddress:
        revert with 0, 'Transmining address must be set!'
    require ext_code.size(stor9)
    if weiRaised < goal:
        call stor9.enableRefunds() with:
             gas gas_remaining wei
    else:
        call stor9.close() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor9)
        call stor9.beneficiaryWithdraw() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor17)
    call stor17.0xa55df3f9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    if this.address != this.address:
        call stor17.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), sub_8506eecbAddress, ext_call.return_data[0]
    else:
        call stor17.0xa9059cbb with:
             gas gas_remaining wei
            args sub_8506eecbAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Finalized()
    stor7 = 1
}

function sub_622ed15f(?) {
    require msg.sender == owner
    require ext_code.size(stor17)
    call stor17.0xa55df3f9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_8506eecbAddress:
        revert with 0, 'Transmining address must be set!'
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Balance of remaining tokens for sale is smaller than requested amount for trans-mining'
    if block.timestamp < openingTime:
        if ext_call.return_data[0] - arg1 <= (cap * rate) - (weiRaised * rate):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to leave enough tokens to reach hard cap'
    else:
        if block.timestamp < icoStartTime:
            if ext_call.return_data[0] - arg1 <= (cap * rate) - (weiRaised * rate):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to leave enough tokens to reach hard cap'
        else:
            if block.timestamp < closingTime:
                if ext_call.return_data[0] - arg1 <= (cap * rate) - (weiRaised * rate):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to leave enough tokens to reach hard cap'
    require ext_code.size(stor17)
    if this.address != this.address:
        call stor17.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), sub_8506eecbAddress, arg1
    else:
        call stor17.0xa9059cbb with:
             gas gas_remaining wei
            args sub_8506eecbAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3056df7f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    if arg1.length != arg2.length:
        revert with 0, 'Lengths of parameter lists have to be equal'
    if arg1.length != arg3.length:
        revert with 0, 'Lengths of parameter lists have to be equal'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _44 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _46 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        _48 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        if stor16[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Address where tokens will be sent is blacklisted'
        require not stor11
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            revert with 0, 'Preallocated tokens should be greater than zero'
        require weiRaised + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= weiRaised
        if weiRaised + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] > cap:
            revert with 0, 'Raised tokens should not exceed hard cap'
        require weiRaised + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= weiRaised
        weiRaised += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        if this.address != this.address:
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 260] = _46
            require ext_code.size(stor17)
            call stor17.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(_44), _46
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = _46
            require ext_code.size(stor17)
            call stor17.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196], _46
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = _46
        emit TokenPurchase(_48, _46, address(_44), address(_44));
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0xf340fa0100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = msg.sender
        require ext_code.size(stor9)
        call stor9.deposit(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    if stor16[address(msg.sender)]:
        revert with 0, 'Sender is blacklisted'
    else:
        require not stor11
        if msg.value < 4 * 10^17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Amount contributed should be greater than required minimal contribution'
        else:
            require block.timestamp >= openingTime
            require block.timestamp <= closingTime
            require arg1
            require msg.value
            require weiRaised + msg.value >= weiRaised
            require weiRaised + msg.value <= cap
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
                if block.timestamp >= openingTime:
                    if block.timestamp >= icoStartTime:
                        if block.timestamp >= closingTime:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                    else:
                        if msg.value * rate:
                            require msg.value * rate
                            require 125 * msg.value * rate / msg.value * rate == 125
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(arg1), 125 * msg.value * rate / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 125 * msg.value * rate / 100, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 125 * msg.value * rate / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 125 * msg.value * rate / 100, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                else:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    if this.address != this.address:
                        require ext_code.size(stor17)
                        call stor17.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(arg1), msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                            require ext_code.size(stor9)
                            call stor9.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require ext_code.size(stor17)
                        call stor17.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                            require ext_code.size(stor9)
                            call stor9.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
            else:
                if block.timestamp >= openingTime:
                    if block.timestamp >= icoStartTime:
                        if block.timestamp >= closingTime:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                    else:
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        if this.address != this.address:
                            require ext_code.size(stor17)
                            call stor17.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                require ext_code.size(stor9)
                                call stor9.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require ext_code.size(stor17)
                            call stor17.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                require ext_code.size(stor9)
                                call stor9.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                else:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    if this.address != this.address:
                        require ext_code.size(stor17)
                        call stor17.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                            require ext_code.size(stor9)
                            call stor9.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require ext_code.size(stor17)
                        call stor17.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                            require ext_code.size(stor9)
                            call stor9.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
}

function _fallback() payable {
    if stor16[address(msg.sender)]:
        revert with 0, 'Sender is blacklisted'
    else:
        require not stor11
        if msg.value < 4 * 10^17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Amount contributed should be greater than required minimal contribution'
        else:
            require block.timestamp >= openingTime
            require block.timestamp <= closingTime
            require msg.sender
            require msg.value
            require weiRaised + msg.value >= weiRaised
            require weiRaised + msg.value <= cap
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
                if block.timestamp >= openingTime:
                    if block.timestamp >= icoStartTime:
                        if block.timestamp >= closingTime:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                    else:
                        if msg.value * rate:
                            require msg.value * rate
                            require 125 * msg.value * rate / msg.value * rate == 125
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 125 * msg.value * rate / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 125 * msg.value * rate / 100, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 125 * msg.value * rate / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 125 * msg.value * rate / 100, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                else:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    if this.address != this.address:
                        require ext_code.size(stor17)
                        call stor17.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            require ext_code.size(stor9)
                            call stor9.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require ext_code.size(stor17)
                        call stor17.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            require ext_code.size(stor9)
                            call stor9.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
            else:
                if block.timestamp >= openingTime:
                    if block.timestamp >= icoStartTime:
                        if block.timestamp >= closingTime:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            if this.address != this.address:
                                require ext_code.size(stor17)
                                call stor17.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(stor17)
                                call stor17.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    require ext_code.size(stor9)
                                    call stor9.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                    else:
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        if this.address != this.address:
                            require ext_code.size(stor17)
                            call stor17.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                require ext_code.size(stor9)
                                call stor9.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require ext_code.size(stor17)
                            call stor17.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                require ext_code.size(stor9)
                                call stor9.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                else:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    if this.address != this.address:
                        require ext_code.size(stor17)
                        call stor17.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            require ext_code.size(stor9)
                            call stor9.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require ext_code.size(stor17)
                        call stor17.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            require ext_code.size(stor9)
                            call stor9.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
}



}
