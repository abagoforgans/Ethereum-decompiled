contract main {




// =====================  Runtime code  =====================


address sub_f3ad65f4Address;
uint256 stor1;
address stor2;
mapping of uint256 sub_98bdcb11;
uint8 stor4;

function sub_98bdcb11(?) {
    return sub_98bdcb11[address(arg1)], sub_98bdcb11[address(arg1)]
}

function freezed() {
    return bool(stor4)
}

function sub_f3ad65f4(?) {
    return sub_f3ad65f4Address
}

function _fallback() payable {
  stop
}

function freeze(bool arg1) {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'admin'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Permission Denied'
    stor4 = uint8(arg1)
}

function sub_d583b206(?) {
    if not arg1:
        revert with 0, 'Invalid Address.'
    require ext_code.size(stor2)
    call stor2.give(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sub_98bdcb11[address(msg.sender)], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_98bdcb11[address(msg.sender)] = stor1
    emit 0x54e847b7: sub_98bdcb11[address(msg.sender)], msg.sender, arg1
}

function sub_b9ca3bf6(?) {
    require ext_code.size(stor2)
    call stor2.lad(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_98bdcb11[ext_call.return_data[12 len 20]] != stor1:
        revert with 0, 'More than 1 CDP is not allowed.'
    sub_98bdcb11[address(ext_call.return_data[0])] = arg1
    emit 0x31f5dffe: arg1, msg.sender
}

function getETHRate() {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'ethfeed'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).peek() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function pethPEReth(uint256 arg1) {
    require ext_code.size(stor2)
    call stor2.per() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Assertion Failed'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if arg1:
            if 1000000000 * 10^18 * arg1 / arg1 != 1000000000 * 10^18:
                revert with 0, 'Assertion Failed'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Assertion Failed'
            if ext_call.return_data[0]:
                return (1000000000 * 10^18 * arg1 / ext_call.return_data[0])
    revert
}

function collectMKR(uint256 arg1) {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'admin'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Permission Denied'
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'mkr'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit MKRCollected(arg1);
}

function sub_4b6bb6ae(?) {
    if stor4:
        revert with 0, 'Operation Disabled'
    require ext_code.size(stor2)
    call stor2.draw(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_98bdcb11[address(msg.sender)], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not msg.sender:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x4e393322: msg.sender, arg1, msg.sender
    else:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x4e393322: msg.sender, arg1, arg2
}

function approveERC20() {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'weth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'peth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'mkr'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8d445bd0(?) {
    if stor4:
        revert with 0, 'Operation Disabled'
    require ext_code.size(stor2)
    call stor2.per() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Assertion Failed'
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.free(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_98bdcb11[address(msg.sender)], 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.exit(uint256 arg1) with:
             gas gas_remaining wei
            args (0 / ext_call.return_data[0])
    else:
        require arg1
        if 1000000000 * 10^18 * arg1 / arg1 != 1000000000 * 10^18:
            revert with 0, 'Assertion Failed'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Assertion Failed'
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.free(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_98bdcb11[address(msg.sender)], 1000000000 * 10^18 * arg1 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.exit(uint256 arg1) with:
             gas gas_remaining wei
            args (1000000000 * 10^18 * arg1 / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'weth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    emit 0x535dbd84: msg.sender, arg1
}

function sub_84a73e53(?) payable {
    if sub_98bdcb11[address(arg1)] == stor1:
        if arg1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Creating CDP for others is not permitted at the moment.'
        require ext_code.size(stor2)
        call stor2.open() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_98bdcb11[address(msg.sender)] = ext_call.return_data[0]
        emit 0xaacf4dab: msg.sender, sub_98bdcb11[address(msg.sender)]
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'weth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.per() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Assertion Failed'
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.join(uint256 arg1) with:
             gas gas_remaining wei
            args (0 / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.lock(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_98bdcb11[address(arg1)], 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xae07a3d5: address(arg1), msg.value, 0 / ext_call.return_data[0], msg.sender
    else:
        require msg.value
        if 1000000000 * 10^18 * msg.value / msg.value != 1000000000 * 10^18:
            revert with 0, 'Assertion Failed'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Assertion Failed'
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.join(uint256 arg1) with:
             gas gas_remaining wei
            args (1000000000 * 10^18 * msg.value / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.lock(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_98bdcb11[address(arg1)], 1000000000 * 10^18 * msg.value / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xae07a3d5: address(arg1), msg.value, 1000000000 * 10^18 * msg.value / ext_call.return_data[0], msg.sender
}

function sub_2b3e27eb(?) payable {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'mkr'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'eth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.wipe(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_98bdcb11[address(arg2)], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value <= 0:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(sub_f3ad65f4Address)
        call sub_f3ad65f4Address.getAddr(string arg1) with:
             gas gas_remaining wei
            args 'InstaKyber'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getExpectedPrice(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).executeTrade(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
           value msg.value wei
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), msg.value, ext_call.return_data[32], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 0:
            revert with 0, 'ETH not sufficient to cover the MKR fees.'
        if eth.balance(this.address) > 0:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0xcc687835: address(arg2), arg1, 0, msg.sender
}

function borrow(uint256 arg1, address arg2) payable {
    if msg.value > 0:
        if sub_98bdcb11[address(msg.sender)] == stor1:
            if msg.sender != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Creating CDP for others is not permitted at the moment.'
            require ext_code.size(stor2)
            call stor2.open() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_98bdcb11[address(msg.sender)] = ext_call.return_data[0]
            emit 0xaacf4dab: msg.sender, sub_98bdcb11[address(msg.sender)]
        require ext_code.size(sub_f3ad65f4Address)
        call sub_f3ad65f4Address.getAddr(string arg1) with:
             gas gas_remaining wei
            args 'weth'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.per() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not msg.value:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Assertion Failed'
            require ext_call.return_data[0]
            require ext_code.size(stor2)
            call stor2.join(uint256 arg1) with:
                 gas gas_remaining wei
                args (0 / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.lock(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_98bdcb11[address(msg.sender)], 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xae07a3d5: msg.sender, msg.value, 0 / ext_call.return_data[0], msg.sender
        else:
            require msg.value
            if 1000000000 * 10^18 * msg.value / msg.value != 1000000000 * 10^18:
                revert with 0, 'Assertion Failed'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Assertion Failed'
            require ext_call.return_data[0]
            require ext_code.size(stor2)
            call stor2.join(uint256 arg1) with:
                 gas gas_remaining wei
                args (1000000000 * 10^18 * msg.value / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.lock(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_98bdcb11[address(msg.sender)], 1000000000 * 10^18 * msg.value / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xae07a3d5: msg.sender, msg.value, 1000000000 * 10^18 * msg.value / ext_call.return_data[0], msg.sender
    if arg1 > 0:
        if stor4:
            revert with 0, 'Operation Disabled'
        require ext_code.size(stor2)
        call stor2.draw(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_98bdcb11[address(msg.sender)], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3ad65f4Address)
        call sub_f3ad65f4Address.getAddr(string arg1) with:
             gas gas_remaining wei
            args 'dai'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if not msg.sender:
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x4e393322: msg.sender, arg1, msg.sender
        else:
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x4e393322: msg.sender, arg1, arg2
}

function repay(uint256 arg1, uint256 arg2) payable {
    if arg1 > 0:
        require ext_code.size(sub_f3ad65f4Address)
        call sub_f3ad65f4Address.getAddr(string arg1) with:
             gas gas_remaining wei
            args 'dai'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f3ad65f4Address)
        call sub_f3ad65f4Address.getAddr(string arg1) with:
             gas gas_remaining wei
            args 'mkr'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f3ad65f4Address)
        call sub_f3ad65f4Address.getAddr(string arg1) with:
             gas gas_remaining wei
            args 'eth'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.wipe(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_98bdcb11[address(msg.sender)], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value <= 0:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            require ext_code.size(sub_f3ad65f4Address)
            call sub_f3ad65f4Address.getAddr(string arg1) with:
                 gas gas_remaining wei
                args 'InstaKyber'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getExpectedPrice(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).executeTrade(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
               value msg.value wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), msg.value, ext_call.return_data[32], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != 0:
                revert with 0, 'ETH not sufficient to cover the MKR fees.'
            if eth.balance(this.address) > 0:
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        emit 0xcc687835: msg.sender, arg1, 0, msg.sender
    if arg2 > 0:
        if stor4:
            revert with 0, 'Operation Disabled'
        require ext_code.size(stor2)
        call stor2.per() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Assertion Failed'
            require ext_call.return_data[0]
            require ext_code.size(stor2)
            call stor2.free(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_98bdcb11[address(msg.sender)], 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.exit(uint256 arg1) with:
                 gas gas_remaining wei
                args (0 / ext_call.return_data[0])
        else:
            require arg2
            if 1000000000 * 10^18 * arg2 / arg2 != 1000000000 * 10^18:
                revert with 0, 'Assertion Failed'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Assertion Failed'
            require ext_call.return_data[0]
            require ext_code.size(stor2)
            call stor2.free(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_98bdcb11[address(msg.sender)], 1000000000 * 10^18 * arg2 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.exit(uint256 arg1) with:
                 gas gas_remaining wei
                args (1000000000 * 10^18 * arg2 / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3ad65f4Address)
        call sub_f3ad65f4Address.getAddr(string arg1) with:
             gas gas_remaining wei
            args 'weth'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        emit 0x535dbd84: msg.sender, arg2
}



}
