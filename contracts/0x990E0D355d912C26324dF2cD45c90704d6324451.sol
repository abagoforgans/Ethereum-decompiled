contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


array of struct players;
address managerAddress;
uint256 stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_ab5ca8b2;
mapping of uint256 sub_25eaf6d3;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_25eaf6d3(?) {
    return sub_25eaf6d3[address(msg.sender)]
}

function decimals() {
    return decimals
}

function sub_316ee2ce(?) {
    return sub_25eaf6d3[arg1]
}

function manager() {
    return managerAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_ab5ca8b2(?) {
    return sub_ab5ca8b2
}

function getManager() {
    return managerAddress
}

function players(uint256 arg1) {
    require arg1 < players.length
    return players[arg1].field_0
}

function enter() payable {
  stop
}

function _fallback() payable {
    revert
}

function restore() {
    require msg.sender == managerAddress
    sub_ab5ca8b2 = 0
}

function sub_e377f664(?) {
    players.length++
    players[players.length].field_0 = msg.sender
}

function getAllPlayers() {
    if not players.length:
        mem[(32 * players.length) + 128] = 32
        mem[(32 * players.length) + 160] = players.length
        mem[(32 * players.length) + 192 len floor32(players.length)] = mem[128 len floor32(players.length)]
        return memory
          from (32 * players.length) + 128
           len (96 * players.length) + 64
    mem[128] = address(players.field_0)
    idx = 128
    s = 0
    while (32 * players.length) + 96 > idx:
        mem[idx + 32] = players[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * players.length) + 192 len floor32(players.length)] = mem[128 len floor32(players.length)]
    return Array(len=players.length, data=mem[128 len floor32(players.length)], mem[(32 * players.length) + floor32(players.length) + 192 len (32 * players.length) - floor32(players.length)]), 
}

