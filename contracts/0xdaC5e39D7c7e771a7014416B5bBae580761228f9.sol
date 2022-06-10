contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 allowed;
uint256 totalSupply_;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address adminAddress;
mapping of uint8 stor10;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply_
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function totalSupply_() {
    return totalSupply_
}

function sub_55f5e7de(?) {
    return bool(stor10[arg1])
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_d626fca2(?) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_64314e69(?) {
    return (10^12 * arg1)
}

function sub_85f8195b(?) {
    return (arg1 / 10^12)
}

function percent(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require arg3
    return (arg1 * arg2 * 10^(arg4 + 1) / arg3 / 10 / 10^18)
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_3fb4fe6f(?) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balances[address(msg.sender)]
    require arg1
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowed[address(msg.sender)][address(arg1)]
        allowed[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function adminWithdraw(address arg1) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function addLiquidity(address arg1, uint256 arg2) {
    require bool(stor10[address(arg1)]) == 1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender
    require totalSupply_ + arg2 >= totalSupply_
    totalSupply_ += arg2
    require balances[address(msg.sender)] + arg2 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg2
    emit Transfer(arg2, 0, msg.sender);
    return 1
}

function sub_d4aae80f(?) {
    require ext_code.size(0xdac17f958d2ee523a2206206994597c13d831ec7)
    call 0xdac17f958d2ee523a2206206994597c13d831ec7.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
    call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8e870d67f660d95d5be530380d0ec0bd388289e1)
    call 0x8e870d67f660d95d5be530380d0ec0bd388289e1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((2000000000002 * ext_call.return_data[0]) - totalSupply_)
}

function sub_a6da8e0d(?) {
    require bool(stor10[address(arg1)]) == 1
    require balances[address(msg.sender)] >= arg2
    require bool(stor11[address(arg1)]) == 1
    require arg2 < totalSupply_
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != 6:
        if arg2 >= totalSupply_:
            require msg.sender
            require arg2 <= balances[address(msg.sender)]
            require arg2 <= totalSupply_
            totalSupply_ -= arg2
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            emit Transfer(arg2, msg.sender, 0);
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require ext_code.size(0xdac17f958d2ee523a2206206994597c13d831ec7)
            call 0xdac17f958d2ee523a2206206994597c13d831ec7.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
            call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x8e870d67f660d95d5be530380d0ec0bd388289e1)
            call 0x8e870d67f660d95d5be530380d0ec0bd388289e1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require totalSupply_
            require msg.sender
            require arg2 <= balances[address(msg.sender)]
            require arg2 <= totalSupply_
            totalSupply_ -= arg2
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            emit Transfer(arg2, msg.sender, 0);
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (10^12 * ext_call.return_data[0] * 10 * 10^18 * arg2 / totalSupply_) + (ext_call.return_data[0] * 10 * 10^18 * arg2 / totalSupply_) + (10^12 * ext_call.return_data[0] * 10 * 10^18 * arg2 / totalSupply_) + (ext_call.return_data[0] * 10 * 10^18 * arg2 / totalSupply_) - (totalSupply_ * 10 * 10^18 * arg2 / totalSupply_) / 10 / 10^18
    else:
        if arg2 >= totalSupply_:
            require msg.sender
            require arg2 <= balances[address(msg.sender)]
            require arg2 <= totalSupply_
            totalSupply_ -= arg2
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            emit Transfer(arg2, msg.sender, 0);
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 / 10^12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require ext_code.size(0xdac17f958d2ee523a2206206994597c13d831ec7)
            call 0xdac17f958d2ee523a2206206994597c13d831ec7.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
            call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x8e870d67f660d95d5be530380d0ec0bd388289e1)
            call 0x8e870d67f660d95d5be530380d0ec0bd388289e1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require totalSupply_
            require msg.sender
            require arg2 <= balances[address(msg.sender)]
            require arg2 <= totalSupply_
            totalSupply_ -= arg2
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            emit Transfer(arg2, msg.sender, 0);
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 / 10^12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (2000000000002 * ext_call.return_data[0]) - totalSupply_ / 10^12 * 10 * 10^18 * arg2 / totalSupply_ / 10 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_b4a47de2(?) {
    require bool(stor10[address(arg1)]) == 1
    require bool(stor10[address(arg2)]) == 1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != 6:
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[31 len 1] != 18:
            require ext_code.size(arg1)
            call arg1.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
                return 0
            require ext_code.size(arg1)
            call arg1.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 - (arg3 * 7 * 10^(uint8(ext_call.return_data[0]) + 1) / 1000 / 10 / 10^18)
        else:
            if ext_call.return_data[31 len 1] == 6:
                require arg3 > 10^12
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (arg3 / 10^12) - (7 * 10^16 * arg3 / 10^12 / 10 / 10^18)
            else:
                require ext_code.size(arg2)
                call arg2.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
                    return 0
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg3 - (arg3 * 7 * 10^(uint8(ext_call.return_data[0]) + 1) / 1000 / 10 / 10^18)
    else:
        require ext_code.size(arg2)
        call arg2.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[31 len 1] == 18:
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (10^12 * arg3) - (70000000000 * 10^18 * arg3 / 10 / 10^18)
        else:
            require ext_code.size(arg1)
            call arg1.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] != 18:
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
                    return 0
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg3 - (arg3 * 7 * 10^(uint8(ext_call.return_data[0]) + 1) / 1000 / 10 / 10^18)
            else:
                if ext_call.return_data[31 len 1] == 6:
                    require arg3 > 10^12
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (arg3 / 10^12) - (7 * 10^16 * arg3 / 10^12 / 10 / 10^18)
                else:
                    require ext_code.size(arg2)
                    call arg2.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg3 - (arg3 * 7 * 10^(uint8(ext_call.return_data[0]) + 1) / 1000 / 10 / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
