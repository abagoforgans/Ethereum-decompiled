contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address drupeCoinAddress;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function getDrupeCoin() {
    return drupeCoinAddress
}

function getOwner() {
    return owner
}

function getRefBonus() {
    return stor5, stor6
}

function getBasePrice() {
    return stor3, stor4
}

function getMainsale() {
    return stor13, stor14
}

function getPresale1() {
    return stor7, stor8, stor9
}

function getPresale2() {
    return stor10, stor11, stor12
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    stor1 = arg1
}

function acceptOwnership() {
    require msg.sender == stor1
    owner = stor1
    stor1 = 0
}

function withdrawFunds(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burnUnsoldTokens() {
    require msg.sender == owner
    require block.timestamp >= stor14
    require ext_code.size(drupeCoinAddress)
    call drupeCoinAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(drupeCoinAddress)
    call drupeCoinAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require block.timestamp >= stor7
    require block.timestamp < stor14
    if block.timestamp < stor10:
        if not msg.value:
            require stor3
            if not 0 / stor3:
                require stor9
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (0 / stor3) + (0 / stor9)
            else:
                require stor8 * 0 / stor3 / 0 / stor3 == stor8
                require stor9
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (0 / stor3) + (stor8 * 0 / stor3 / stor9)
        else:
            require stor4 * msg.value / msg.value == stor4
            require stor3
            if not stor4 * msg.value / stor3:
                require stor9
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (stor4 * msg.value / stor3) + (0 / stor9)
            else:
                require stor8 * stor4 * msg.value / stor3 / stor4 * msg.value / stor3 == stor8
                require stor9
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (stor4 * msg.value / stor3) + (stor8 * stor4 * msg.value / stor3 / stor9)
    else:
        if block.timestamp >= stor13:
            if not msg.value:
                require stor3
                if 0 / stor3:
                    require not 0 / 0 / stor3
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / stor3
            else:
                require stor4 * msg.value / msg.value == stor4
                require stor3
                if stor4 * msg.value / stor3:
                    require not 0 / stor4 * msg.value / stor3
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor4 * msg.value / stor3
        else:
            if not msg.value:
                require stor3
                if not 0 / stor3:
                    require stor12
                    require ext_code.size(drupeCoinAddress)
                    call drupeCoinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / stor3) + (0 / stor12)
                else:
                    require stor11 * 0 / stor3 / 0 / stor3 == stor11
                    require stor12
                    require ext_code.size(drupeCoinAddress)
                    call drupeCoinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / stor3) + (stor11 * 0 / stor3 / stor12)
            else:
                require stor4 * msg.value / msg.value == stor4
                require stor3
                if not stor4 * msg.value / stor3:
                    require stor12
                    require ext_code.size(drupeCoinAddress)
                    call drupeCoinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (stor4 * msg.value / stor3) + (0 / stor12)
                else:
                    require stor11 * stor4 * msg.value / stor3 / stor4 * msg.value / stor3 == stor11
                    require stor12
                    require ext_code.size(drupeCoinAddress)
                    call drupeCoinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (stor4 * msg.value / stor3) + (stor11 * stor4 * msg.value / stor3 / stor12)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    create contract with 0 wei
                    code: code.data[2362 len 303], address(msg.sender), this.address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit Referrer(msg.sender, address(create.new_address));
}

