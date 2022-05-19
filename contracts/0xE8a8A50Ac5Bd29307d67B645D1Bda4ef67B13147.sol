contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint256 accounts;
address tokenAddress;
address sub_7d45330fAddress;
mapping of struct sub_e37a0fb8;
uint256 sub_18143cb0;
uint256 sub_2726f5c7;
uint8 state;
uint256 ethTotal;
uint256 sub_f383ce7a;
uint8 sub_80b7ceb2;

function sub_18143cb0(?) {
    return sub_18143cb0
}

function sub_2726f5c7(?) {
    return sub_2726f5c7
}

function ethTotal() {
    return ethTotal
}

function sub_503bb33d(?) {
    return bool(stor1[arg1])
}

function accounts(address arg1) {
    return accounts[arg1]
}

function AuthorizedUser(address arg1) {
    return bool(stor0[arg1])
}

function sub_7d45330f(?) {
    return sub_7d45330fAddress
}

function sub_80b7ceb2(?) {
    return bool(sub_80b7ceb2)
}

function state() {
    require state <= 3
    return state
}

function sub_e37a0fb8(?) {
    return sub_e37a0fb8[address(arg1)].field_0, sub_e37a0fb8[address(arg1)].field_256
}

function reservation(address arg1) {
    return sub_e37a0fb8[arg1].field_0, sub_e37a0fb8[arg1].field_256
}

function sub_f383ce7a(?) {
    return sub_f383ce7a
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_29b0ad80(?) {
    require stor1[address(msg.sender)]
    sub_80b7ceb2 = uint8(arg1)
    return bool(sub_80b7ceb2)
}

function changeState(uint8 arg1) {
    require stor1[address(msg.sender)]
    require arg1 <= 3
    state = arg1
    emit 0x40f2bce3 
}

function sub_ef018a64(?) {
    require stor1[address(msg.sender)]
    stor1[address(arg1)] = uint8(arg2)
    emit 0xd07e2168: arg2, arg1
}

function sub_956563c5(?) {
    require stor1[address(msg.sender)]
    require arg1 <= 12 * 3600
    require arg2 >= 1
    sub_18143cb0 = arg1
    sub_2726f5c7 = arg2
}

function setAuthorizedUser(address arg1, bool arg2) {
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = uint8(arg2)
    emit AuthorizedUserChanged(arg2, arg1);
}

function sub_dc99085b(?) {
    require arg1 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 <= sub_f383ce7a
    sub_f383ce7a -= arg1
    emit Burn(arg1, msg.sender);
}

function withdrowErc20(address arg1, address arg2, uint256 arg3) {
    require stor0[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit WithdrowErc20Token(arg3, arg1, arg2);
}

function melt(uint256 arg1) {
    require stor0[address(msg.sender)]
    require ext_code.size(sub_7d45330fAddress)
    call sub_7d45330fAddress.0x8c83ed33 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    require arg1 <= sub_f383ce7a
    sub_f383ce7a -= arg1
}

function deposit(address arg1, uint256 arg2) payable {
    require stor0[address(msg.sender)]
    require state <= 3
    if state != 1:
        require state <= 3
        require state == 2
    require msg.value > 0
    require ethTotal + msg.value >= ethTotal
    ethTotal += msg.value
    require sub_f383ce7a + arg2 >= sub_f383ce7a
    sub_f383ce7a += arg2
    require accounts[address(arg1)] + msg.value >= accounts[address(arg1)]
    accounts[address(arg1)] += msg.value
}

function freeze(uint256 arg1) {
    require stor0[address(msg.sender)]
    require sub_f383ce7a >= arg1
    require ext_code.size(sub_7d45330fAddress)
    call sub_7d45330fAddress.0xd7a78db8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    require sub_f383ce7a + arg1 >= sub_f383ce7a
    sub_f383ce7a += arg1
}

function sub_e8e6ed69(?) {
    if not sub_f383ce7a:
        return 0
    if not ethTotal:
        return 0
    if not sub_80b7ceb2:
        if ethTotal:
            return (sub_f383ce7a / ethTotal)
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ethTotal:
            return (ext_call.return_data[0] / ethTotal)
    ('iszero', ('stor', ('name', 'ethTotal', 9)))
    revert
}

function sub_c2900228(?) payable {
    require state <= 3
    if state != 1:
        require state <= 3
        require state == 3
    if not sub_80b7ceb2:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg1
    sub_e37a0fb8[address(msg.sender)].field_0 = block.timestamp
    sub_e37a0fb8[address(msg.sender)].field_256 = arg1
}

function sub_a21bab8e(?) {
    require state <= 3
    if state:
        require state <= 3
        if state != 2:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                if sub_e37a0fb8[address(arg1)].field_256 >= arg2:
                    if sub_e37a0fb8[address(arg1)].field_0 + (60 * sub_18143cb0) <= block.timestamp:
                        if sub_e37a0fb8[address(arg1)].field_0 + (60 * sub_18143cb0) + (60 * sub_2726f5c7) >= block.timestamp:
                            return 1
                        else:
                            return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function withdrawal(uint256 arg1) payable {
    require state <= 3
    if state != 1:
        require state <= 3
        require state == 3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require sub_e37a0fb8[address(msg.sender)].field_256 >= arg1
    require sub_e37a0fb8[address(msg.sender)].field_0 + (60 * sub_18143cb0) <= block.timestamp
    require sub_e37a0fb8[address(msg.sender)].field_0 + (60 * sub_18143cb0) + (60 * sub_2726f5c7) >= block.timestamp
    require arg1 <= sub_e37a0fb8[address(msg.sender)].field_256
    sub_e37a0fb8[address(msg.sender)].field_256 -= arg1
    require sub_f383ce7a
    require ethTotal
    if not sub_80b7ceb2:
        require ethTotal
        require sub_f383ce7a / ethTotal
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Burn(arg1, msg.sender);
        call msg.sender with:
           value arg1 / sub_f383ce7a / ethTotal wei
             gas 2300 * is_zero(value) wei
        require arg1 / sub_f383ce7a / ethTotal <= ethTotal
        ethTotal -= arg1 / sub_f383ce7a / ethTotal
        require arg1 <= sub_f383ce7a
        sub_f383ce7a -= arg1
        emit Withdrawn((arg1 / sub_f383ce7a / ethTotal), msg.sender);
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ethTotal
        require ext_call.return_data[0] / ethTotal
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Burn(arg1, msg.sender);
        call msg.sender with:
           value arg1 / ext_call.return_data[0] / ethTotal wei
             gas 2300 * is_zero(value) wei
        require arg1 / ext_call.return_data[0] / ethTotal <= ethTotal
        ethTotal -= arg1 / ext_call.return_data[0] / ethTotal
        require arg1 <= sub_f383ce7a
        sub_f383ce7a -= arg1
        emit Withdrawn((arg1 / ext_call.return_data[0] / ethTotal), msg.sender);
}



}
