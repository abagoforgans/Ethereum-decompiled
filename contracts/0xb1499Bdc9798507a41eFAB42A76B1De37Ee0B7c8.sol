contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;

function _fallback() payable {
    stor9 = 330 * 10^6
    stor10 = 330 * 10^6
    stor11 = 340 * 10^6
    stor12 = 10 * 10^6
    require not msg.value
    stor1 = msg.sender
    stor13 = 0
    stor0 = 10^9
    stor2[address(msg.sender)] = stor0
    stor4 = 0
    stor5 = block.timestamp + (1680 * 24 * 3600)
    stor6 = 449060800 * 10^6
    stor7 = 25
    stor1 = msg.sender
    stor8 = block.timestamp + (336 * 24 * 3600)
    return code.data[358 len 4092]
}



// =====================  Runtime code  =====================


const name = 'Authoreon'

const decimals = 0

const symbol = 'AUTH'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor4;
uint256 deadLine;
uint256 priceOfToken;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor12;
uint8 stor13;

function totalSupply() {
    return totalSupply
}

function priceOfToken() {
    return priceOfToken
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function deadLine() {
    return deadLine
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function togglePause(bool arg1) {
    require msg.sender == owner
    stor13 = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg3 > 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(arg2)] < arg3:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not stor13
    require msg.sender
    require msg.value > 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if block.timestamp < stor8:
        require priceOfToken
        require msg.value / priceOfToken < stor12
        stor12 -= msg.value / priceOfToken
        stor10 -= msg.value / priceOfToken
        if msg.value / priceOfToken * stor7 / 100 >= stor9:
            stor4 += 10^18 * msg.value
            allowance[stor1][address(msg.sender)] += msg.value / priceOfToken
            require owner
            require msg.sender
            require msg.value / priceOfToken > 0
            require balanceOf[stor1] >= msg.value / priceOfToken
            require allowance[stor1][address(msg.sender)] >= msg.value / priceOfToken
            balanceOf[address(msg.sender)] += msg.value / priceOfToken
            balanceOf[stor1] -= msg.value / priceOfToken
            allowance[stor1][address(msg.sender)] -= msg.value / priceOfToken
            emit Transfer((msg.value / priceOfToken), owner, msg.sender);
        else:
            stor9 -= msg.value / priceOfToken * stor7 / 100
            stor4 += 10^18 * msg.value
            allowance[stor1][address(msg.sender)] = allowance[stor1][address(msg.sender)] + (msg.value / priceOfToken) + (msg.value / priceOfToken * stor7 / 100)
            require owner
            require msg.sender
            require (msg.value / priceOfToken) + (msg.value / priceOfToken * stor7 / 100) > 0
            require balanceOf[stor1] >= (msg.value / priceOfToken) + (msg.value / priceOfToken * stor7 / 100)
            require allowance[stor1][address(msg.sender)] >= (msg.value / priceOfToken) + (msg.value / priceOfToken * stor7 / 100)
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / priceOfToken) + (msg.value / priceOfToken * stor7 / 100)
            balanceOf[stor1] = balanceOf[stor1] - (msg.value / priceOfToken) - (msg.value / priceOfToken * stor7 / 100)
            allowance[stor1][address(msg.sender)] = allowance[stor1][address(msg.sender)] - (msg.value / priceOfToken) - (msg.value / priceOfToken * stor7 / 100)
            emit Transfer(((msg.value / priceOfToken) + (msg.value / priceOfToken * stor7 / 100)), owner, msg.sender);
    else:
        require block.timestamp < deadLine
        require priceOfToken
        if deadLine - (24 * 3600 * block.timestamp) <= 7:
            if 15 * msg.value / priceOfToken / 100 >= stor9:
                stor4 += 10^18 * msg.value
                allowance[stor1][address(msg.sender)] += msg.value / priceOfToken
                require owner
                require msg.sender
                require msg.value / priceOfToken > 0
                require balanceOf[stor1] >= msg.value / priceOfToken
                require allowance[stor1][address(msg.sender)] >= msg.value / priceOfToken
                balanceOf[address(msg.sender)] += msg.value / priceOfToken
                balanceOf[stor1] -= msg.value / priceOfToken
                allowance[stor1][address(msg.sender)] -= msg.value / priceOfToken
                emit Transfer((msg.value / priceOfToken), owner, msg.sender);
            else:
                stor9 -= 15 * msg.value / priceOfToken / 100
                stor4 += 10^18 * msg.value
                allowance[stor1][address(msg.sender)] = allowance[stor1][address(msg.sender)] + (msg.value / priceOfToken) + (15 * msg.value / priceOfToken / 100)
                require owner
                require msg.sender
                require (msg.value / priceOfToken) + (15 * msg.value / priceOfToken / 100) > 0
                require balanceOf[stor1] >= (msg.value / priceOfToken) + (15 * msg.value / priceOfToken / 100)
                require allowance[stor1][address(msg.sender)] >= (msg.value / priceOfToken) + (15 * msg.value / priceOfToken / 100)
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / priceOfToken) + (15 * msg.value / priceOfToken / 100)
                balanceOf[stor1] = balanceOf[stor1] - (msg.value / priceOfToken) - (15 * msg.value / priceOfToken / 100)
                allowance[stor1][address(msg.sender)] = allowance[stor1][address(msg.sender)] - (msg.value / priceOfToken) - (15 * msg.value / priceOfToken / 100)
                emit Transfer(((msg.value / priceOfToken) + (15 * msg.value / priceOfToken / 100)), owner, msg.sender);
        else:
            if deadLine - (24 * 3600 * block.timestamp) <= 14:
                if 10 * msg.value / priceOfToken / 100 >= stor9:
                    stor4 += 10^18 * msg.value
                    allowance[stor1][address(msg.sender)] += msg.value / priceOfToken
                    require owner
                    require msg.sender
                    require msg.value / priceOfToken > 0
                    require balanceOf[stor1] >= msg.value / priceOfToken
                    require allowance[stor1][address(msg.sender)] >= msg.value / priceOfToken
                    balanceOf[address(msg.sender)] += msg.value / priceOfToken
                    balanceOf[stor1] -= msg.value / priceOfToken
                    allowance[stor1][address(msg.sender)] -= msg.value / priceOfToken
                    emit Transfer((msg.value / priceOfToken), owner, msg.sender);
                else:
                    stor9 -= 10 * msg.value / priceOfToken / 100
                    stor4 += 10^18 * msg.value
                    allowance[stor1][address(msg.sender)] = allowance[stor1][address(msg.sender)] + (msg.value / priceOfToken) + (10 * msg.value / priceOfToken / 100)
                    require owner
                    require msg.sender
                    require (msg.value / priceOfToken) + (10 * msg.value / priceOfToken / 100) > 0
                    require balanceOf[stor1] >= (msg.value / priceOfToken) + (10 * msg.value / priceOfToken / 100)
                    require allowance[stor1][address(msg.sender)] >= (msg.value / priceOfToken) + (10 * msg.value / priceOfToken / 100)
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / priceOfToken) + (10 * msg.value / priceOfToken / 100)
                    balanceOf[stor1] = balanceOf[stor1] - (msg.value / priceOfToken) - (10 * msg.value / priceOfToken / 100)
                    allowance[stor1][address(msg.sender)] = allowance[stor1][address(msg.sender)] - (msg.value / priceOfToken) - (10 * msg.value / priceOfToken / 100)
                    emit Transfer(((msg.value / priceOfToken) + (10 * msg.value / priceOfToken / 100)), owner, msg.sender);
            else:
                if deadLine - (24 * 3600 * block.timestamp) > 21:
                    stor4 += 10^18 * msg.value
                    allowance[stor1][address(msg.sender)] += msg.value / priceOfToken
                    require owner
                    require msg.sender
                    require msg.value / priceOfToken > 0
                    require balanceOf[stor1] >= msg.value / priceOfToken
                    require allowance[stor1][address(msg.sender)] >= msg.value / priceOfToken
                    balanceOf[address(msg.sender)] += msg.value / priceOfToken
                    balanceOf[stor1] -= msg.value / priceOfToken
                    allowance[stor1][address(msg.sender)] -= msg.value / priceOfToken
                    emit Transfer((msg.value / priceOfToken), owner, msg.sender);
                else:
                    if 5 * msg.value / priceOfToken / 100 >= stor9:
                        stor4 += 10^18 * msg.value
                        allowance[stor1][address(msg.sender)] += msg.value / priceOfToken
                        require owner
                        require msg.sender
                        require msg.value / priceOfToken > 0
                        require balanceOf[stor1] >= msg.value / priceOfToken
                        require allowance[stor1][address(msg.sender)] >= msg.value / priceOfToken
                        balanceOf[address(msg.sender)] += msg.value / priceOfToken
                        balanceOf[stor1] -= msg.value / priceOfToken
                        allowance[stor1][address(msg.sender)] -= msg.value / priceOfToken
                        emit Transfer((msg.value / priceOfToken), owner, msg.sender);
                    else:
                        stor9 -= 5 * msg.value / priceOfToken / 100
                        stor4 += 10^18 * msg.value
                        allowance[stor1][address(msg.sender)] = allowance[stor1][address(msg.sender)] + (msg.value / priceOfToken) + (5 * msg.value / priceOfToken / 100)
                        require owner
                        require msg.sender
                        require (msg.value / priceOfToken) + (5 * msg.value / priceOfToken / 100) > 0
                        require balanceOf[stor1] >= (msg.value / priceOfToken) + (5 * msg.value / priceOfToken / 100)
                        require allowance[stor1][address(msg.sender)] >= (msg.value / priceOfToken) + (5 * msg.value / priceOfToken / 100)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / priceOfToken) + (5 * msg.value / priceOfToken / 100)
                        balanceOf[stor1] = balanceOf[stor1] - (msg.value / priceOfToken) - (5 * msg.value / priceOfToken / 100)
                        allowance[stor1][address(msg.sender)] = allowance[stor1][address(msg.sender)] - (msg.value / priceOfToken) - (5 * msg.value / priceOfToken / 100)
                        emit Transfer(((msg.value / priceOfToken) + (5 * msg.value / priceOfToken / 100)), owner, msg.sender);
}



}
