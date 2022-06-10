contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
address stor2;
mapping of address myLocker;

function getMyLocker() {
    return myLocker[msg.sender]
}

function _fallback() payable {
    revert
}

function totalTokens() {
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function PrivateSale(address arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args stor0, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit LockInvestor(arg2, arg1);
    return 0
}

function Cashback(address arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2.0xdd62ed3e with:
         gas gas_remaining wei
        args stor0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Type 1 Not enough Tokens to transfer'
    if myLocker[msg.sender]:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, myLocker[msg.sender], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        myLocker[address(arg1)] = myLocker[msg.sender]
    else:
        create contract with 0 wei
                        code: code.data[2453 len 2446], address(arg1), stor1, 2630000, 10, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(create.new_address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        myLocker[address(arg1)] = address(create.new_address)
    emit LockCashBack(arg2, arg1);
    return 1
}

function ArbitraryLocker(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require ext_code.size(stor2)
    call stor2.0xdd62ed3e with:
         gas gas_remaining wei
        args stor0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Type 1 Not enough Tokens to transfer'
    if myLocker[msg.sender]:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, myLocker[msg.sender], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        myLocker[address(arg1)] = myLocker[msg.sender]
    else:
        create contract with 0 wei
                        code: code.data[2453 len 2446], address(arg1), arg3, arg4, arg5, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(create.new_address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        myLocker[address(arg1)] = address(create.new_address)
    return 1
}

function StrategicPartners(address arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2.0xdd62ed3e with:
         gas gas_remaining wei
        args stor0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Type 1 Not enough Tokens to transfer'
    if myLocker[msg.sender]:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, myLocker[msg.sender], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        myLocker[address(arg1)] = myLocker[msg.sender]
    else:
        create contract with 0 wei
                        code: code.data[2453 len 2446], address(arg1), stor1, 2630000, 10, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(create.new_address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        myLocker[address(arg1)] = address(create.new_address)
    emit LockStrategicPartners(arg2, arg1);
    return 1
}

function AffiliateMarketing(address arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2.0xdd62ed3e with:
         gas gas_remaining wei
        args stor0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Type 1 Not enough Tokens to transfer'
    if myLocker[msg.sender]:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, myLocker[msg.sender], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        myLocker[address(arg1)] = myLocker[msg.sender]
    else:
        create contract with 0 wei
                        code: code.data[2453 len 2446], address(arg1), stor1, 2630000, 10, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(create.new_address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        myLocker[address(arg1)] = address(create.new_address)
    emit LockAffiliateMarketing(arg2, arg1);
    return 1
}

function CompanyReserve(address arg1, uint256 arg2) {
    require stor1 + 15780000 >= stor1
    require ext_code.size(stor2)
    call stor2.0xdd62ed3e with:
         gas gas_remaining wei
        args stor0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Type 1 Not enough Tokens to transfer'
    if myLocker[msg.sender]:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, myLocker[msg.sender], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        myLocker[address(arg1)] = myLocker[msg.sender]
    else:
        create contract with 0 wei
                        code: code.data[2453 len 2446], address(arg1), stor1 + 15780000, 7890000, 5, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(create.new_address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        myLocker[address(arg1)] = address(create.new_address)
    emit LockCompanyReserve(arg2, arg1);
    return 1
}

function AdvisorsAndFounders(address arg1, uint256 arg2) {
    if not arg2:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 <= arg2
        require ext_code.size(stor2)
        call stor2.0xdd62ed3e with:
             gas gas_remaining wei
            args stor0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Type 1 Not enough Tokens to transfer'
        if myLocker[msg.sender]:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args stor0, myLocker[msg.sender], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            myLocker[address(arg1)] = myLocker[msg.sender]
        else:
            create contract with 0 wei
                            code: code.data[2453 len 2446], address(arg1), stor1, 2630000, 14, 0
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args stor0, address(create.new_address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            myLocker[address(arg1)] = address(create.new_address)
    else:
        require 30 * arg2 / arg2 == 30
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(arg1), 30 * arg2 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 30 * arg2 / 100 <= arg2
        require ext_code.size(stor2)
        call stor2.0xdd62ed3e with:
             gas gas_remaining wei
            args stor0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 - (30 * arg2 / 100) > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Type 1 Not enough Tokens to transfer'
        if myLocker[msg.sender]:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args stor0, myLocker[msg.sender], arg2 - (30 * arg2 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            myLocker[address(arg1)] = myLocker[msg.sender]
        else:
            create contract with 0 wei
                            code: code.data[2453 len 2446], address(arg1), stor1, 2630000, 14, 0
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args stor0, address(create.new_address), arg2 - (30 * arg2 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            myLocker[address(arg1)] = address(create.new_address)
    emit LockAdvisor(arg2, arg1);
    return 1
}



}
