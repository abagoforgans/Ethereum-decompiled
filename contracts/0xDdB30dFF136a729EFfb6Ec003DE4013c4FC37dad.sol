contract main {




// =====================  Runtime code  =====================


uint256 sub_e269ee9e;
uint256 sub_dd0c7e6a;
uint256 sub_606030f2;
uint256 sub_f3657b85;
uint256 sub_c055b240;
uint256 sub_fad97b5c;
uint256 sub_9a0fa13a;
uint256 sub_d2e4a4d0;
bool stor8;
uint256 sub_b7439712;
uint256 sub_5e8c5ec4;
uint256 sub_4252dd05;
uint256 stor11;
uint8 stor12;
address stor12;
address sub_0e295c22Address; offset 8
address sub_2ccf64cdAddress;
address sub_e686862dAddress;
address sub_a1c12e6bAddress;
uint8 stor16;
uint8 sub_525e6fdc; offset 160
uint8 sub_5bf0f1f2; offset 168
uint8 sub_d9b6e5f5; offset 176
address sellerAddress;

function Seller() {
    return sellerAddress
}

function sub_0e295c22(?) {
    return sub_0e295c22Address
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

function sub_5bf0f1f2(?) {
    require sub_5bf0f1f2 <= 2
    return sub_5bf0f1f2
}

function sub_5e8c5ec4(?) {
    return sub_5e8c5ec4
}

function sub_606030f2(?) {
    return sub_606030f2
}

function sub_6d8494fe(?) {
    return bool(uint8(stor12.field_0))
}

function sub_9a0fa13a(?) {
    return sub_9a0fa13a
}

function sub_a1c12e6b(?) {
    return sub_a1c12e6bAddress
}

function sub_b7439712(?) {
    return uint256(sub_b7439712)
}

function sub_c055b240(?) {
    return sub_c055b240
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

function sub_f3657b85(?) {
    return sub_f3657b85
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
    stor11++
    sub_a1c12e6bAddress = 0
    call sub_0e295c22Address with:
       value 15 * 10^17 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_2ccf64cdAddress with:
       value 5 * 10^17 wei
         gas 0 wei
    call sellerAddress with:
       value 8 * 10^18 wei
         gas 0 wei
    sub_d9b6e5f5 = 1
    emit 0xd13727cc: block.timestamp, msg.sender
    if stor11 != stor11:
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
    stor11++
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
    if 10 * 10^18 != msg.value:
        revert with 0, 'Value sent does not equal 1 ETH.'
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
    if stor11 != stor11:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}

function expireContract() {
    if block.timestamp <= sub_e269ee9e:
        revert with 0, 'Contract has not expired.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5 != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    stor11++
    require sub_5bf0f1f2 <= 2
    require sub_5bf0f1f2 <= 2
    if sub_5bf0f1f2 != 1:
        if sub_5bf0f1f2 == 1:
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                 gas gas_remaining wei
                args sellerAddress, sub_f3657b85
        else:
            require sub_5bf0f1f2 <= 2
            if sub_5bf0f1f2 != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                     gas gas_remaining wei
                    args sellerAddress, sub_f3657b85
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0xa9059cbb with:
                     gas gas_remaining wei
                    args sellerAddress, sub_f3657b85
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Collateral return failed.'
        emit 0x60a25acb: block.timestamp, sub_f3657b85
    else:
        if sub_5bf0f1f2 == 1:
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                 gas gas_remaining wei
                args sellerAddress, sub_606030f2
        else:
            require sub_5bf0f1f2 <= 2
            if sub_5bf0f1f2 != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                     gas gas_remaining wei
                    args sellerAddress, sub_606030f2
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0xa9059cbb with:
                     gas gas_remaining wei
                    args sellerAddress, sub_606030f2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Collateral return failed.'
        emit 0x60a25acb: block.timestamp, sub_606030f2
    sub_d9b6e5f5 = 5
    if stor11 != stor11:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}

function sub_bca353be(?) {
    if sellerAddress != msg.sender:
        revert with 0, 'Caller is not the Seller.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    stor11++
    require sub_5bf0f1f2 <= 2
    require sub_5bf0f1f2 <= 2
    if sub_5bf0f1f2 != 1:
        if sub_5bf0f1f2 == 1:
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                 gas gas_remaining wei
                args sellerAddress, sub_f3657b85
        else:
            require sub_5bf0f1f2 <= 2
            if sub_5bf0f1f2 != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                     gas gas_remaining wei
                    args sellerAddress, sub_f3657b85
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0xa9059cbb with:
                     gas gas_remaining wei
                    args sellerAddress, sub_f3657b85
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Collateral return failed.'
        require sub_5bf0f1f2 <= 2
        emit 0xa3fa7752: block.timestamp, stor16, sub_f3657b85
    else:
        if sub_5bf0f1f2 == 1:
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                 gas gas_remaining wei
                args sellerAddress, sub_606030f2
        else:
            require sub_5bf0f1f2 <= 2
            if sub_5bf0f1f2 != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                     gas gas_remaining wei
                    args sellerAddress, sub_606030f2
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0xa9059cbb with:
                     gas gas_remaining wei
                    args sellerAddress, sub_606030f2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Collateral return failed.'
        require sub_5bf0f1f2 <= 2
        emit 0xa3fa7752: block.timestamp, stor16, sub_606030f2
    sub_d9b6e5f5 = 0
    if stor11 != stor11:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}

function activateContract() {
    if block.timestamp > sub_e269ee9e:
        revert with 0, 'Contract has expired.'
    if sellerAddress != msg.sender:
        revert with 0, 'Caller is not the Seller.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    stor11++
    require sub_5bf0f1f2 <= 2
    require sub_5bf0f1f2 <= 2
    if sub_5bf0f1f2 != 1:
        if sub_5bf0f1f2 == 1:
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                 gas gas_remaining wei
                args sellerAddress, address(this.address), sub_f3657b85
        else:
            require sub_5bf0f1f2 <= 2
            if sub_5bf0f1f2 != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                     gas gas_remaining wei
                    args sellerAddress, address(this.address), sub_f3657b85
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x23b872dd with:
                     gas gas_remaining wei
                    args sellerAddress, address(this.address), sub_f3657b85
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Collateralization failed.'
        require sub_5bf0f1f2 <= 2
        emit 0x1f058ec3: block.timestamp, stor16, sub_f3657b85
    else:
        if sub_5bf0f1f2 == 1:
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                 gas gas_remaining wei
                args sellerAddress, address(this.address), sub_606030f2
        else:
            require sub_5bf0f1f2 <= 2
            if sub_5bf0f1f2 != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                     gas gas_remaining wei
                    args sellerAddress, address(this.address), sub_606030f2
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x23b872dd with:
                     gas gas_remaining wei
                    args sellerAddress, address(this.address), sub_606030f2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Collateralization failed.'
        require sub_5bf0f1f2 <= 2
        emit 0x1f058ec3: block.timestamp, stor16, sub_606030f2
    sub_d9b6e5f5 = 1
    if stor11 != stor11:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}

function sub_c09d25d4(?) payable {
    if sub_a1c12e6bAddress != msg.sender:
        revert with 0, 'Caller is not the Buyer.'
    require sub_d9b6e5f5 <= 5
    if sub_d9b6e5f5 != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function call not allowed in current state.'
    if block.timestamp > sub_e269ee9e:
        revert with 0, 'Contract has expired.'
    stor11++
    if not uint8(stor12.field_0):
        if block.timestamp < sub_e269ee9e - (24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'European option not exercisable until 24 hours before expiration.'
    if 10^18 * sub_4252dd05 != msg.value:
        revert with 0, '.'
    call sellerAddress with:
       value 10^18 * sub_4252dd05 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_5bf0f1f2 <= 2
    require sub_5bf0f1f2 <= 2
    if sub_5bf0f1f2 != 1:
        if sub_5bf0f1f2 == 1:
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_a1c12e6bAddress, sub_f3657b85
        else:
            require sub_5bf0f1f2 <= 2
            if sub_5bf0f1f2 != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sub_f3657b85
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sub_f3657b85
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Collateral transfer failed.'
        emit 0xc159c28f: block.timestamp, sub_f3657b85, sub_a1c12e6bAddress
    else:
        if sub_5bf0f1f2 == 1:
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_a1c12e6bAddress, sub_606030f2
        else:
            require sub_5bf0f1f2 <= 2
            if sub_5bf0f1f2 != 2:
                require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
                call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sub_606030f2
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, sub_606030f2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Collateral transfer failed.'
        emit 0xc159c28f: block.timestamp, sub_606030f2, sub_a1c12e6bAddress
    sub_d9b6e5f5 = 4
    if stor11 != stor11:
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
    stor11++
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
                args sub_a1c12e6bAddress, address(stor12.field_0), 3 * sub_d2e4a4d0
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
                    args sub_a1c12e6bAddress, address(stor12.field_0), 3 * sub_d2e4a4d0
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, address(stor12.field_0), 3 * sub_d2e4a4d0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Fee payment failed.'
        call sub_a1c12e6bAddress with:
           value 10 * 10^18 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xfe13695a: block.timestamp, sub_606030f2, sub_fad97b5c
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
                args sub_a1c12e6bAddress, address(stor12.field_0), 3 * sub_9a0fa13a
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
                    args sub_a1c12e6bAddress, address(stor12.field_0), 3 * sub_9a0fa13a
            else:
                require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
                call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_a1c12e6bAddress, address(stor12.field_0), 3 * sub_9a0fa13a
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Fee payment failed.'
        call sub_a1c12e6bAddress with:
           value 10 * 10^18 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xfe13695a: block.timestamp, sub_606030f2, sub_c055b240
    sub_d9b6e5f5 = 3
    if stor11 != stor11:
        revert with 0, 'Reentrancy guard protection.'
    return 1
}



}
