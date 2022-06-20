contract main {




// =====================  Runtime code  =====================


uint256 sub_e269ee9e;
uint256 sub_dd0c7e6a;
uint256 payment;
uint256 sub_0e815226;
uint256 sub_c055b240;
uint256 sub_fad97b5c;
uint256 sub_9a0fa13a;
uint256 sub_d2e4a4d0;
bool stor8;
uint256 sub_b7439712;
bool stor9;
uint256 sub_c3e743ee;
uint256 sub_5e8c5ec4;
uint256 sub_4252dd05;
uint256 stor12;
uint8 sub_6d8494fe;
address stor13;
address sub_0e295c22Address; offset 8
address sub_2ccf64cdAddress;
address sub_e686862dAddress;
address sub_a1c12e6bAddress;
uint8 sub_525e6fdc; offset 160
uint8 sub_d9b6e5f5; offset 168
address sellerAddress;

function Seller() {
    return sellerAddress
}

function sub_0e295c22(?) {
    return sub_0e295c22Address
}

function sub_0e815226(?) {
    return sub_0e815226
}

function sub_2ccf64cd(?) {
    return sub_2ccf64cdAddress
}

function sub_4252dd05(?) {
    return sub_4252dd05
}

function sub_525e6fdc(?) {
    require sub_525e6fdc <= 2
    return sub_525e6fdc
}

function sub_5e8c5ec4(?) {
    return sub_5e8c5ec4
}

function sub_6d8494fe(?) {
    return bool(sub_6d8494fe)
}

function sub_9a0fa13a(?) {
    return sub_9a0fa13a
}

function sub_a1c12e6b(?) {
    return sub_a1c12e6bAddress
}

function Payment() {
    return payment
}

function sub_b7439712(?) {
    return uint256(sub_b7439712)
}

function sub_c055b240(?) {
    return sub_c055b240
}

function sub_c3e743ee(?) {
    return uint256(sub_c3e743ee)
}

function sub_d2e4a4d0(?) {
    return sub_d2e4a4d0
}

function sub_d9b6e5f5(?) {
    require sub_d9b6e5f5 <= 5
    return sub_d9b6e5f5
}

function sub_dd0c7e6a(?) {
    return sub_dd0c7e6a
}

function sub_e269ee9e(?) {
    return sub_e269ee9e
}

function sub_e686862d(?) {
    return sub_e686862dAddress
}

function sub_fad97b5c(?) {
    return sub_fad97b5c
}

function _fallback() payable {
    revert
}

function sub_33818676(?) {
    require arg1 <= 2
    if arg1 == 1:
        return 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359
    require arg1 <= 2
    if arg1 != 2:
        return 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359
    return 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48
}

function sub_bca353be(?) {
    if sellerAddress != msg.sender:
        revert with 0, 'Caller is not the Seller.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    stor12++
    call sellerAddress with:
       value 10^15 * sub_4252dd05 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_d9b6e5f5 = 0
    emit 0x4159ac8e: block.timestamp, sub_4252dd05
    if stor12 != stor12:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}

function expireContract() {
    if block.timestamp <= sub_e269ee9e:
        revert with 0, 'Contract has not expired.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5 != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    stor12++
    call sellerAddress with:
       value 10^15 * sub_4252dd05 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_d9b6e5f5 = 5
    emit 0x60a25acb: block.timestamp, sub_4252dd05
    if stor12 != stor12:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}

function activateContract() payable {
    if block.timestamp > sub_e269ee9e:
        revert with 0, 'Contract has expired.'
    if sellerAddress != msg.sender:
        revert with 0, 'Caller is not the Seller.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    stor12++
    if 10^15 * sub_4252dd05 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ethereum sent does not match contract amount.'
    sub_d9b6e5f5 = 1
    emit 0x6b8769e5: block.timestamp, sub_4252dd05
    if stor12 != stor12:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}

function sub_52f792f9(?) {
    if block.timestamp <= sub_dd0c7e6a + 3600:
        revert with 0, 'Reservation has not expired.'
    if sub_a1c12e6bAddress != msg.sender:
        if sellerAddress != msg.sender:
            if sub_0e295c22Address != msg.sender:
                if sub_2ccf64cdAddress != msg.sender:
                    revert with 0, 'Caller is not exclusive.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5 != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    stor12++
    sub_a1c12e6bAddress = 0
    call sub_0e295c22Address with:
       value 10^15 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_d9b6e5f5 = 1
    emit 0xd13727cc: block.timestamp, msg.sender
    if stor12 != stor12:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}

function sub_6f4892c6(?) payable {
    if block.timestamp > sub_e269ee9e:
        revert with 0, 'Contract has expired.'
    if msg.sender == sellerAddress:
        revert with 0, 'Caller is the Seller.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    stor12++
    require ext_code.size(sub_e686862dAddress)
    call sub_e686862dAddress.0xbb71136a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a verified buyer.'
    require arg1 <= 2
    if not arg1:
        revert with 0, 'Premium type not specified.'
    if 10^15 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Value sent does not equal 10 ETH.'
    require arg1 <= 2
    if arg1 != 1:
        if uint256(sub_b7439712) % 3:
            revert with 0, 'USDC payment not accepted.'
    else:
        if bool(stor8):
            revert with 0, 'DAI payment not accepted.'
    require arg1 <= 2
    sub_525e6fdc = arg1
    sub_d9b6e5f5 = 2
    sub_a1c12e6bAddress = msg.sender
    sub_dd0c7e6a = block.timestamp
    require arg1 <= 2
    emit 0x7c985a55: block.timestamp, msg.sender, arg1
    if stor12 != stor12:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}

function sub_4393099a(?) {
    if sub_a1c12e6bAddress != msg.sender:
        revert with 0, 'Caller is not the Buyer.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5 != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    if block.timestamp > sub_e269ee9e:
        revert with 0, 'Contract has expired.'
    stor12++
    if not sub_6d8494fe:
        if block.timestamp < sub_e269ee9e - (24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'European option is not exercisable until 24 hours before expiration.'
    require arg1 <= 2
    if arg1 == 1:
        if bool(stor9):
            revert with 0, 'DAI not accepted.'
        require arg1 <= 2
        if arg1 == 1:
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                 gas gas_remaining wei
                args sub_a1c12e6bAddress, sellerAddress, payment
        else:
            require arg1 <= 2
            if arg1 != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sellerAddress, payment
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sellerAddress, payment
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'DAI payment failed.'
    else:
        require arg1 <= 2
        if arg1 != 2:
            revert with 0, 'Payment type not specified.'
        if uint256(sub_c3e743ee) % 3:
            revert with 0, 'USDC not accepted.'
        require arg1 <= 2
        if arg1 == 1:
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                 gas gas_remaining wei
                args sub_a1c12e6bAddress, sellerAddress, sub_0e815226
        else:
            require arg1 <= 2
            if arg1 != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sellerAddress, sub_0e815226
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sellerAddress, sub_0e815226
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'USDC payment failed.'
    ('bool', ('ext_call.return_data', 0, 32))
    call sub_a1c12e6bAddress with:
       value 10^15 * sub_4252dd05 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_d9b6e5f5 = 4
    require arg1 <= 2
    emit 0x4c95ac84: block.timestamp, arg1 << 248, sub_a1c12e6bAddress
    if stor12 != stor12:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}

function sub_9def6f70(?) {
    if block.timestamp > sub_e269ee9e:
        revert with 0, 'Contract has expired.'
    if block.timestamp > sub_dd0c7e6a + 3600:
        revert with 0, 'Reservation has expired.'
    if sub_a1c12e6bAddress != msg.sender:
        revert with 0, 'Caller is not the Buyer.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5 != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    stor12++
    require sub_525e6fdc <= 2
    require sub_525e6fdc <= 2
    if sub_525e6fdc != 1:
        if sub_525e6fdc == 1:
            if sub_d2e4a4d0 > sub_fad97b5c:
                revert with 0, 'Incorrect SafeMath subtraction.'
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                 gas gas_remaining wei
                args sub_a1c12e6bAddress, sellerAddress, sub_fad97b5c - sub_d2e4a4d0
        else:
            require sub_525e6fdc <= 2
            if sub_d2e4a4d0 > sub_fad97b5c:
                revert with 0, 'Incorrect SafeMath subtraction.'
            if sub_525e6fdc != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sellerAddress, sub_fad97b5c - sub_d2e4a4d0
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sellerAddress, sub_fad97b5c - sub_d2e4a4d0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Premium payment failed.'
        require sub_525e6fdc <= 2
        if sub_525e6fdc == 1:
            if sub_d2e4a4d0:
                require sub_d2e4a4d0
                if 3 * sub_d2e4a4d0 / sub_d2e4a4d0 != 3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Incorrect SafeMath multiplication.'
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                 gas gas_remaining wei
                args sub_a1c12e6bAddress, stor13, 3 * sub_d2e4a4d0
        else:
            require sub_525e6fdc <= 2
            if sub_d2e4a4d0:
                require sub_d2e4a4d0
                if 3 * sub_d2e4a4d0 / sub_d2e4a4d0 != 3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Incorrect SafeMath multiplication.'
            if sub_525e6fdc != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, stor13, 3 * sub_d2e4a4d0
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, stor13, 3 * sub_d2e4a4d0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Fee payment failed.'
        call sub_a1c12e6bAddress with:
           value 10^15 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x2e3b97a7: block.timestamp, sub_fad97b5c
    else:
        if sub_525e6fdc == 1:
            if sub_9a0fa13a > sub_c055b240:
                revert with 0, 'Incorrect SafeMath subtraction.'
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                 gas gas_remaining wei
                args sub_a1c12e6bAddress, sellerAddress, sub_c055b240 - sub_9a0fa13a
        else:
            require sub_525e6fdc <= 2
            if sub_9a0fa13a > sub_c055b240:
                revert with 0, 'Incorrect SafeMath subtraction.'
            if sub_525e6fdc != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sellerAddress, sub_c055b240 - sub_9a0fa13a
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sellerAddress, sub_c055b240 - sub_9a0fa13a
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Premium payment failed.'
        require sub_525e6fdc <= 2
        if sub_525e6fdc == 1:
            if sub_9a0fa13a:
                require sub_9a0fa13a
                if 3 * sub_9a0fa13a / sub_9a0fa13a != 3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Incorrect SafeMath multiplication.'
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                 gas gas_remaining wei
                args sub_a1c12e6bAddress, stor13, 3 * sub_9a0fa13a
        else:
            require sub_525e6fdc <= 2
            if sub_9a0fa13a:
                require sub_9a0fa13a
                if 3 * sub_9a0fa13a / sub_9a0fa13a != 3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Incorrect SafeMath multiplication.'
            if sub_525e6fdc != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, stor13, 3 * sub_9a0fa13a
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, stor13, 3 * sub_9a0fa13a
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Fee payment failed.'
        call sub_a1c12e6bAddress with:
           value 10^15 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x2e3b97a7: block.timestamp, sub_c055b240
    sub_d9b6e5f5 = 3
    if stor12 != stor12:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}



}
