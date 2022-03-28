contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[56 len 4177]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 tokens;
mapping of uint8 stor2;
mapping of uint256 orderFills;

function orderFills(address arg1, bytes32 arg2) {
    return orderFills[arg1][arg2]
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function owner() {
    return owner
}

function orders(address arg1, bytes32 arg2) {
    return bool(stor2[arg1][arg2])
}

function amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, address arg6) {
    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5) 
    require sha256hash.result
    return orderFills[address(arg6)][hash]
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_ec992052(?) {
    hash = sha256hash(address(this.address), arg1, arg2, arg3, arg4, arg5) 
    require sha256hash.result
    if not stor2[address(arg6)][hash]:
        return 0
    require orderFills[address(arg6)][hash] <= arg2
    if tokens[address(arg3)][address(arg6)]:
        require arg2 * tokens[address(arg3)][address(arg6)] / tokens[address(arg3)][address(arg6)] == arg2
    require arg4
    if arg2 - orderFills[address(arg6)][hash] >= arg2 * tokens[address(arg3)][address(arg6)] / arg4:
        return (arg2 * tokens[address(arg3)][address(arg6)] / arg4)
    return (arg2 - orderFills[address(arg6)][hash])
}

function sub_7d22486c(?) {
    require owner == msg.sender
    require msg.value <= 0
    hash = sha256hash(address(this.address), arg2, arg3, arg4, arg5, arg6) 
    require sha256hash.result
    require stor2[address(arg1)][hash]
    require owner == msg.sender
    require msg.value <= 0
    require arg4
    require tokens[address(arg4)][address(arg1)] >= arg5
    require arg5 <= tokens[address(arg4)][address(arg1)]
    tokens[address(arg4)][address(arg1)] -= arg5
    require ext_code.size(arg4)
    call arg4.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), address(arg1), arg5
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(address(arg4), address(arg1), arg5, tokens[address(arg4)][address(arg1)]);
    orderFills[address(arg1)][hash] = arg3
    emit 0x25e66c3c: address(arg2), 0, address(arg4), arg5, arg6, arg1
}

function sub_f5a95fef(?) {
    require owner == msg.sender
    require msg.value <= 0
    hash = sha256hash(address(this.address), arg2, arg3, arg4, arg5, arg6) 
    require sha256hash.result
    stor2[address(arg1)][hash] = 1
    require owner == msg.sender
    require msg.value <= 0
    require arg4
    require ext_code.size(arg4)
    call arg4.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(this.address), arg5
    require ext_call.success
    require ext_call.return_data[0]
    require arg5 + tokens[address(arg4)][address(arg1)] >= tokens[address(arg4)][address(arg1)]
    require arg5 + tokens[address(arg4)][address(arg1)] >= arg5
    tokens[address(arg4)][address(arg1)] += arg5
    emit Deposit(address(arg4), address(arg1), arg5, arg5 + tokens[address(arg4)][address(arg1)]);
    emit Order(address(arg2), 0, address(arg4), arg5, arg6, arg1);
}

function sub_b964824c(?) {
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining - 50 wei
        args arg8
    require ext_call.success
    if ext_call.return_data[0] >= arg7:
        hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5) 
        require sha256hash.result
        if not stor2[address(arg6)][hash]:
            if 0 >= arg7:
                return 1
        else:
            require orderFills[address(arg6)][hash] <= arg2
            if tokens[address(arg3)][address(arg6)]:
                require arg2 * tokens[address(arg3)][address(arg6)] / tokens[address(arg3)][address(arg6)] == arg2
            require arg4
            if arg2 - orderFills[address(arg6)][hash] >= arg2 * tokens[address(arg3)][address(arg6)] / arg4:
                if arg2 * tokens[address(arg3)][address(arg6)] / arg4 >= arg7:
                    return 1
            else:
                if arg2 - orderFills[address(arg6)][hash] >= arg7:
                    return 1
        return 0
    else:
        return 0
}

function sub_71432088(?) {
    require owner == msg.sender
    require msg.value <= 0
    hash = sha256hash(address(this.address), arg2, arg3, arg4, arg5, arg6) 
    require sha256hash.result
    require stor2[address(arg7)][hash]
    require arg8 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
    require arg8 + orderFills[address(arg7)][hash] >= arg8
    require arg8 + orderFills[address(arg7)][hash] <= arg3
    require owner == msg.sender
    require msg.value <= 0
    require address(arg2)
    require ext_code.size(address(arg2))
    call address(arg2).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(this.address), arg8
    require ext_call.success
    require ext_call.return_data[0]
    require arg8 + tokens[address(arg2)][address(arg1)] >= tokens[address(arg2)][address(arg1)]
    require arg8 + tokens[address(arg2)][address(arg1)] >= arg8
    tokens[address(arg2)][address(arg1)] += arg8
    emit Deposit(address(arg2), address(arg1), arg8, arg8 + tokens[address(arg2)][address(arg1)]);
    require arg8 <= tokens[address(arg2)][address(arg1)]
    tokens[address(arg2)][address(arg1)] -= arg8
    require arg8 + tokens[address(arg2)][arg7] >= tokens[address(arg2)][arg7]
    require arg8 + tokens[address(arg2)][arg7] >= arg8
    tokens[address(arg2)][address(arg7)] = arg8 + tokens[address(arg2)][arg7]
    if arg5:
        require arg8 * arg5 / arg5 == arg8
    require arg3
    require arg8 * arg5 / arg3 <= tokens[address(arg4)][address(arg7)]
    tokens[address(arg4)][address(arg7)] -= arg8 * arg5 / arg3
    require (arg8 * arg5 / arg3) + tokens[address(arg4)][arg1] >= tokens[address(arg4)][arg1]
    require (arg8 * arg5 / arg3) + tokens[address(arg4)][arg1] >= arg8 * arg5 / arg3
    tokens[address(arg4)][address(arg1)] = (arg8 * arg5 / arg3) + tokens[address(arg4)][arg1]
    require owner == msg.sender
    require msg.value <= 0
    require address(arg2)
    require tokens[address(arg2)][address(arg7)] >= arg8
    require arg8 <= tokens[address(arg2)][address(arg7)]
    tokens[address(arg2)][address(arg7)] -= arg8
    require ext_code.size(address(arg2))
    call address(arg2).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), address(arg7), arg8
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(address(arg2), address(arg7), arg8, tokens[address(arg2)][address(arg7)]);
    require owner == msg.sender
    require msg.value <= 0
    require arg4
    require tokens[address(arg4)][address(arg1)] >= arg8 * arg5 / arg3
    require arg8 * arg5 / arg3 <= tokens[address(arg4)][address(arg1)]
    tokens[address(arg4)][address(arg1)] -= arg8 * arg5 / arg3
    require ext_code.size(arg4)
    call arg4.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), address(arg1), arg8 * arg5 / arg3
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(address(arg4), address(arg1), arg8 * arg5 / arg3, tokens[address(arg4)][address(arg1)]);
    require arg8 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
    require arg8 + orderFills[address(arg7)][hash] >= arg8
    orderFills[address(arg7)][hash] += arg8
    require arg3
    emit Trade(address(arg2), 0, address(arg4), arg8 * arg5 / arg3, address(arg7), arg1, arg6);
}



}