function sub_1157f040(?) {
    require msg.sender == managerAddress
    if arg2 <= -1:
        if arg3 > -1:
            require arg2 <= -1
            if arg4 <= -1:
                require sub_ab5ca8b2 <= arg4
                if arg5 <= -1:
                    if arg2 * arg4 / -1 >= arg5:
                        require totalSupply >= arg5
                        require arg1
                        require balanceOf[address(msg.sender)] >= arg2 * arg4 / -1
                        require balanceOf[address(arg1)] + arg5 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg5
                        balanceOf[address(arg1)] += arg5
                        emit Transfer(arg5, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg5
                        sub_ab5ca8b2 += arg5
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = arg5 + stor2
                        stor2 += arg5
                    else:
                        require totalSupply >= arg2 * arg4 / -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= arg2 * arg4 / -1
                        require balanceOf[address(arg1)] + (arg2 * arg4 / -1) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg2 * arg4 / -1
                        balanceOf[address(arg1)] += arg2 * arg4 / -1
                        emit Transfer((arg2 * arg4 / -1), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg2 * arg4 / -1
                        sub_ab5ca8b2 += arg2 * arg4 / -1
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (arg2 * arg4 / -1) + stor2
                        stor2 += arg2 * arg4 / -1
                else:
                    if arg2 * arg4 / -1 >= -1:
                        require totalSupply >= -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= arg2 * arg4 / -1
                        require balanceOf[address(arg1)] - 1 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        balanceOf[address(arg1)]--
                        emit Transfer(-1, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        sub_ab5ca8b2--
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = stor2 - 1
                        stor2--
                    else:
                        require totalSupply >= arg2 * arg4 / -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= arg2 * arg4 / -1
                        require balanceOf[address(arg1)] + (arg2 * arg4 / -1) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg2 * arg4 / -1
                        balanceOf[address(arg1)] += arg2 * arg4 / -1
                        emit Transfer((arg2 * arg4 / -1), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg2 * arg4 / -1
                        sub_ab5ca8b2 += arg2 * arg4 / -1
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (arg2 * arg4 / -1) + stor2
                        stor2 += arg2 * arg4 / -1
            else:
                require sub_ab5ca8b2 <= -1
                if arg5 <= -1:
                    if -arg2 / -1 >= arg5:
                        require totalSupply >= arg5
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg2 / -1
                        require balanceOf[address(arg1)] + arg5 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg5
                        balanceOf[address(arg1)] += arg5
                        emit Transfer(arg5, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg5
                        sub_ab5ca8b2 += arg5
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = arg5 + stor2
                        stor2 += arg5
                    else:
                        require totalSupply >= -arg2 / -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg2 / -1
                        require balanceOf[address(arg1)] + (-arg2 / -1) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= -arg2 / -1
                        balanceOf[address(arg1)] += -arg2 / -1
                        emit Transfer((-arg2 / -1), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= -arg2 / -1
                        sub_ab5ca8b2 += -arg2 / -1
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (-arg2 / -1) + stor2
                        stor2 += -arg2 / -1
                else:
                    if -arg2 / -1 >= -1:
                        require totalSupply >= -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg2 / -1
                        require balanceOf[address(arg1)] - 1 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        balanceOf[address(arg1)]--
                        emit Transfer(-1, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        sub_ab5ca8b2--
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = stor2 - 1
                        stor2--
                    else:
                        require totalSupply >= -arg2 / -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg2 / -1
                        require balanceOf[address(arg1)] + (-arg2 / -1) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= -arg2 / -1
                        balanceOf[address(arg1)] += -arg2 / -1
                        emit Transfer((-arg2 / -1), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= -arg2 / -1
                        sub_ab5ca8b2 += -arg2 / -1
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (-arg2 / -1) + stor2
                        stor2 += -arg2 / -1
        else:
            require arg2 <= arg3
            if arg4 <= -1:
                require sub_ab5ca8b2 <= arg4
                require arg3
                if arg5 <= -1:
                    if arg2 * arg4 / arg3 >= arg5:
                        require totalSupply >= arg5
                        require arg1
                        require balanceOf[address(msg.sender)] >= arg2 * arg4 / arg3
                        require balanceOf[address(arg1)] + arg5 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg5
                        balanceOf[address(arg1)] += arg5
                        emit Transfer(arg5, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg5
                        sub_ab5ca8b2 += arg5
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = arg5 + stor2
                        stor2 += arg5
                    else:
                        require totalSupply >= arg2 * arg4 / arg3
                        require arg1
                        require balanceOf[address(msg.sender)] >= arg2 * arg4 / arg3
                        require balanceOf[address(arg1)] + (arg2 * arg4 / arg3) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg2 * arg4 / arg3
                        balanceOf[address(arg1)] += arg2 * arg4 / arg3
                        emit Transfer((arg2 * arg4 / arg3), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg2 * arg4 / arg3
                        sub_ab5ca8b2 += arg2 * arg4 / arg3
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (arg2 * arg4 / arg3) + stor2
                        stor2 += arg2 * arg4 / arg3
                else:
                    if arg2 * arg4 / arg3 >= -1:
                        require totalSupply >= -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= arg2 * arg4 / arg3
                        require balanceOf[address(arg1)] - 1 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        balanceOf[address(arg1)]--
                        emit Transfer(-1, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        sub_ab5ca8b2--
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = stor2 - 1
                        stor2--
                    else:
                        require totalSupply >= arg2 * arg4 / arg3
                        require arg1
                        require balanceOf[address(msg.sender)] >= arg2 * arg4 / arg3
                        require balanceOf[address(arg1)] + (arg2 * arg4 / arg3) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg2 * arg4 / arg3
                        balanceOf[address(arg1)] += arg2 * arg4 / arg3
                        emit Transfer((arg2 * arg4 / arg3), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg2 * arg4 / arg3
                        sub_ab5ca8b2 += arg2 * arg4 / arg3
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (arg2 * arg4 / arg3) + stor2
                        stor2 += arg2 * arg4 / arg3
            else:
                require sub_ab5ca8b2 <= -1
                require arg3
                if arg5 <= -1:
                    if -arg2 / arg3 >= arg5:
                        require totalSupply >= arg5
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg2 / arg3
                        require balanceOf[address(arg1)] + arg5 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg5
                        balanceOf[address(arg1)] += arg5
                        emit Transfer(arg5, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg5
                        sub_ab5ca8b2 += arg5
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = arg5 + stor2
                        stor2 += arg5
                    else:
                        require totalSupply >= -arg2 / arg3
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg2 / arg3
                        require balanceOf[address(arg1)] + (-arg2 / arg3) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= -arg2 / arg3
                        balanceOf[address(arg1)] += -arg2 / arg3
                        emit Transfer((-arg2 / arg3), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= -arg2 / arg3
                        sub_ab5ca8b2 += -arg2 / arg3
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (-arg2 / arg3) + stor2
                        stor2 += -arg2 / arg3
                else:
                    if -arg2 / arg3 >= -1:
                        require totalSupply >= -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg2 / arg3
                        require balanceOf[address(arg1)] - 1 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        balanceOf[address(arg1)]--
                        emit Transfer(-1, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        sub_ab5ca8b2--
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = stor2 - 1
                        stor2--
                    else:
                        require totalSupply >= -arg2 / arg3
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg2 / arg3
                        require balanceOf[address(arg1)] + (-arg2 / arg3) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= -arg2 / arg3
                        balanceOf[address(arg1)] += -arg2 / arg3
                        emit Transfer((-arg2 / arg3), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= -arg2 / arg3
                        sub_ab5ca8b2 += -arg2 / arg3
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (-arg2 / arg3) + stor2
                        stor2 += -arg2 / arg3
    else:
        if arg3 > -1:
            if arg4 <= -1:
                require sub_ab5ca8b2 <= arg4
                if arg5 <= -1:
                    if -arg4 / -1 >= arg5:
                        require totalSupply >= arg5
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg4 / -1
                        require balanceOf[address(arg1)] + arg5 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg5
                        balanceOf[address(arg1)] += arg5
                        emit Transfer(arg5, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg5
                        sub_ab5ca8b2 += arg5
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = arg5 + stor2
                        stor2 += arg5
                    else:
                        require totalSupply >= -arg4 / -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg4 / -1
                        require balanceOf[address(arg1)] + (-arg4 / -1) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= -arg4 / -1
                        balanceOf[address(arg1)] += -arg4 / -1
                        emit Transfer((-arg4 / -1), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= -arg4 / -1
                        sub_ab5ca8b2 += -arg4 / -1
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (-arg4 / -1) + stor2
                        stor2 += -arg4 / -1
                else:
                    if -arg4 / -1 >= -1:
                        require totalSupply >= -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg4 / -1
                        require balanceOf[address(arg1)] - 1 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        balanceOf[address(arg1)]--
                        emit Transfer(-1, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        sub_ab5ca8b2--
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = stor2 - 1
                        stor2--
                    else:
                        require totalSupply >= -arg4 / -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg4 / -1
                        require balanceOf[address(arg1)] + (-arg4 / -1) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= -arg4 / -1
                        balanceOf[address(arg1)] += -arg4 / -1
                        emit Transfer((-arg4 / -1), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= -arg4 / -1
                        sub_ab5ca8b2 += -arg4 / -1
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (-arg4 / -1) + stor2
                        stor2 += -arg4 / -1
            else:
                require sub_ab5ca8b2 <= -1
                if arg5 > -1:
                    require totalSupply >= 0
                    require arg1
                    require balanceOf[address(msg.sender)] >= 0
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    emit Transfer(0, arg1);
                    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                    sub_25eaf6d3[address(arg1)] = stor2
                    sub_25eaf6d3[address(arg1)] = stor2
                else:
                    if 0 < arg5:
                        require totalSupply >= 0
                        require arg1
                        require balanceOf[address(msg.sender)] >= 0
                        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        emit Transfer(0, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = stor2
                    else:
                        require totalSupply >= arg5
                        require arg1
                        require balanceOf[address(msg.sender)] >= 0
                        require balanceOf[address(arg1)] + arg5 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg5
                        balanceOf[address(arg1)] += arg5
                        emit Transfer(arg5, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg5
                        sub_ab5ca8b2 += arg5
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = arg5 + stor2
                        stor2 += arg5
        else:
            require -1 <= arg3
            if arg4 <= -1:
                require sub_ab5ca8b2 <= arg4
                require arg3
                if arg5 <= -1:
                    if -arg4 / arg3 >= arg5:
                        require totalSupply >= arg5
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg4 / arg3
                        require balanceOf[address(arg1)] + arg5 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg5
                        balanceOf[address(arg1)] += arg5
                        emit Transfer(arg5, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg5
                        sub_ab5ca8b2 += arg5
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = arg5 + stor2
                        stor2 += arg5
                    else:
                        require totalSupply >= -arg4 / arg3
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg4 / arg3
                        require balanceOf[address(arg1)] + (-arg4 / arg3) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= -arg4 / arg3
                        balanceOf[address(arg1)] += -arg4 / arg3
                        emit Transfer((-arg4 / arg3), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= -arg4 / arg3
                        sub_ab5ca8b2 += -arg4 / arg3
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (-arg4 / arg3) + stor2
                        stor2 += -arg4 / arg3
                else:
                    if -arg4 / arg3 >= -1:
                        require totalSupply >= -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg4 / arg3
                        require balanceOf[address(arg1)] - 1 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        balanceOf[address(arg1)]--
                        emit Transfer(-1, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        sub_ab5ca8b2--
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = stor2 - 1
                        stor2--
                    else:
                        require totalSupply >= -arg4 / arg3
                        require arg1
                        require balanceOf[address(msg.sender)] >= -arg4 / arg3
                        require balanceOf[address(arg1)] + (-arg4 / arg3) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= -arg4 / arg3
                        balanceOf[address(arg1)] += -arg4 / arg3
                        emit Transfer((-arg4 / arg3), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= -arg4 / arg3
                        sub_ab5ca8b2 += -arg4 / arg3
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (-arg4 / arg3) + stor2
                        stor2 += -arg4 / arg3
            else:
                require sub_ab5ca8b2 <= -1
                require arg3
                if arg5 <= -1:
                    if 1 / arg3 >= arg5:
                        require totalSupply >= arg5
                        require arg1
                        require balanceOf[address(msg.sender)] >= 1 / arg3
                        require balanceOf[address(arg1)] + arg5 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= arg5
                        balanceOf[address(arg1)] += arg5
                        emit Transfer(arg5, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= arg5
                        sub_ab5ca8b2 += arg5
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = arg5 + stor2
                        stor2 += arg5
                    else:
                        require totalSupply >= 1 / arg3
                        require arg1
                        require balanceOf[address(msg.sender)] >= 1 / arg3
                        require balanceOf[address(arg1)] + (1 / arg3) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= 1 / arg3
                        balanceOf[address(arg1)] += 1 / arg3
                        emit Transfer((1 / arg3), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= 1 / arg3
                        sub_ab5ca8b2 += 1 / arg3
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (1 / arg3) + stor2
                        stor2 += 1 / arg3
                else:
                    if 1 / arg3 >= -1:
                        require totalSupply >= -1
                        require arg1
                        require balanceOf[address(msg.sender)] >= 1 / arg3
                        require balanceOf[address(arg1)] - 1 >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        balanceOf[address(arg1)]--
                        emit Transfer(-1, arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        sub_ab5ca8b2--
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = stor2 - 1
                        stor2--
                    else:
                        require totalSupply >= 1 / arg3
                        require arg1
                        require balanceOf[address(msg.sender)] >= 1 / arg3
                        require balanceOf[address(arg1)] + (1 / arg3) >= balanceOf[address(arg1)]
                        balanceOf[address(msg.sender)] -= 1 / arg3
                        balanceOf[address(arg1)] += 1 / arg3
                        emit Transfer((1 / arg3), arg1);
                        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
                        totalSupply -= 1 / arg3
                        sub_ab5ca8b2 += 1 / arg3
                        sub_25eaf6d3[address(arg1)] = stor2
                        sub_25eaf6d3[address(arg1)] = (1 / arg3) + stor2
                        stor2 += 1 / arg3
    players.length++
    players[players.length].field_0 = arg1
}



}
