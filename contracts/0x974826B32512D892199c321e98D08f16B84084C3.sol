contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function lockBalanceOf(address arg1) {
    if stor6 == arg1:
        if block.timestamp < stor11:
            return (735 * 10^6 * 10^decimals)
        if block.timestamp < stor14:
            return (367500000 * 10^decimals)
        if block.timestamp >= stor17:
            return 0
        return (183750000 * 10^decimals)
    if stor7 == arg1:
        if block.timestamp < stor11:
            return (30625 * 3600 * 10^decimals)
        if block.timestamp < stor12:
            return (91875000 * 10^decimals)
        if block.timestamp < stor13:
            return (73500000 * 10^decimals)
        if block.timestamp < stor14:
            return (55125000 * 10^decimals)
        if block.timestamp < stor15:
            return (36750000 * 10^decimals)
        if block.timestamp >= stor16:
            return 0
        return (18375000 * 10^decimals)
    if stor8 == arg1:
        if block.timestamp < stor11:
            return (225750000 * 10^decimals)
        if block.timestamp < stor12:
            return (206937500 * 10^decimals)
        if block.timestamp < stor13:
            return (188125000 * 10^decimals)
        if block.timestamp < stor14:
            return (169312500 * 10^decimals)
        if block.timestamp < stor15:
            return (150500000 * 10^decimals)
        if block.timestamp < stor16:
            return (131687500 * 10^decimals)
        if block.timestamp < stor17:
            return (112875000 * 10^decimals)
        if block.timestamp < stor18:
            return (94062500 * 10^decimals)
        if block.timestamp < stor19:
            return (75250000 * 10^decimals)
        if block.timestamp < stor20:
            return (56437500 * 10^decimals)
        if block.timestamp < stor21:
            return (37625000 * 10^decimals)
        if block.timestamp >= stor22:
            return 0
        return (18812500 * 10^decimals)
    if stor9 == arg1:
        if block.timestamp >= stor11:
            return 0
        return (840 * 10^6 * 10^decimals)
    if stor10 != arg1:
        return 0
    if block.timestamp < stor11:
        return (52500 * 3600 * 10^decimals)
    if block.timestamp < stor12:
        return (48125 * 3600 * 10^decimals)
    if block.timestamp < stor13:
        return (43750 * 3600 * 10^decimals)
    if block.timestamp < stor14:
        return (39375 * 3600 * 10^decimals)
    if block.timestamp < stor15:
        return (35000 * 3600 * 10^decimals)
    if block.timestamp < stor16:
        return (30625 * 3600 * 10^decimals)
    if block.timestamp < stor17:
        return (26250 * 3600 * 10^decimals)
    if block.timestamp < stor18:
        return (21875 * 3600 * 10^decimals)
    if block.timestamp < stor19:
        return (17500 * 3600 * 10^decimals)
    if block.timestamp < stor20:
        return (13125 * 3600 * 10^decimals)
    if block.timestamp < stor21:
        return (8750 * 3600 * 10^decimals)
    if block.timestamp >= stor22:
        return 0
    return (4375 * 3600 * 10^decimals)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    if stor6 == arg1:
        if block.timestamp < stor11:
            require balanceOf[address(arg1)] - (735 * 10^6 * 10^decimals) >= arg3
        else:
            if block.timestamp < stor14:
                require balanceOf[address(arg1)] - (367500000 * 10^decimals) >= arg3
            else:
                if block.timestamp >= stor17:
                    require balanceOf[address(arg1)] >= arg3
                else:
                    require balanceOf[address(arg1)] - (183750000 * 10^decimals) >= arg3
    else:
        if stor7 == arg1:
            if block.timestamp < stor11:
                require balanceOf[address(arg1)] - (30625 * 3600 * 10^decimals) >= arg3
            else:
                if block.timestamp < stor12:
                    require balanceOf[address(arg1)] - (91875000 * 10^decimals) >= arg3
                else:
                    if block.timestamp < stor13:
                        require balanceOf[address(arg1)] - (73500000 * 10^decimals) >= arg3
                    else:
                        if block.timestamp < stor14:
                            require balanceOf[address(arg1)] - (55125000 * 10^decimals) >= arg3
                        else:
                            if block.timestamp < stor15:
                                require balanceOf[address(arg1)] - (36750000 * 10^decimals) >= arg3
                            else:
                                if block.timestamp >= stor16:
                                    require balanceOf[address(arg1)] >= arg3
                                else:
                                    require balanceOf[address(arg1)] - (18375000 * 10^decimals) >= arg3
        else:
            if stor8 == arg1:
                if block.timestamp < stor11:
                    require balanceOf[address(arg1)] - (225750000 * 10^decimals) >= arg3
                else:
                    if block.timestamp < stor12:
                        require balanceOf[address(arg1)] - (206937500 * 10^decimals) >= arg3
                    else:
                        if block.timestamp < stor13:
                            require balanceOf[address(arg1)] - (188125000 * 10^decimals) >= arg3
                        else:
                            if block.timestamp < stor14:
                                require balanceOf[address(arg1)] - (169312500 * 10^decimals) >= arg3
                            else:
                                if block.timestamp < stor15:
                                    require balanceOf[address(arg1)] - (150500000 * 10^decimals) >= arg3
                                else:
                                    if block.timestamp < stor16:
                                        require balanceOf[address(arg1)] - (131687500 * 10^decimals) >= arg3
                                    else:
                                        if block.timestamp < stor17:
                                            require balanceOf[address(arg1)] - (112875000 * 10^decimals) >= arg3
                                        else:
                                            if block.timestamp < stor18:
                                                require balanceOf[address(arg1)] - (94062500 * 10^decimals) >= arg3
                                            else:
                                                if block.timestamp < stor19:
                                                    require balanceOf[address(arg1)] - (75250000 * 10^decimals) >= arg3
                                                else:
                                                    if block.timestamp < stor20:
                                                        require balanceOf[address(arg1)] - (56437500 * 10^decimals) >= arg3
                                                    else:
                                                        if block.timestamp < stor21:
                                                            require balanceOf[address(arg1)] - (37625000 * 10^decimals) >= arg3
                                                        else:
                                                            if block.timestamp >= stor22:
                                                                require balanceOf[address(arg1)] >= arg3
                                                            else:
                                                                require balanceOf[address(arg1)] - (18812500 * 10^decimals) >= arg3
            else:
                if stor9 == arg1:
                    if block.timestamp >= stor11:
                        require balanceOf[address(arg1)] >= arg3
                    else:
                        require balanceOf[address(arg1)] - (840 * 10^6 * 10^decimals) >= arg3
                else:
                    if stor10 != arg1:
                        require balanceOf[address(arg1)] >= arg3
                    else:
                        if block.timestamp < stor11:
                            require balanceOf[address(arg1)] - (52500 * 3600 * 10^decimals) >= arg3
                        else:
                            if block.timestamp < stor12:
                                require balanceOf[address(arg1)] - (48125 * 3600 * 10^decimals) >= arg3
                            else:
                                if block.timestamp < stor13:
                                    require balanceOf[address(arg1)] - (43750 * 3600 * 10^decimals) >= arg3
                                else:
                                    if block.timestamp < stor14:
                                        require balanceOf[address(arg1)] - (39375 * 3600 * 10^decimals) >= arg3
                                    else:
                                        if block.timestamp < stor15:
                                            require balanceOf[address(arg1)] - (35000 * 3600 * 10^decimals) >= arg3
                                        else:
                                            if block.timestamp < stor16:
                                                require balanceOf[address(arg1)] - (30625 * 3600 * 10^decimals) >= arg3
                                            else:
                                                if block.timestamp < stor17:
                                                    require balanceOf[address(arg1)] - (26250 * 3600 * 10^decimals) >= arg3
                                                else:
                                                    if block.timestamp < stor18:
                                                        require balanceOf[address(arg1)] - (21875 * 3600 * 10^decimals) >= arg3
                                                    else:
                                                        if block.timestamp < stor19:
                                                            require balanceOf[address(arg1)] - (17500 * 3600 * 10^decimals) >= arg3
                                                        else:
                                                            if block.timestamp < stor20:
                                                                require balanceOf[address(arg1)] - (13125 * 3600 * 10^decimals) >= arg3
                                                            else:
                                                                if block.timestamp < stor21:
                                                                    require balanceOf[address(arg1)] - (8750 * 3600 * 10^decimals) >= arg3
                                                                else:
                                                                    if block.timestamp >= stor22:
                                                                        require balanceOf[address(arg1)] >= arg3
                                                                    else:
                                                                        require balanceOf[address(arg1)] - (4375 * 3600 * 10^decimals) >= arg3
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if stor6 == msg.sender:
        if block.timestamp < stor11:
            require balanceOf[address(msg.sender)] - (735 * 10^6 * 10^decimals) >= arg2
        else:
            if block.timestamp < stor14:
                require balanceOf[address(msg.sender)] - (367500000 * 10^decimals) >= arg2
            else:
                if block.timestamp >= stor17:
                    require balanceOf[address(msg.sender)] >= arg2
                else:
                    require balanceOf[address(msg.sender)] - (183750000 * 10^decimals) >= arg2
    else:
        if stor7 == msg.sender:
            if block.timestamp < stor11:
                require balanceOf[address(msg.sender)] - (30625 * 3600 * 10^decimals) >= arg2
            else:
                if block.timestamp < stor12:
                    require balanceOf[address(msg.sender)] - (91875000 * 10^decimals) >= arg2
                else:
                    if block.timestamp < stor13:
                        require balanceOf[address(msg.sender)] - (73500000 * 10^decimals) >= arg2
                    else:
                        if block.timestamp < stor14:
                            require balanceOf[address(msg.sender)] - (55125000 * 10^decimals) >= arg2
                        else:
                            if block.timestamp < stor15:
                                require balanceOf[address(msg.sender)] - (36750000 * 10^decimals) >= arg2
                            else:
                                if block.timestamp >= stor16:
                                    require balanceOf[address(msg.sender)] >= arg2
                                else:
                                    require balanceOf[address(msg.sender)] - (18375000 * 10^decimals) >= arg2
        else:
            if stor8 == msg.sender:
                if block.timestamp < stor11:
                    require balanceOf[address(msg.sender)] - (225750000 * 10^decimals) >= arg2
                else:
                    if block.timestamp < stor12:
                        require balanceOf[address(msg.sender)] - (206937500 * 10^decimals) >= arg2
                    else:
                        if block.timestamp < stor13:
                            require balanceOf[address(msg.sender)] - (188125000 * 10^decimals) >= arg2
                        else:
                            if block.timestamp < stor14:
                                require balanceOf[address(msg.sender)] - (169312500 * 10^decimals) >= arg2
                            else:
                                if block.timestamp < stor15:
                                    require balanceOf[address(msg.sender)] - (150500000 * 10^decimals) >= arg2
                                else:
                                    if block.timestamp < stor16:
                                        require balanceOf[address(msg.sender)] - (131687500 * 10^decimals) >= arg2
                                    else:
                                        if block.timestamp < stor17:
                                            require balanceOf[address(msg.sender)] - (112875000 * 10^decimals) >= arg2
                                        else:
                                            if block.timestamp < stor18:
                                                require balanceOf[address(msg.sender)] - (94062500 * 10^decimals) >= arg2
                                            else:
                                                if block.timestamp < stor19:
                                                    require balanceOf[address(msg.sender)] - (75250000 * 10^decimals) >= arg2
                                                else:
                                                    if block.timestamp < stor20:
                                                        require balanceOf[address(msg.sender)] - (56437500 * 10^decimals) >= arg2
                                                    else:
                                                        if block.timestamp < stor21:
                                                            require balanceOf[address(msg.sender)] - (37625000 * 10^decimals) >= arg2
                                                        else:
                                                            if block.timestamp >= stor22:
                                                                require balanceOf[address(msg.sender)] >= arg2
                                                            else:
                                                                require balanceOf[address(msg.sender)] - (18812500 * 10^decimals) >= arg2
            else:
                if stor9 == msg.sender:
                    if block.timestamp >= stor11:
                        require balanceOf[address(msg.sender)] >= arg2
                    else:
                        require balanceOf[address(msg.sender)] - (840 * 10^6 * 10^decimals) >= arg2
                else:
                    if stor10 != msg.sender:
                        require balanceOf[address(msg.sender)] >= arg2
                    else:
                        if block.timestamp < stor11:
                            require balanceOf[address(msg.sender)] - (52500 * 3600 * 10^decimals) >= arg2
                        else:
                            if block.timestamp < stor12:
                                require balanceOf[address(msg.sender)] - (48125 * 3600 * 10^decimals) >= arg2
                            else:
                                if block.timestamp < stor13:
                                    require balanceOf[address(msg.sender)] - (43750 * 3600 * 10^decimals) >= arg2
                                else:
                                    if block.timestamp < stor14:
                                        require balanceOf[address(msg.sender)] - (39375 * 3600 * 10^decimals) >= arg2
                                    else:
                                        if block.timestamp < stor15:
                                            require balanceOf[address(msg.sender)] - (35000 * 3600 * 10^decimals) >= arg2
                                        else:
                                            if block.timestamp < stor16:
                                                require balanceOf[address(msg.sender)] - (30625 * 3600 * 10^decimals) >= arg2
                                            else:
                                                if block.timestamp < stor17:
                                                    require balanceOf[address(msg.sender)] - (26250 * 3600 * 10^decimals) >= arg2
                                                else:
                                                    if block.timestamp < stor18:
                                                        require balanceOf[address(msg.sender)] - (21875 * 3600 * 10^decimals) >= arg2
                                                    else:
                                                        if block.timestamp < stor19:
                                                            require balanceOf[address(msg.sender)] - (17500 * 3600 * 10^decimals) >= arg2
                                                        else:
                                                            if block.timestamp < stor20:
                                                                require balanceOf[address(msg.sender)] - (13125 * 3600 * 10^decimals) >= arg2
                                                            else:
                                                                if block.timestamp < stor21:
                                                                    require balanceOf[address(msg.sender)] - (8750 * 3600 * 10^decimals) >= arg2
                                                                else:
                                                                    if block.timestamp >= stor22:
                                                                        require balanceOf[address(msg.sender)] >= arg2
                                                                    else:
                                                                        require balanceOf[address(msg.sender)] - (4375 * 3600 * 10^decimals) >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}



}
