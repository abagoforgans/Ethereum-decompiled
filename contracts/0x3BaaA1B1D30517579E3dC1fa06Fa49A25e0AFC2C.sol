contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
mapping of uint8 stor5;
uint8 stor6;
mapping of uint8 stor7;
address meAddress;
uint8 stor9; offset 176
uint16 sub_60acab94; offset 160
uint128 stor9; offset 176
address stor9;
mapping of address stor10;
mapping of uint256 stor11;
uint256 commission;
uint256 sub_213bce9c;
address stor14;

function sub_213bce9c(?) {
    return sub_213bce9c
}

function promotion() {
    return bool(uint8(stor9.field_176))
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor7[address(arg1)])
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor5[address(arg1)])
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor6)
}

function sub_60acab94(?) {
    return sub_60acab94
}

function me() {
    return meAddress
}

function commission() {
    return commission
}

function token() {
    return tokenAddress
}

function close() payable {
    if meAddress != msg.sender:
        revert with 0, 'sender is not owner'
    selfdestruct(meAddress)
}

function unpause() {
    require msg.sender
    require stor5[address(msg.sender)]
    require stor6
    stor6 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor5[address(msg.sender)]
    require not stor6
    stor6 = 1
    emit Paused(msg.sender);
}

function renounceAdmin() {
    require msg.sender
    require stor7[address(msg.sender)]
    stor7[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor5[address(msg.sender)]
    stor5[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function sub_7ed7b5ae(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor7[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    if arg1 > 0:
        sub_213bce9c = arg1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor5[address(msg.sender)]
    require arg1
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_c44b7a8e(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor7[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    if arg1 > 0:
        sub_60acab94 = arg1
    Mask(80, 0, stor9.field_176) = Mask(80, 0, arg2)
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor7[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    require arg1
    require not stor7[address(arg1)]
    stor7[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function releaseCommission() payable {
    require msg.sender
    if not stor7[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    if commission <= 0:
        revert with 0, 'commission should be > 0'
    call walletAddress with:
       value commission wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    commission = 0
}

function airdrop() payable {
    if not uint8(stor9.field_176):
        revert with 0, 'no promotion'
    if stor11[address(msg.sender)]:
        revert with 0, 'cannot airdrop twice'
    require stor11[address(msg.sender)] + 10 * 10^18 >= stor11[address(msg.sender)]
    stor11[address(msg.sender)] += 10 * 10^18
    require ext_code.size(address(stor9.field_0))
    call address(stor9.field_0).0x965639c3 with:
         gas gas_remaining wei
        args msg.sender, 10 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    if msg.value <= 0:
        if not uint8(stor9.field_176):
            revert with 0, 'no promotion'
        if stor11[address(msg.sender)]:
            revert with 0, 'cannot airdrop twice'
        require stor11[address(msg.sender)] + 10 * 10^18 >= stor11[address(msg.sender)]
        stor11[address(msg.sender)] += 10 * 10^18
        require ext_code.size(address(stor9.field_0))
        call address(stor9.field_0).0x965639c3 with:
             gas gas_remaining wei
            args msg.sender, 10 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require not stor6
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor14)
    call stor14.0xa1448194 with:
         gas gas_remaining wei
        args address(arg1), msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
    require commission + (msg.value / 10) >= commission
    commission += msg.value / 10
    if commission <= 0:
        revert with 0, 'commission should be > 0'
    call walletAddress with:
       value commission wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    commission = 0
    require stor0 == stor0
}

function refundRate() {
    require ext_code.size(stor14)
    staticcall stor14.0x31711884 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not sub_213bce9c:
            return 1
        require sub_213bce9c
        require 1000 * sub_213bce9c / sub_213bce9c == 1000
        require (1000 * sub_213bce9c) + 1 >= 1000 * sub_213bce9c
        return ((1000 * sub_213bce9c) + 1)
    if not sub_213bce9c:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require (0 / ext_call.return_data[0]) + 1 >= 0 / ext_call.return_data[0]
        return ((0 / ext_call.return_data[0]) + 1)
    require sub_213bce9c
    require 1000 * sub_213bce9c / sub_213bce9c == 1000
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 >= 1000 * sub_213bce9c / ext_call.return_data[0]
    return ((1000 * sub_213bce9c / ext_call.return_data[0]) + 1)
}

function toWei(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor14)
    staticcall stor14.0x31711884 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not sub_213bce9c:
            return arg1
        if sub_213bce9c:
            require 1000 * sub_213bce9c / sub_213bce9c == 1000
            require (1000 * sub_213bce9c) + 1 >= 1000 * sub_213bce9c
            require (1000 * sub_213bce9c) + 1 > 0
            if (1000 * sub_213bce9c) + 1:
                return (arg1 / (1000 * sub_213bce9c) + 1)
    else:
        if not sub_213bce9c:
            require ext_call.return_data[0] > 0
            if ext_call.return_data[0]:
                require (0 / ext_call.return_data[0]) + 1 >= 0 / ext_call.return_data[0]
                require (0 / ext_call.return_data[0]) + 1 > 0
                if (0 / ext_call.return_data[0]) + 1:
                    return (arg1 / (0 / ext_call.return_data[0]) + 1)
        else:
            if sub_213bce9c:
                require 1000 * sub_213bce9c / sub_213bce9c == 1000
                require ext_call.return_data[0] > 0
                if ext_call.return_data[0]:
                    require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 >= 1000 * sub_213bce9c / ext_call.return_data[0]
                    require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 > 0
                    if (1000 * sub_213bce9c / ext_call.return_data[0]) + 1:
                        return (arg1 / (1000 * sub_213bce9c / ext_call.return_data[0]) + 1)
    revert
}

function sub_c8e917ff(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor7[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    require ext_code.size(stor14)
    staticcall stor14.0x31711884 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not sub_213bce9c:
            require commission + arg2 >= commission
            commission += arg2
        else:
            require sub_213bce9c
            require 1000 * sub_213bce9c / sub_213bce9c == 1000
            require (1000 * sub_213bce9c) + 1 >= 1000 * sub_213bce9c
            require (1000 * sub_213bce9c) + 1 > 0
            require (1000 * sub_213bce9c) + 1
            require commission + (arg2 / (1000 * sub_213bce9c) + 1) >= commission
            commission += arg2 / (1000 * sub_213bce9c) + 1
    else:
        if not sub_213bce9c:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require (0 / ext_call.return_data[0]) + 1 >= 0 / ext_call.return_data[0]
            require (0 / ext_call.return_data[0]) + 1 > 0
            require (0 / ext_call.return_data[0]) + 1
            require commission + (arg2 / (0 / ext_call.return_data[0]) + 1) >= commission
            commission += arg2 / (0 / ext_call.return_data[0]) + 1
        else:
            require sub_213bce9c
            require 1000 * sub_213bce9c / sub_213bce9c == 1000
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 >= 1000 * sub_213bce9c / ext_call.return_data[0]
            require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 > 0
            require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1
            require commission + (arg2 / (1000 * sub_213bce9c / ext_call.return_data[0]) + 1) >= commission
            commission += arg2 / (1000 * sub_213bce9c / ext_call.return_data[0]) + 1
    require ext_code.size(stor14)
    call stor14.0x9f15d700 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function award(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor7[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    if arg2 <= sub_213bce9c:
        revert with 0, 'value is too small'
    require ext_code.size(stor14)
    staticcall stor14.0x31711884 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not sub_213bce9c:
            if arg2 <= 0:
                revert with 0, 'less than 1 wei'
            if eth.balance(this.address) < arg2:
                revert with 0, 'balance > transferred value'
            call msg.sender with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
        else:
            require sub_213bce9c
            require 1000 * sub_213bce9c / sub_213bce9c == 1000
            require (1000 * sub_213bce9c) + 1 >= 1000 * sub_213bce9c
            require (1000 * sub_213bce9c) + 1 > 0
            require (1000 * sub_213bce9c) + 1
            if arg2 / (1000 * sub_213bce9c) + 1 <= 0:
                revert with 0, 'less than 1 wei'
            if eth.balance(this.address) < arg2 / (1000 * sub_213bce9c) + 1:
                revert with 0, 'balance > transferred value'
            call msg.sender with:
               value arg2 / (1000 * sub_213bce9c) + 1 wei
                 gas 2300 * is_zero(value) wei
    else:
        if not sub_213bce9c:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require (0 / ext_call.return_data[0]) + 1 >= 0 / ext_call.return_data[0]
            require (0 / ext_call.return_data[0]) + 1 > 0
            require (0 / ext_call.return_data[0]) + 1
            if arg2 / (0 / ext_call.return_data[0]) + 1 <= 0:
                revert with 0, 'less than 1 wei'
            if eth.balance(this.address) < arg2 / (0 / ext_call.return_data[0]) + 1:
                revert with 0, 'balance > transferred value'
            call msg.sender with:
               value arg2 / (0 / ext_call.return_data[0]) + 1 wei
                 gas 2300 * is_zero(value) wei
        else:
            require sub_213bce9c
            require 1000 * sub_213bce9c / sub_213bce9c == 1000
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 >= 1000 * sub_213bce9c / ext_call.return_data[0]
            require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 > 0
            require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1
            if arg2 / (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 <= 0:
                revert with 0, 'less than 1 wei'
            if eth.balance(this.address) < arg2 / (1000 * sub_213bce9c / ext_call.return_data[0]) + 1:
                revert with 0, 'balance > transferred value'
            call msg.sender with:
               value arg2 / (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refund(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor14)
    staticcall stor14.0x42ec38e2 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'insufficient token'
    if arg1 <= sub_213bce9c:
        revert with 0, 'value is too small'
    require ext_code.size(stor14)
    staticcall stor14.0x31711884 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not sub_213bce9c:
            if arg1 < 10^15:
                revert with 0, 'less than 0.001 ether'
            if eth.balance(this.address) < arg1:
                revert with 0, 'balance > transferred value'
            require ext_code.size(stor14)
            call stor14.0x265eb29a with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'refund fails'
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
        else:
            require sub_213bce9c
            require 1000 * sub_213bce9c / sub_213bce9c == 1000
            require (1000 * sub_213bce9c) + 1 >= 1000 * sub_213bce9c
            require (1000 * sub_213bce9c) + 1 > 0
            require (1000 * sub_213bce9c) + 1
            if arg1 / (1000 * sub_213bce9c) + 1 < 10^15:
                revert with 0, 'less than 0.001 ether'
            if eth.balance(this.address) < arg1 / (1000 * sub_213bce9c) + 1:
                revert with 0, 'balance > transferred value'
            require ext_code.size(stor14)
            call stor14.0x265eb29a with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'refund fails'
            call msg.sender with:
               value arg1 / (1000 * sub_213bce9c) + 1 wei
                 gas 2300 * is_zero(value) wei
    else:
        if not sub_213bce9c:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require (0 / ext_call.return_data[0]) + 1 >= 0 / ext_call.return_data[0]
            require (0 / ext_call.return_data[0]) + 1 > 0
            require (0 / ext_call.return_data[0]) + 1
            if arg1 / (0 / ext_call.return_data[0]) + 1 < 10^15:
                revert with 0, 'less than 0.001 ether'
            if eth.balance(this.address) < arg1 / (0 / ext_call.return_data[0]) + 1:
                revert with 0, 'balance > transferred value'
            require ext_code.size(stor14)
            call stor14.0x265eb29a with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'refund fails'
            call msg.sender with:
               value arg1 / (0 / ext_call.return_data[0]) + 1 wei
                 gas 2300 * is_zero(value) wei
        else:
            require sub_213bce9c
            require 1000 * sub_213bce9c / sub_213bce9c == 1000
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 >= 1000 * sub_213bce9c / ext_call.return_data[0]
            require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 > 0
            require (1000 * sub_213bce9c / ext_call.return_data[0]) + 1
            if arg1 / (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 < 10^15:
                revert with 0, 'less than 0.001 ether'
            if eth.balance(this.address) < arg1 / (1000 * sub_213bce9c / ext_call.return_data[0]) + 1:
                revert with 0, 'balance > transferred value'
            require ext_code.size(stor14)
            call stor14.0x265eb29a with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'refund fails'
            call msg.sender with:
               value arg1 / (1000 * sub_213bce9c / ext_call.return_data[0]) + 1 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    stor0++
    require not stor6
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor14)
    call stor14.0xa1448194 with:
         gas gas_remaining wei
        args address(arg1), msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
        require commission + (msg.value / 10) >= commission
        commission += msg.value / 10
        if commission <= 0:
            revert with 0, 'commission should be > 0'
        else:
            call walletAddress with:
               value commission wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                commission = 0
                require stor0 == stor0
                if not uint8(stor9.field_176):
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        if msg.value >= 10^18:
                            if msg.value >= 5 * 10^18:
                                if msg.value >= 10 * 10^18:
                                    if msg.value * rate:
                                        require msg.value * rate
                                        require 15 * msg.value * rate / msg.value * rate == 15
                                        if 15 * msg.value * rate / 100 <= 0:
                                            if not uint8(stor9.field_176):
                                                revert with 0, 'no promotion'
                                            else:
                                                if stor10[address(arg1)]:
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        if msg.value * rate:
                                                            require msg.value * rate
                                                            require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                        else:
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                else:
                                                    if not arg2:
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                    else:
                                                        if arg2 == arg1:
                                                            if not stor10[address(arg1)]:
                                                            else:
                                                                if msg.value * rate:
                                                                    require msg.value * rate
                                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                else:
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                        else:
                                                            stor10[address(arg1)] = arg2
                                                            if not stor10[address(arg1)]:
                                                            else:
                                                                if msg.value * rate:
                                                                    require msg.value * rate
                                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                else:
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                        else:
                                            require ext_code.size(stor14)
                                            call stor14.0x965639c3 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 15 * msg.value * rate / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if not uint8(stor9.field_176):
                                                    revert with 0, 'no promotion'
                                                else:
                                                    if stor10[address(arg1)]:
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                    else:
                                                        if not arg2:
                                                            if not stor10[address(arg1)]:
                                                            else:
                                                                if msg.value * rate:
                                                                    require msg.value * rate
                                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                else:
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                        else:
                                                            if arg2 == arg1:
                                                                if not stor10[address(arg1)]:
                                                                else:
                                                                    if msg.value * rate:
                                                                        require msg.value * rate
                                                                        require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                        require ext_code.size(address(stor9.field_0))
                                                                        call address(stor9.field_0).0x965639c3 with:
                                                                             gas gas_remaining wei
                                                                            args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                    else:
                                                                        require ext_code.size(address(stor9.field_0))
                                                                        call address(stor9.field_0).0x965639c3 with:
                                                                             gas gas_remaining wei
                                                                            args stor10[address(arg1)], 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                            else:
                                                                stor10[address(arg1)] = arg2
                                                                if not stor10[address(arg1)]:
                                                                else:
                                                                    if msg.value * rate:
                                                                        require msg.value * rate
                                                                        require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                        require ext_code.size(address(stor9.field_0))
                                                                        call address(stor9.field_0).0x965639c3 with:
                                                                             gas gas_remaining wei
                                                                            args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                    else:
                                                                        require ext_code.size(address(stor9.field_0))
                                                                        call address(stor9.field_0).0x965639c3 with:
                                                                             gas gas_remaining wei
                                                                            args stor10[address(arg1)], 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                    else:
                                        if not uint8(stor9.field_176):
                                            revert with 0, 'no promotion'
                                        else:
                                            if stor10[address(arg1)]:
                                                if not stor10[address(arg1)]:
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                    else:
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                            else:
                                                if not arg2:
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        if msg.value * rate:
                                                            require msg.value * rate
                                                            require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                        else:
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                else:
                                                    if arg2 == arg1:
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                    else:
                                                        stor10[address(arg1)] = arg2
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                else:
                                    if msg.value * rate:
                                        require msg.value * rate
                                        require 10 * msg.value * rate / msg.value * rate == 10
                                        if 10 * msg.value * rate / 100 <= 0:
                                            if not uint8(stor9.field_176):
                                                revert with 0, 'no promotion'
                                            else:
                                                if stor10[address(arg1)]:
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        if msg.value * rate:
                                                            require msg.value * rate
                                                            require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                        else:
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                else:
                                                    if not arg2:
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                    else:
                                                        if arg2 == arg1:
                                                            if not stor10[address(arg1)]:
                                                            else:
                                                                if msg.value * rate:
                                                                    require msg.value * rate
                                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                else:
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                        else:
                                                            stor10[address(arg1)] = arg2
                                                            if not stor10[address(arg1)]:
                                                            else:
                                                                if msg.value * rate:
                                                                    require msg.value * rate
                                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                else:
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                        else:
                                            require ext_code.size(stor14)
                                            call stor14.0x965639c3 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 10 * msg.value * rate / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if not uint8(stor9.field_176):
                                                    revert with 0, 'no promotion'
                                                else:
                                                    if stor10[address(arg1)]:
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                    else:
                                                        if not arg2:
                                                            if not stor10[address(arg1)]:
                                                            else:
                                                                if msg.value * rate:
                                                                    require msg.value * rate
                                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                else:
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                        else:
                                                            if arg2 == arg1:
                                                                if not stor10[address(arg1)]:
                                                                else:
                                                                    if msg.value * rate:
                                                                        require msg.value * rate
                                                                        require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                        require ext_code.size(address(stor9.field_0))
                                                                        call address(stor9.field_0).0x965639c3 with:
                                                                             gas gas_remaining wei
                                                                            args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                    else:
                                                                        require ext_code.size(address(stor9.field_0))
                                                                        call address(stor9.field_0).0x965639c3 with:
                                                                             gas gas_remaining wei
                                                                            args stor10[address(arg1)], 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                            else:
                                                                stor10[address(arg1)] = arg2
                                                                if not stor10[address(arg1)]:
                                                                else:
                                                                    if msg.value * rate:
                                                                        require msg.value * rate
                                                                        require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                        require ext_code.size(address(stor9.field_0))
                                                                        call address(stor9.field_0).0x965639c3 with:
                                                                             gas gas_remaining wei
                                                                            args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                    else:
                                                                        require ext_code.size(address(stor9.field_0))
                                                                        call address(stor9.field_0).0x965639c3 with:
                                                                             gas gas_remaining wei
                                                                            args stor10[address(arg1)], 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                    else:
                                        if not uint8(stor9.field_176):
                                            revert with 0, 'no promotion'
                                        else:
                                            if stor10[address(arg1)]:
                                                if not stor10[address(arg1)]:
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                    else:
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                            else:
                                                if not arg2:
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        if msg.value * rate:
                                                            require msg.value * rate
                                                            require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                        else:
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                else:
                                                    if arg2 == arg1:
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                    else:
                                                        stor10[address(arg1)] = arg2
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                            else:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 5 * msg.value * rate / msg.value * rate == 5
                                    if 5 * msg.value * rate / 100 <= 0:
                                        if not uint8(stor9.field_176):
                                            revert with 0, 'no promotion'
                                        else:
                                            if stor10[address(arg1)]:
                                                if not stor10[address(arg1)]:
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                    else:
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                            else:
                                                if not arg2:
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        if msg.value * rate:
                                                            require msg.value * rate
                                                            require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                        else:
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                else:
                                                    if arg2 == arg1:
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                    else:
                                                        stor10[address(arg1)] = arg2
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                    else:
                                        require ext_code.size(stor14)
                                        call stor14.0x965639c3 with:
                                             gas gas_remaining wei
                                            args address(arg1), 5 * msg.value * rate / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if not uint8(stor9.field_176):
                                                revert with 0, 'no promotion'
                                            else:
                                                if stor10[address(arg1)]:
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        if msg.value * rate:
                                                            require msg.value * rate
                                                            require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                        else:
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                else:
                                                    if not arg2:
                                                        if not stor10[address(arg1)]:
                                                        else:
                                                            if msg.value * rate:
                                                                require msg.value * rate
                                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                            else:
                                                                require ext_code.size(address(stor9.field_0))
                                                                call address(stor9.field_0).0x965639c3 with:
                                                                     gas gas_remaining wei
                                                                    args stor10[address(arg1)], 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                    else:
                                                        if arg2 == arg1:
                                                            if not stor10[address(arg1)]:
                                                            else:
                                                                if msg.value * rate:
                                                                    require msg.value * rate
                                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                else:
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                        else:
                                                            stor10[address(arg1)] = arg2
                                                            if not stor10[address(arg1)]:
                                                            else:
                                                                if msg.value * rate:
                                                                    require msg.value * rate
                                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                                else:
                                                                    require ext_code.size(address(stor9.field_0))
                                                                    call address(stor9.field_0).0x965639c3 with:
                                                                         gas gas_remaining wei
                                                                        args stor10[address(arg1)], 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                else:
                                    if not uint8(stor9.field_176):
                                        revert with 0, 'no promotion'
                                    else:
                                        if stor10[address(arg1)]:
                                            if not stor10[address(arg1)]:
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                    require ext_code.size(address(stor9.field_0))
                                                    call address(stor9.field_0).0x965639c3 with:
                                                         gas gas_remaining wei
                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                else:
                                                    require ext_code.size(address(stor9.field_0))
                                                    call address(stor9.field_0).0x965639c3 with:
                                                         gas gas_remaining wei
                                                        args stor10[address(arg1)], 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                        else:
                                            if not arg2:
                                                if not stor10[address(arg1)]:
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                    else:
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                            else:
                                                if arg2 == arg1:
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        if msg.value * rate:
                                                            require msg.value * rate
                                                            require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                        else:
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                else:
                                                    stor10[address(arg1)] = arg2
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        if msg.value * rate:
                                                            require msg.value * rate
                                                            require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                        else:
                                                            require ext_code.size(address(stor9.field_0))
                                                            call address(stor9.field_0).0x965639c3 with:
                                                                 gas gas_remaining wei
                                                                args stor10[address(arg1)], 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                        else:
                            if not uint8(stor9.field_176):
                                revert with 0, 'no promotion'
                            else:
                                if stor10[address(arg1)]:
                                    if not stor10[address(arg1)]:
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                            require ext_code.size(address(stor9.field_0))
                                            call address(stor9.field_0).0x965639c3 with:
                                                 gas gas_remaining wei
                                                args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                        else:
                                            require ext_code.size(address(stor9.field_0))
                                            call address(stor9.field_0).0x965639c3 with:
                                                 gas gas_remaining wei
                                                args stor10[address(arg1)], 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                                else:
                                    if not arg2:
                                        if not stor10[address(arg1)]:
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                require ext_code.size(address(stor9.field_0))
                                                call address(stor9.field_0).0x965639c3 with:
                                                     gas gas_remaining wei
                                                    args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                            else:
                                                require ext_code.size(address(stor9.field_0))
                                                call address(stor9.field_0).0x965639c3 with:
                                                     gas gas_remaining wei
                                                    args stor10[address(arg1)], 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                    else:
                                        if arg2 == arg1:
                                            if not stor10[address(arg1)]:
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                    require ext_code.size(address(stor9.field_0))
                                                    call address(stor9.field_0).0x965639c3 with:
                                                         gas gas_remaining wei
                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                else:
                                                    require ext_code.size(address(stor9.field_0))
                                                    call address(stor9.field_0).0x965639c3 with:
                                                         gas gas_remaining wei
                                                        args stor10[address(arg1)], 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                        else:
                                            stor10[address(arg1)] = arg2
                                            if not stor10[address(arg1)]:
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require msg.value * rate * sub_60acab94 / msg.value * rate == sub_60acab94
                                                    require ext_code.size(address(stor9.field_0))
                                                    call address(stor9.field_0).0x965639c3 with:
                                                         gas gas_remaining wei
                                                        args stor10[address(arg1)], msg.value * rate * sub_60acab94 / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit 0x761fc3ef: (msg.value * rate * sub_60acab94 / 100), stor10[address(arg1)]
                                                else:
                                                    require ext_code.size(address(stor9.field_0))
                                                    call address(stor9.field_0).0x965639c3 with:
                                                         gas gas_remaining wei
                                                        args stor10[address(arg1)], 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                    else:
                        if msg.value >= 10^18:
                            if msg.value >= 5 * 10^18:
                                if msg.value >= 10 * 10^18:
                                    if not uint8(stor9.field_176):
                                        revert with 0, 'no promotion'
                                    else:
                                        if stor10[address(arg1)]:
                                            if not stor10[address(arg1)]:
                                            else:
                                                require ext_code.size(address(stor9.field_0))
                                                call address(stor9.field_0).0x965639c3 with:
                                                     gas gas_remaining wei
                                                    args stor10[address(arg1)], 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                        else:
                                            if not arg2:
                                                if not stor10[address(arg1)]:
                                                else:
                                                    require ext_code.size(address(stor9.field_0))
                                                    call address(stor9.field_0).0x965639c3 with:
                                                         gas gas_remaining wei
                                                        args stor10[address(arg1)], 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                            else:
                                                if arg2 == arg1:
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                else:
                                                    stor10[address(arg1)] = arg2
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                else:
                                    if not uint8(stor9.field_176):
                                        revert with 0, 'no promotion'
                                    else:
                                        if stor10[address(arg1)]:
                                            if not stor10[address(arg1)]:
                                            else:
                                                require ext_code.size(address(stor9.field_0))
                                                call address(stor9.field_0).0x965639c3 with:
                                                     gas gas_remaining wei
                                                    args stor10[address(arg1)], 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                        else:
                                            if not arg2:
                                                if not stor10[address(arg1)]:
                                                else:
                                                    require ext_code.size(address(stor9.field_0))
                                                    call address(stor9.field_0).0x965639c3 with:
                                                         gas gas_remaining wei
                                                        args stor10[address(arg1)], 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                            else:
                                                if arg2 == arg1:
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                                else:
                                                    stor10[address(arg1)] = arg2
                                                    if not stor10[address(arg1)]:
                                                    else:
                                                        require ext_code.size(address(stor9.field_0))
                                                        call address(stor9.field_0).0x965639c3 with:
                                                             gas gas_remaining wei
                                                            args stor10[address(arg1)], 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                            else:
                                if not uint8(stor9.field_176):
                                    revert with 0, 'no promotion'
                                else:
                                    if stor10[address(arg1)]:
                                        if not stor10[address(arg1)]:
                                        else:
                                            require ext_code.size(address(stor9.field_0))
                                            call address(stor9.field_0).0x965639c3 with:
                                                 gas gas_remaining wei
                                                args stor10[address(arg1)], 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                                    else:
                                        if not arg2:
                                            if not stor10[address(arg1)]:
                                            else:
                                                require ext_code.size(address(stor9.field_0))
                                                call address(stor9.field_0).0x965639c3 with:
                                                     gas gas_remaining wei
                                                    args stor10[address(arg1)], 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                        else:
                                            if arg2 == arg1:
                                                if not stor10[address(arg1)]:
                                                else:
                                                    require ext_code.size(address(stor9.field_0))
                                                    call address(stor9.field_0).0x965639c3 with:
                                                         gas gas_remaining wei
                                                        args stor10[address(arg1)], 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                                            else:
                                                stor10[address(arg1)] = arg2
                                                if not stor10[address(arg1)]:
                                                else:
                                                    require ext_code.size(address(stor9.field_0))
                                                    call address(stor9.field_0).0x965639c3 with:
                                                         gas gas_remaining wei
                                                        args stor10[address(arg1)], 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit 0x761fc3ef: 0, stor10[address(arg1)]
                        else:
                            if not uint8(stor9.field_176):
                                revert with 0, 'no promotion'
                            else:
                                if stor10[address(arg1)]:
                                    if not stor10[address(arg1)]:
                                    else:
                                        require ext_code.size(address(stor9.field_0))
                                        call address(stor9.field_0).0x965639c3 with:
                                             gas gas_remaining wei
                                            args stor10[address(arg1)], 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit 0x761fc3ef: 0, stor10[address(arg1)]
                                else:
                                    if not arg2:
                                        if not stor10[address(arg1)]:
                                        else:
                                            require ext_code.size(address(stor9.field_0))
                                            call address(stor9.field_0).0x965639c3 with:
                                                 gas gas_remaining wei
                                                args stor10[address(arg1)], 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit 0x761fc3ef: 0, stor10[address(arg1)]
                                    else:
                                        if arg2 == arg1:
                                            if not stor10[address(arg1)]:
                                            else:
                                                require ext_code.size(address(stor9.field_0))
                                                call address(stor9.field_0).0x965639c3 with:
                                                     gas gas_remaining wei
                                                    args stor10[address(arg1)], 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
                                        else:
                                            stor10[address(arg1)] = arg2
                                            if not stor10[address(arg1)]:
                                            else:
                                                require ext_code.size(address(stor9.field_0))
                                                call address(stor9.field_0).0x965639c3 with:
                                                     gas gas_remaining wei
                                                    args stor10[address(arg1)], 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit 0x761fc3ef: 0, stor10[address(arg1)]
}



}