function purchase(address arg1, address arg2) payable {
    require block.timestamp >= stor7
    require block.timestamp < stor14
    if block.timestamp < stor10:
        if not msg.value:
            require stor3
            if not 0 / stor3:
                require stor9
                if not 0 / stor3:
                    require stor6
                    require ext_code.size(drupeCoinAddress)
                    call drupeCoinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (0 / stor3) + (0 / stor9)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(drupeCoinAddress)
                    call drupeCoinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), 0 / stor6
                else:
                    require stor5 * 0 / stor3 / 0 / stor3 == stor5
                    require stor6
                    require ext_code.size(drupeCoinAddress)
                    call drupeCoinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (0 / stor3) + (0 / stor9)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(drupeCoinAddress)
                    call drupeCoinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), stor5 * 0 / stor3 / stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                create contract with 0 wei
                                code: code.data[2362 len 303], address(arg1), this.address
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Referrer(arg1, address(create.new_address));
                return ((0 / stor3) + (0 / stor9))
            require stor8 * 0 / stor3 / 0 / stor3 == stor8
            require stor9
            if not 0 / stor3:
                require stor6
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (0 / stor3) + (stor8 * 0 / stor3 / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), 0 / stor6
            else:
                require stor5 * 0 / stor3 / 0 / stor3 == stor5
                require stor6
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (0 / stor3) + (stor8 * 0 / stor3 / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), stor5 * 0 / stor3 / stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            create contract with 0 wei
                            code: code.data[2362 len 303], address(arg1), this.address
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            emit Referrer(arg1, address(create.new_address));
            return ((0 / stor3) + (stor8 * 0 / stor3 / stor9))
        require stor4 * msg.value / msg.value == stor4
        require stor3
        if not stor4 * msg.value / stor3:
            require stor9
            if not stor4 * msg.value / stor3:
                require stor6
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (stor4 * msg.value / stor3) + (0 / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), 0 / stor6
            else:
                require stor5 * stor4 * msg.value / stor3 / stor4 * msg.value / stor3 == stor5
                require stor6
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (stor4 * msg.value / stor3) + (0 / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), stor5 * stor4 * msg.value / stor3 / stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            create contract with 0 wei
                            code: code.data[2362 len 303], address(arg1), this.address
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            emit Referrer(arg1, address(create.new_address));
            return ((stor4 * msg.value / stor3) + (0 / stor9))
        require stor8 * stor4 * msg.value / stor3 / stor4 * msg.value / stor3 == stor8
        require stor9
        if not stor4 * msg.value / stor3:
            require stor6
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (stor4 * msg.value / stor3) + (stor8 * stor4 * msg.value / stor3 / stor9)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 0 / stor6
        else:
            require stor5 * stor4 * msg.value / stor3 / stor4 * msg.value / stor3 == stor5
            require stor6
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (stor4 * msg.value / stor3) + (stor8 * stor4 * msg.value / stor3 / stor9)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), stor5 * stor4 * msg.value / stor3 / stor6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        create contract with 0 wei
                        code: code.data[2362 len 303], address(arg1), this.address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        emit Referrer(arg1, address(create.new_address));
        return ((stor4 * msg.value / stor3) + (stor8 * stor4 * msg.value / stor3 / stor9))
    if block.timestamp >= stor13:
        if not msg.value:
            require stor3
            if 0 / stor3:
                require not 0 / 0 / stor3
            if not 0 / stor3:
                require stor6
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0 / stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), 0 / stor6
            else:
                require stor5 * 0 / stor3 / 0 / stor3 == stor5
                require stor6
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0 / stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), stor5 * 0 / stor3 / stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            create contract with 0 wei
                            code: code.data[2362 len 303], address(arg1), this.address
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            emit Referrer(arg1, address(create.new_address));
            return (0 / stor3)
        require stor4 * msg.value / msg.value == stor4
        require stor3
        if stor4 * msg.value / stor3:
            require not 0 / stor4 * msg.value / stor3
        if not stor4 * msg.value / stor3:
            require stor6
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), stor4 * msg.value / stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 0 / stor6
        else:
            require stor5 * stor4 * msg.value / stor3 / stor4 * msg.value / stor3 == stor5
            require stor6
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), stor4 * msg.value / stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), stor5 * stor4 * msg.value / stor3 / stor6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        create contract with 0 wei
                        code: code.data[2362 len 303], address(arg1), this.address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        emit Referrer(arg1, address(create.new_address));
        return (stor4 * msg.value / stor3)
    if not msg.value:
        require stor3
        if not 0 / stor3:
            require stor12
            if not 0 / stor3:
                require stor6
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (0 / stor3) + (0 / stor12)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), 0 / stor6
            else:
                require stor5 * 0 / stor3 / 0 / stor3 == stor5
                require stor6
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (0 / stor3) + (0 / stor12)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(drupeCoinAddress)
                call drupeCoinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), stor5 * 0 / stor3 / stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            create contract with 0 wei
                            code: code.data[2362 len 303], address(arg1), this.address
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            emit Referrer(arg1, address(create.new_address));
            return ((0 / stor3) + (0 / stor12))
        require stor11 * 0 / stor3 / 0 / stor3 == stor11
        require stor12
        if not 0 / stor3:
            require stor6
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (0 / stor3) + (stor11 * 0 / stor3 / stor12)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 0 / stor6
        else:
            require stor5 * 0 / stor3 / 0 / stor3 == stor5
            require stor6
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (0 / stor3) + (stor11 * 0 / stor3 / stor12)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), stor5 * 0 / stor3 / stor6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        create contract with 0 wei
                        code: code.data[2362 len 303], address(arg1), this.address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        emit Referrer(arg1, address(create.new_address));
        return ((0 / stor3) + (stor11 * 0 / stor3 / stor12))
    require stor4 * msg.value / msg.value == stor4
    require stor3
    if not stor4 * msg.value / stor3:
        require stor12
        if not stor4 * msg.value / stor3:
            require stor6
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (stor4 * msg.value / stor3) + (0 / stor12)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 0 / stor6
        else:
            require stor5 * stor4 * msg.value / stor3 / stor4 * msg.value / stor3 == stor5
            require stor6
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (stor4 * msg.value / stor3) + (0 / stor12)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(drupeCoinAddress)
            call drupeCoinAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), stor5 * stor4 * msg.value / stor3 / stor6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        create contract with 0 wei
                        code: code.data[2362 len 303], address(arg1), this.address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        emit Referrer(arg1, address(create.new_address));
        return ((stor4 * msg.value / stor3) + (0 / stor12))
    require stor11 * stor4 * msg.value / stor3 / stor4 * msg.value / stor3 == stor11
    require stor12
    if not stor4 * msg.value / stor3:
        require stor6
        require ext_code.size(drupeCoinAddress)
        call drupeCoinAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (stor4 * msg.value / stor3) + (stor11 * stor4 * msg.value / stor3 / stor12)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(drupeCoinAddress)
        call drupeCoinAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), 0 / stor6
    else:
        require stor5 * stor4 * msg.value / stor3 / stor4 * msg.value / stor3 == stor5
        require stor6
        require ext_code.size(drupeCoinAddress)
        call drupeCoinAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (stor4 * msg.value / stor3) + (stor11 * stor4 * msg.value / stor3 / stor12)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(drupeCoinAddress)
        call drupeCoinAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), stor5 * stor4 * msg.value / stor3 / stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    create contract with 0 wei
                    code: code.data[2362 len 303], address(arg1), this.address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit Referrer(arg1, address(create.new_address));
    return ((stor4 * msg.value / stor3) + (stor11 * stor4 * msg.value / stor3 / stor12))
}



}
