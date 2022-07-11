contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 quantity;
mapping of uint256 stor7;
address owner;
uint256 startTime;
uint256 stor12;

function name() {
    return name[0 len name.length]
}

function quantity() {
    return quantity
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function sub_3526cd98(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not contract owner'
    if 390000000 * 10^18 <= quantity:
        revert with 0, 'Release stop'
    if not quantity:
        require arg1
        require 30000000 * 10^18 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= 30000000 * 10^18
        require balanceOf[address(arg1)] + 30000000 * 10^18 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 30000000 * 10^18
        emit Transfer(30000000 * 10^18, msg.sender, arg1);
        quantity = 30000000 * 10^18
        stor7[stor8] -= 30000000 * 10^18
        stor7[address(arg1)] = 30000000 * 10^18
    if block.timestamp > startTime:
        stor12 = block.timestamp - startTime
        idx = 1
        s = 0
        t = 100
        while idx <= 50:
            if idx > 12:
                if idx > 24:
                    if idx > 36:
                        if idx > 48:
                            if 720 * 24 * 3600 * idx <= stor12:
                                if s:
                                    idx = idx + 1
                                    s = 103 * s / 100
                                    t = 103
                                    continue 
                                else:
                                    idx = idx + 1
                                    s = 30900000 * 10^18
                                    t = 103
                                    continue 
                            else:
                                t = 1
                                while t <= 30:
                                    if stor12 + (-2592000 * idx) + (720 * 24 * 3600) >= 24 * 3600 * t:
                                        t = t + 1
                                        continue 
                                    else:
                                        if idx != 1:
                                            if 390000000 * 10^18 < s + ((103 * s / 100 * t) - (s * t) / 30):
                                                if -quantity + 390000000 * 10^18 <= 0:
                                                else:
                                                    quantity = 390000000 * 10^18
                                                    require arg1
                                                    require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                                    require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                                    emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                                    stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                                    stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                            else:
                                                quantity = s + ((103 * s / 100 * t) - (s * t) / 30)
                                                if s + ((103 * s / 100 * t) - (s * t) / 30) - quantity <= 0:
                                                else:
                                                    require arg1
                                                    require s + ((103 * s / 100 * t) - (s * t) / 30) - quantity <= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - s - ((103 * s / 100 * t) - (s * t) / 30) + quantity
                                                    require balanceOf[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity >= balanceOf[address(arg1)]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity
                                                    emit Transfer((s + ((103 * s / 100 * t) - (s * t) / 30) - quantity), msg.sender, arg1);
                                                    require s + ((103 * s / 100 * t) - (s * t) / 30) - quantity <= stor7[stor8]
                                                    stor7[stor8] = stor7[stor8] - s - ((103 * s / 100 * t) - (s * t) / 30) + quantity
                                                    require stor7[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity >= stor7[address(arg1)]
                                                    stor7[address(arg1)] = stor7[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity
                                        else:
                                            if stor12 <= 0:
                                                quantity = 30000000 * 10^18
                                                if -quantity + 30000000 * 10^18 <= 0:
                                                else:
                                                    require arg1
                                                    require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                                    require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                                    emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                                    require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                    stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                                    require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                    stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                            else:
                                                if not t:
                                                    quantity = 30000000 * 10^18
                                                    if -quantity + 30000000 * 10^18 <= 0:
                                                    else:
                                                        require arg1
                                                        require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                                        require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                                        emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                                        require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                        stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                                        require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                        stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                                else:
                                                    if 390000000 * 10^18 < (250 * 10^18 * 3600 * t / 30) + 30000000 * 10^18:
                                                        if -quantity + 390000000 * 10^18 <= 0:
                                                        else:
                                                            quantity = 390000000 * 10^18
                                                            require arg1
                                                            require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                                            require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                                            emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                                            stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                                    else:
                                                        quantity = (250 * 10^18 * 3600 * t / 30) + 30000000 * 10^18
                                                        if (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= 0:
                                                        else:
                                                            require arg1
                                                            require (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -(250 * 10^18 * 3600 * t / 30) + quantity - 30000000 * 10^18
                                                            require balanceOf[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18
                                                            emit Transfer(((250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18), msg.sender, arg1);
                                                            require (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                            stor7[stor8] = stor7[stor8] + -(250 * 10^18 * 3600 * t / 30) + quantity - 30000000 * 10^18
                                                            require stor7[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                            stor7[address(arg1)] = stor7[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18
                                if idx != 1:
                                    if 390000000 * 10^18 < s:
                                        if -quantity + 390000000 * 10^18 <= 0:
                                        else:
                                            quantity = 390000000 * 10^18
                                            require arg1
                                            require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                            require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                            emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                            stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                    else:
                                        quantity = s
                                        if s - quantity <= 0:
                                        else:
                                            require arg1
                                            require s - quantity <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - s + quantity
                                            require balanceOf[address(arg1)] + s - quantity >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + s - quantity
                                            emit Transfer((s - quantity), msg.sender, arg1);
                                            require s - quantity <= stor7[stor8]
                                            stor7[stor8] = stor7[stor8] - s + quantity
                                            require stor7[address(arg1)] + s - quantity >= stor7[address(arg1)]
                                            stor7[address(arg1)] = stor7[address(arg1)] + s - quantity
                                else:
                                    if stor12 <= 0:
                                        quantity = 30000000 * 10^18
                                        if -quantity + 30000000 * 10^18 <= 0:
                                        else:
                                            require arg1
                                            require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                            require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                            emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                            require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                            stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                            require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                    else:
                                        quantity = 30000000 * 10^18
                                        if -quantity + 30000000 * 10^18 <= 0:
                                        else:
                                            require arg1
                                            require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                            require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                            emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                            require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                            stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                            require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                        else:
                            if 720 * 24 * 3600 * idx <= stor12:
                                if s:
                                    idx = idx + 1
                                    s = 103 * s / 100
                                    t = 103
                                    continue 
                                else:
                                    idx = idx + 1
                                    s = 30900000 * 10^18
                                    t = 103
                                    continue 
                            else:
                                t = 1
                                while t <= 30:
                                    if stor12 + (-2592000 * idx) + (720 * 24 * 3600) >= 24 * 3600 * t:
                                        t = t + 1
                                        continue 
                                    else:
                                        if idx != 1:
                                            if 390000000 * 10^18 < s + ((103 * s / 100 * t) - (s * t) / 30):
                                                if -quantity + 390000000 * 10^18 <= 0:
                                                else:
                                                    quantity = 390000000 * 10^18
                                                    require arg1
                                                    require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                                    require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                                    emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                                    stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                                    stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                            else:
                                                quantity = s + ((103 * s / 100 * t) - (s * t) / 30)
                                                if s + ((103 * s / 100 * t) - (s * t) / 30) - quantity <= 0:
                                                else:
                                                    require arg1
                                                    require s + ((103 * s / 100 * t) - (s * t) / 30) - quantity <= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - s - ((103 * s / 100 * t) - (s * t) / 30) + quantity
                                                    require balanceOf[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity >= balanceOf[address(arg1)]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity
                                                    emit Transfer((s + ((103 * s / 100 * t) - (s * t) / 30) - quantity), msg.sender, arg1);
                                                    require s + ((103 * s / 100 * t) - (s * t) / 30) - quantity <= stor7[stor8]
                                                    stor7[stor8] = stor7[stor8] - s - ((103 * s / 100 * t) - (s * t) / 30) + quantity
                                                    require stor7[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity >= stor7[address(arg1)]
                                                    stor7[address(arg1)] = stor7[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity
                                        else:
                                            if stor12 <= 0:
                                                quantity = 30000000 * 10^18
                                                if -quantity + 30000000 * 10^18 <= 0:
                                                else:
                                                    require arg1
                                                    require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                                    require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                                    emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                                    require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                    stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                                    require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                    stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                            else:
                                                if not t:
                                                    quantity = 30000000 * 10^18
                                                    if -quantity + 30000000 * 10^18 <= 0:
                                                    else:
                                                        require arg1
                                                        require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                                        require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                                        emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                                        require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                        stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                                        require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                        stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                                else:
                                                    if 390000000 * 10^18 < (250 * 10^18 * 3600 * t / 30) + 30000000 * 10^18:
                                                        if -quantity + 390000000 * 10^18 <= 0:
                                                        else:
                                                            quantity = 390000000 * 10^18
                                                            require arg1
                                                            require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                                            require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                                            emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                                            stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                                    else:
                                                        quantity = (250 * 10^18 * 3600 * t / 30) + 30000000 * 10^18
                                                        if (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= 0:
                                                        else:
                                                            require arg1
                                                            require (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -(250 * 10^18 * 3600 * t / 30) + quantity - 30000000 * 10^18
                                                            require balanceOf[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18
                                                            emit Transfer(((250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18), msg.sender, arg1);
                                                            require (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                            stor7[stor8] = stor7[stor8] + -(250 * 10^18 * 3600 * t / 30) + quantity - 30000000 * 10^18
                                                            require stor7[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                            stor7[address(arg1)] = stor7[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18
                                if idx != 1:
                                    if 390000000 * 10^18 < s:
                                        if -quantity + 390000000 * 10^18 <= 0:
                                        else:
                                            quantity = 390000000 * 10^18
                                            require arg1
                                            require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                            require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                            emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                            stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                    else:
                                        quantity = s
                                        if s - quantity <= 0:
                                        else:
                                            require arg1
                                            require s - quantity <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - s + quantity
                                            require balanceOf[address(arg1)] + s - quantity >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + s - quantity
                                            emit Transfer((s - quantity), msg.sender, arg1);
                                            require s - quantity <= stor7[stor8]
                                            stor7[stor8] = stor7[stor8] - s + quantity
                                            require stor7[address(arg1)] + s - quantity >= stor7[address(arg1)]
                                            stor7[address(arg1)] = stor7[address(arg1)] + s - quantity
                                else:
                                    if stor12 <= 0:
                                        quantity = 30000000 * 10^18
                                        if -quantity + 30000000 * 10^18 <= 0:
                                        else:
                                            require arg1
                                            require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                            require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                            emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                            require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                            stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                            require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                    else:
                                        quantity = 30000000 * 10^18
                                        if -quantity + 30000000 * 10^18 <= 0:
                                        else:
                                            require arg1
                                            require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                            require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                            emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                            require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                            stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                            require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                    else:
                        if 720 * 24 * 3600 * idx <= stor12:
                            if s:
                                idx = idx + 1
                                s = 103 * s / 100
                                t = 103
                                continue 
                            else:
                                idx = idx + 1
                                s = 30900000 * 10^18
                                t = 103
                                continue 
                        else:
                            t = 1
                            while t <= 30:
                                if stor12 + (-2592000 * idx) + (720 * 24 * 3600) >= 24 * 3600 * t:
                                    t = t + 1
                                    continue 
                                else:
                                    if idx != 1:
                                        if 390000000 * 10^18 < s + ((103 * s / 100 * t) - (s * t) / 30):
                                            if -quantity + 390000000 * 10^18 <= 0:
                                            else:
                                                quantity = 390000000 * 10^18
                                                require arg1
                                                require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                                require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                                emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                                stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                                stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                        else:
                                            quantity = s + ((103 * s / 100 * t) - (s * t) / 30)
                                            if s + ((103 * s / 100 * t) - (s * t) / 30) - quantity <= 0:
                                            else:
                                                require arg1
                                                require s + ((103 * s / 100 * t) - (s * t) / 30) - quantity <= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - s - ((103 * s / 100 * t) - (s * t) / 30) + quantity
                                                require balanceOf[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity >= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity
                                                emit Transfer((s + ((103 * s / 100 * t) - (s * t) / 30) - quantity), msg.sender, arg1);
                                                require s + ((103 * s / 100 * t) - (s * t) / 30) - quantity <= stor7[stor8]
                                                stor7[stor8] = stor7[stor8] - s - ((103 * s / 100 * t) - (s * t) / 30) + quantity
                                                require stor7[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity >= stor7[address(arg1)]
                                                stor7[address(arg1)] = stor7[address(arg1)] + s + ((103 * s / 100 * t) - (s * t) / 30) - quantity
                                    else:
                                        if stor12 <= 0:
                                            quantity = 30000000 * 10^18
                                            if -quantity + 30000000 * 10^18 <= 0:
                                            else:
                                                require arg1
                                                require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                                require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                                emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                                require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                                require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                        else:
                                            if not t:
                                                quantity = 30000000 * 10^18
                                                if -quantity + 30000000 * 10^18 <= 0:
                                                else:
                                                    require arg1
                                                    require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                                    require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                                    emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                                    require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                    stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                                    require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                    stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                            else:
                                                if 390000000 * 10^18 < (250 * 10^18 * 3600 * t / 30) + 30000000 * 10^18:
                                                    if -quantity + 390000000 * 10^18 <= 0:
                                                    else:
                                                        quantity = 390000000 * 10^18
                                                        require arg1
                                                        require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                                        require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                                        emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                                        stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                                        stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                                else:
                                                    quantity = (250 * 10^18 * 3600 * t / 30) + 30000000 * 10^18
                                                    if (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= 0:
                                                    else:
                                                        require arg1
                                                        require (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -(250 * 10^18 * 3600 * t / 30) + quantity - 30000000 * 10^18
                                                        require balanceOf[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18
                                                        emit Transfer(((250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18), msg.sender, arg1);
                                                        require (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                        stor7[stor8] = stor7[stor8] + -(250 * 10^18 * 3600 * t / 30) + quantity - 30000000 * 10^18
                                                        require stor7[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                        stor7[address(arg1)] = stor7[address(arg1)] + (250 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18
                            if idx != 1:
                                if 390000000 * 10^18 < s:
                                    if -quantity + 390000000 * 10^18 <= 0:
                                    else:
                                        quantity = 390000000 * 10^18
                                        require arg1
                                        require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                        require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                        emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                        stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                        stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                else:
                                    quantity = s
                                    if s - quantity <= 0:
                                    else:
                                        require arg1
                                        require s - quantity <= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - s + quantity
                                        require balanceOf[address(arg1)] + s - quantity >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + s - quantity
                                        emit Transfer((s - quantity), msg.sender, arg1);
                                        require s - quantity <= stor7[stor8]
                                        stor7[stor8] = stor7[stor8] - s + quantity
                                        require stor7[address(arg1)] + s - quantity >= stor7[address(arg1)]
                                        stor7[address(arg1)] = stor7[address(arg1)] + s - quantity
                            else:
                                if stor12 <= 0:
                                    quantity = 30000000 * 10^18
                                    if -quantity + 30000000 * 10^18 <= 0:
                                    else:
                                        require arg1
                                        require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                        require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                        emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                        require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                        stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                        require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                        stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                else:
                                    quantity = 30000000 * 10^18
                                    if -quantity + 30000000 * 10^18 <= 0:
                                    else:
                                        require arg1
                                        require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                        require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                        emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                        require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                        stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                        require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                        stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                else:
                    if 720 * 24 * 3600 * idx <= stor12:
                        if s:
                            idx = idx + 1
                            s = 106 * s / 100
                            t = 106
                            continue 
                        else:
                            idx = idx + 1
                            s = 31800000 * 10^18
                            t = 106
                            continue 
                    else:
                        t = 1
                        while t <= 30:
                            if stor12 + (-2592000 * idx) + (720 * 24 * 3600) >= 24 * 3600 * t:
                                t = t + 1
                                continue 
                            else:
                                if idx != 1:
                                    if 390000000 * 10^18 < s + ((106 * s / 100 * t) - (s * t) / 30):
                                        if -quantity + 390000000 * 10^18 <= 0:
                                        else:
                                            quantity = 390000000 * 10^18
                                            require arg1
                                            require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                            require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                            emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                            stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                    else:
                                        quantity = s + ((106 * s / 100 * t) - (s * t) / 30)
                                        if s + ((106 * s / 100 * t) - (s * t) / 30) - quantity <= 0:
                                        else:
                                            require arg1
                                            require s + ((106 * s / 100 * t) - (s * t) / 30) - quantity <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - s - ((106 * s / 100 * t) - (s * t) / 30) + quantity
                                            require balanceOf[address(arg1)] + s + ((106 * s / 100 * t) - (s * t) / 30) - quantity >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + s + ((106 * s / 100 * t) - (s * t) / 30) - quantity
                                            emit Transfer((s + ((106 * s / 100 * t) - (s * t) / 30) - quantity), msg.sender, arg1);
                                            require s + ((106 * s / 100 * t) - (s * t) / 30) - quantity <= stor7[stor8]
                                            stor7[stor8] = stor7[stor8] - s - ((106 * s / 100 * t) - (s * t) / 30) + quantity
                                            require stor7[address(arg1)] + s + ((106 * s / 100 * t) - (s * t) / 30) - quantity >= stor7[address(arg1)]
                                            stor7[address(arg1)] = stor7[address(arg1)] + s + ((106 * s / 100 * t) - (s * t) / 30) - quantity
                                else:
                                    if stor12 <= 0:
                                        quantity = 30000000 * 10^18
                                        if -quantity + 30000000 * 10^18 <= 0:
                                        else:
                                            require arg1
                                            require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                            require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                            emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                            require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                            stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                            require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                    else:
                                        if not t:
                                            quantity = 30000000 * 10^18
                                            if -quantity + 30000000 * 10^18 <= 0:
                                            else:
                                                require arg1
                                                require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                                require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                                emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                                require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                                require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                        else:
                                            if 390000000 * 10^18 < (500 * 10^18 * 3600 * t / 30) + 30000000 * 10^18:
                                                if -quantity + 390000000 * 10^18 <= 0:
                                                else:
                                                    quantity = 390000000 * 10^18
                                                    require arg1
                                                    require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                                    require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                                    emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                                    stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                                    stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                            else:
                                                quantity = (500 * 10^18 * 3600 * t / 30) + 30000000 * 10^18
                                                if (500 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= 0:
                                                else:
                                                    require arg1
                                                    require (500 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -(500 * 10^18 * 3600 * t / 30) + quantity - 30000000 * 10^18
                                                    require balanceOf[address(arg1)] + (500 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (500 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18
                                                    emit Transfer(((500 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18), msg.sender, arg1);
                                                    require (500 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                    stor7[stor8] = stor7[stor8] + -(500 * 10^18 * 3600 * t / 30) + quantity - 30000000 * 10^18
                                                    require stor7[address(arg1)] + (500 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                    stor7[address(arg1)] = stor7[address(arg1)] + (500 * 10^18 * 3600 * t / 30) + -quantity + 30000000 * 10^18
                        if idx != 1:
                            if 390000000 * 10^18 < s:
                                if -quantity + 390000000 * 10^18 <= 0:
                                else:
                                    quantity = 390000000 * 10^18
                                    require arg1
                                    require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                    require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                    emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                    stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                    stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                            else:
                                quantity = s
                                if s - quantity <= 0:
                                else:
                                    require arg1
                                    require s - quantity <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - s + quantity
                                    require balanceOf[address(arg1)] + s - quantity >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + s - quantity
                                    emit Transfer((s - quantity), msg.sender, arg1);
                                    require s - quantity <= stor7[stor8]
                                    stor7[stor8] = stor7[stor8] - s + quantity
                                    require stor7[address(arg1)] + s - quantity >= stor7[address(arg1)]
                                    stor7[address(arg1)] = stor7[address(arg1)] + s - quantity
                        else:
                            if stor12 <= 0:
                                quantity = 30000000 * 10^18
                                if -quantity + 30000000 * 10^18 <= 0:
                                else:
                                    require arg1
                                    require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                    require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                    emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                    require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                    stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                    require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                    stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                            else:
                                quantity = 30000000 * 10^18
                                if -quantity + 30000000 * 10^18 <= 0:
                                else:
                                    require arg1
                                    require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                    require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                    emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                    require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                    stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                    require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                    stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
            else:
                if 720 * 24 * 3600 * idx <= stor12:
                    if s:
                        idx = idx + 1
                        s = 110 * s / 100
                        t = 110
                        continue 
                    else:
                        idx = idx + 1
                        s = 33000000 * 10^18
                        t = 110
                        continue 
                else:
                    t = 1
                    while t <= 30:
                        if stor12 + (-2592000 * idx) + (720 * 24 * 3600) >= 24 * 3600 * t:
                            t = t + 1
                            continue 
                        else:
                            if idx != 1:
                                if 390000000 * 10^18 < s + ((110 * s / 100 * t) - (s * t) / 30):
                                    if -quantity + 390000000 * 10^18 <= 0:
                                    else:
                                        quantity = 390000000 * 10^18
                                        require arg1
                                        require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                        require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                        emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                        stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                        stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                else:
                                    quantity = s + ((110 * s / 100 * t) - (s * t) / 30)
                                    if s + ((110 * s / 100 * t) - (s * t) / 30) - quantity <= 0:
                                    else:
                                        require arg1
                                        require s + ((110 * s / 100 * t) - (s * t) / 30) - quantity <= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - s - ((110 * s / 100 * t) - (s * t) / 30) + quantity
                                        require balanceOf[address(arg1)] + s + ((110 * s / 100 * t) - (s * t) / 30) - quantity >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + s + ((110 * s / 100 * t) - (s * t) / 30) - quantity
                                        emit Transfer((s + ((110 * s / 100 * t) - (s * t) / 30) - quantity), msg.sender, arg1);
                                        require s + ((110 * s / 100 * t) - (s * t) / 30) - quantity <= stor7[stor8]
                                        stor7[stor8] = stor7[stor8] - s - ((110 * s / 100 * t) - (s * t) / 30) + quantity
                                        require stor7[address(arg1)] + s + ((110 * s / 100 * t) - (s * t) / 30) - quantity >= stor7[address(arg1)]
                                        stor7[address(arg1)] = stor7[address(arg1)] + s + ((110 * s / 100 * t) - (s * t) / 30) - quantity
                            else:
                                if stor12 <= 0:
                                    quantity = 30000000 * 10^18
                                    if -quantity + 30000000 * 10^18 <= 0:
                                    else:
                                        require arg1
                                        require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                        require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                        emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                        require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                        stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                        require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                        stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                else:
                                    if not t:
                                        quantity = 30000000 * 10^18
                                        if -quantity + 30000000 * 10^18 <= 0:
                                        else:
                                            require arg1
                                            require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                            require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                            emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                            require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                            stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                            require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                            stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                                    else:
                                        if 390000000 * 10^18 < (3000000 * 10^18 * t / 30) + 30000000 * 10^18:
                                            if -quantity + 390000000 * 10^18 <= 0:
                                            else:
                                                quantity = 390000000 * 10^18
                                                require arg1
                                                require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                                require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                                emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                                stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                                stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                                        else:
                                            quantity = (3000000 * 10^18 * t / 30) + 30000000 * 10^18
                                            if (3000000 * 10^18 * t / 30) + -quantity + 30000000 * 10^18 <= 0:
                                            else:
                                                require arg1
                                                require (3000000 * 10^18 * t / 30) + -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -(3000000 * 10^18 * t / 30) + quantity - 30000000 * 10^18
                                                require balanceOf[address(arg1)] + (3000000 * 10^18 * t / 30) + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000000 * 10^18 * t / 30) + -quantity + 30000000 * 10^18
                                                emit Transfer(((3000000 * 10^18 * t / 30) + -quantity + 30000000 * 10^18), msg.sender, arg1);
                                                require (3000000 * 10^18 * t / 30) + -quantity + 30000000 * 10^18 <= stor7[stor8]
                                                stor7[stor8] = stor7[stor8] + -(3000000 * 10^18 * t / 30) + quantity - 30000000 * 10^18
                                                require stor7[address(arg1)] + (3000000 * 10^18 * t / 30) + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                                stor7[address(arg1)] = stor7[address(arg1)] + (3000000 * 10^18 * t / 30) + -quantity + 30000000 * 10^18
                    if idx != 1:
                        if 390000000 * 10^18 < s:
                            if -quantity + 390000000 * 10^18 <= 0:
                            else:
                                quantity = 390000000 * 10^18
                                require arg1
                                require -quantity + 390000000 * 10^18 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 390000000 * 10^18
                                require balanceOf[address(arg1)] + -quantity + 390000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 390000000 * 10^18
                                emit Transfer((-quantity + 390000000 * 10^18), msg.sender, arg1);
                                stor7[stor8] = stor7[stor8] + quantity - 390000000 * 10^18
                                stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 390000000 * 10^18
                        else:
                            quantity = s
                            if s - quantity <= 0:
                            else:
                                require arg1
                                require s - quantity <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - s + quantity
                                require balanceOf[address(arg1)] + s - quantity >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + s - quantity
                                emit Transfer((s - quantity), msg.sender, arg1);
                                require s - quantity <= stor7[stor8]
                                stor7[stor8] = stor7[stor8] - s + quantity
                                require stor7[address(arg1)] + s - quantity >= stor7[address(arg1)]
                                stor7[address(arg1)] = stor7[address(arg1)] + s - quantity
                    else:
                        if stor12 <= 0:
                            quantity = 30000000 * 10^18
                            if -quantity + 30000000 * 10^18 <= 0:
                            else:
                                require arg1
                                require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
                        else:
                            quantity = 30000000 * 10^18
                            if -quantity + 30000000 * 10^18 <= 0:
                            else:
                                require arg1
                                require -quantity + 30000000 * 10^18 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + quantity - 30000000 * 10^18
                                require balanceOf[address(arg1)] + -quantity + 30000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + -quantity + 30000000 * 10^18
                                emit Transfer((-quantity + 30000000 * 10^18), msg.sender, arg1);
                                require -quantity + 30000000 * 10^18 <= stor7[stor8]
                                stor7[stor8] = stor7[stor8] + quantity - 30000000 * 10^18
                                require stor7[address(arg1)] + -quantity + 30000000 * 10^18 >= stor7[address(arg1)]
                                stor7[address(arg1)] = stor7[address(arg1)] + -quantity + 30000000 * 10^18
        quantity = 0
        if -quantity > 0:
            require arg1
            require -quantity <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += quantity
            require balanceOf[address(arg1)] - quantity >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= quantity
            emit Transfer(-quantity, msg.sender, arg1);
            require -quantity <= stor7[stor8]
            stor7[stor8] += quantity
            require stor7[address(arg1)] - quantity >= stor7[address(arg1)]
            stor7[address(arg1)] -= quantity
}



}
