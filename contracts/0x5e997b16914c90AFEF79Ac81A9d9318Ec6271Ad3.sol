contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor5;
mapping of uint256 stor6;

function _fallback() payable {
    stor0 = 32000000 * 10^18
    require not msg.value
    stor5 = msg.sender
    stor6[stor5] = 32000000 * 10^18
    return code.data[253 len 5871]
}



// =====================  Runtime code  =====================


const name = 'Centra token'

const ico_finish = (417744 * 24 * 3600)

const ownerSupply = 32000000 * 10^18

const decimals = 18

const card_gold_minamount = 20 * 10^18

const card_gold_first = 500

const ico_start = (417000 * 24 * 3600)

const token_price = 25 * 10^14

const symbol = 'Centra'

const minValue = 10^17

const card_metal_first = 300

const card_metal_minamount = 100 * 10^18

const maxTokens = 100000000 * 10^18


uint256 totalSupply;
mapping of uint256 cards_metal_check;
array of address cards_metal;
mapping of uint256 stor3;
array of address cards_gold;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function cards_gold(uint256 arg1) {
    require arg1 < cards_gold.length
    return address(cards_gold[arg1])
}

function totalSupply() {
    return totalSupply
}

function cards_metal_total() {
    return cards_metal.length
}

function cards_metal(uint256 arg1) {
    require arg1 < cards_metal.length
    return address(cards_metal[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function cards_metal_check(address arg1) {
    return cards_metal_check[arg1]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function cards_gold_total() {
    return cards_gold.length
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= 417000 * 24 * 3600
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp >= 417000 * 24 * 3600
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp >= 417000 * 24 * 3600
    require block.timestamp <= 417744 * 24 * 3600
    require totalSupply < 100000000 * 10^18
    require msg.value >= 25 * 10^14
    require msg.value >= 10^17
    require 10^18 * msg.value / 25 * 10^14 > 0
    if 417000 * 24 * 3600 > block.timestamp:
        if 417048 * 24 * 3600 > block.timestamp:
            if 417168 * 24 * 3600 > block.timestamp:
                require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                totalSupply += 10^18 * msg.value / 25 * 10^14
                require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
            else:
                if block.timestamp >= 417336 * 24 * 3600:
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    totalSupply += 10^18 * msg.value / 25 * 10^14
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                else:
                    require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                    require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    totalSupply += 105 * 10^18 * msg.value / 25 * 10^14 / 100
                    require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 25 * 10^14 / 100
        else:
            if block.timestamp >= 417168 * 24 * 3600:
                if 417168 * 24 * 3600 > block.timestamp:
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    totalSupply += 10^18 * msg.value / 25 * 10^14
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                else:
                    if block.timestamp >= 417336 * 24 * 3600:
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        totalSupply += 10^18 * msg.value / 25 * 10^14
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                    else:
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 105 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 25 * 10^14 / 100
            else:
                if 417168 * 24 * 3600 > block.timestamp:
                    require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                    require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    totalSupply += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                    require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                else:
                    if block.timestamp >= 417336 * 24 * 3600:
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                    else:
                        require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                        require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        totalSupply += 105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                        require balanceOf[address(msg.sender)] + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
    else:
        if block.timestamp >= 417048 * 24 * 3600:
            if 417048 * 24 * 3600 > block.timestamp:
                if 417168 * 24 * 3600 > block.timestamp:
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    totalSupply += 10^18 * msg.value / 25 * 10^14
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                else:
                    if block.timestamp >= 417336 * 24 * 3600:
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        totalSupply += 10^18 * msg.value / 25 * 10^14
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                    else:
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 105 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 25 * 10^14 / 100
            else:
                if block.timestamp >= 417168 * 24 * 3600:
                    if 417168 * 24 * 3600 > block.timestamp:
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        totalSupply += 10^18 * msg.value / 25 * 10^14
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                    else:
                        if block.timestamp >= 417336 * 24 * 3600:
                            require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                            require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                            require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                            totalSupply += 10^18 * msg.value / 25 * 10^14
                            require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                        else:
                            require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                            require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            totalSupply += 105 * 10^18 * msg.value / 25 * 10^14 / 100
                            require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 25 * 10^14 / 100
                else:
                    if 417168 * 24 * 3600 > block.timestamp:
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                    else:
                        if block.timestamp >= 417336 * 24 * 3600:
                            require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                            require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            totalSupply += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                            require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                        else:
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
        else:
            if 417048 * 24 * 3600 > block.timestamp:
                if 417168 * 24 * 3600 > block.timestamp:
                    require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                    require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    totalSupply += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                    require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                else:
                    if block.timestamp >= 417336 * 24 * 3600:
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                    else:
                        require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                        require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        totalSupply += 105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                        require balanceOf[address(msg.sender)] + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
            else:
                if block.timestamp >= 417168 * 24 * 3600:
                    if 417168 * 24 * 3600 > block.timestamp:
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                    else:
                        if block.timestamp >= 417336 * 24 * 3600:
                            require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                            require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            totalSupply += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                            require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                        else:
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                else:
                    if 417168 * 24 * 3600 > block.timestamp:
                        require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                        require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        totalSupply += 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                        require balanceOf[address(msg.sender)] + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                    else:
                        if block.timestamp >= 417336 * 24 * 3600:
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            totalSupply += 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                            require balanceOf[address(msg.sender)] + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                        else:
                            require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100) <= 100000000 * 10^18
                            require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100
    if msg.value < 100 * 10^18:
        if msg.value >= 20 * 10^18:
            if cards_gold.length < 500:
                if stor3[address(msg.sender)] != 1:
                    cards_gold.length++
                    if not cards_gold.length <= cards_gold.length + 1:
                        idx = cards_gold.length + 1
                        while cards_gold.length > idx:
                            uint256(cards_gold[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(cards_gold[cards_gold.length]) = msg.sender
                    stor3[address(msg.sender)] = 1
    else:
        if cards_metal.length >= 300:
            if msg.value >= 20 * 10^18:
                if cards_gold.length < 500:
                    if stor3[address(msg.sender)] != 1:
                        cards_gold.length++
                        if not cards_gold.length <= cards_gold.length + 1:
                            idx = cards_gold.length + 1
                            while cards_gold.length > idx:
                                uint256(cards_gold[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(cards_gold[cards_gold.length]) = msg.sender
                        stor3[address(msg.sender)] = 1
        else:
            if cards_metal_check[address(msg.sender)] == 1:
                if msg.value >= 20 * 10^18:
                    if cards_gold.length < 500:
                        if stor3[address(msg.sender)] != 1:
                            cards_gold.length++
                            if not cards_gold.length <= cards_gold.length + 1:
                                idx = cards_gold.length + 1
                                while cards_gold.length > idx:
                                    uint256(cards_gold[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(cards_gold[cards_gold.length]) = msg.sender
                            stor3[address(msg.sender)] = 1
            else:
                cards_metal.length++
                if not cards_metal.length <= cards_metal.length + 1:
                    idx = cards_metal.length + 1
                    while cards_metal.length > idx:
                        uint256(cards_metal[idx]) = 0
                        idx = idx + 1
                        continue 
                address(cards_metal[cards_metal.length]) = msg.sender
                cards_metal_check[address(msg.sender)] = 1
                if msg.value >= 20 * 10^18:
                    if cards_gold.length < 500:
                        if stor3[address(msg.sender)] != 1:
                            cards_gold.length++
                            if not cards_gold.length <= cards_gold.length + 1:
                                idx = cards_gold.length + 1
                                while cards_gold.length > idx:
                                    uint256(cards_gold[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(cards_gold[cards_gold.length]) = msg.sender
                            stor3[address(msg.sender)] = 1
}

function tokens_buy() payable {
    require block.timestamp >= 417000 * 24 * 3600
    require block.timestamp <= 417744 * 24 * 3600
    require totalSupply < 100000000 * 10^18
    require msg.value >= 25 * 10^14
    require msg.value >= 10^17
    require 10^18 * msg.value / 25 * 10^14 > 0
    if 417000 * 24 * 3600 > block.timestamp:
        if 417048 * 24 * 3600 > block.timestamp:
            if 417168 * 24 * 3600 > block.timestamp:
                require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                totalSupply += 10^18 * msg.value / 25 * 10^14
                require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
            else:
                if block.timestamp >= 417336 * 24 * 3600:
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    totalSupply += 10^18 * msg.value / 25 * 10^14
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                else:
                    require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                    require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    totalSupply += 105 * 10^18 * msg.value / 25 * 10^14 / 100
                    require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 25 * 10^14 / 100
        else:
            if block.timestamp >= 417168 * 24 * 3600:
                if 417168 * 24 * 3600 > block.timestamp:
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    totalSupply += 10^18 * msg.value / 25 * 10^14
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                else:
                    if block.timestamp >= 417336 * 24 * 3600:
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        totalSupply += 10^18 * msg.value / 25 * 10^14
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                    else:
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 105 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 25 * 10^14 / 100
            else:
                if 417168 * 24 * 3600 > block.timestamp:
                    require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                    require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    totalSupply += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                    require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                else:
                    if block.timestamp >= 417336 * 24 * 3600:
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                    else:
                        require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                        require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        totalSupply += 105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                        require balanceOf[address(msg.sender)] + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
    else:
        if block.timestamp >= 417048 * 24 * 3600:
            if 417048 * 24 * 3600 > block.timestamp:
                if 417168 * 24 * 3600 > block.timestamp:
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                    require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                    totalSupply += 10^18 * msg.value / 25 * 10^14
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                else:
                    if block.timestamp >= 417336 * 24 * 3600:
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        totalSupply += 10^18 * msg.value / 25 * 10^14
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                    else:
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 105 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 25 * 10^14 / 100
            else:
                if block.timestamp >= 417168 * 24 * 3600:
                    if 417168 * 24 * 3600 > block.timestamp:
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                        totalSupply += 10^18 * msg.value / 25 * 10^14
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                    else:
                        if block.timestamp >= 417336 * 24 * 3600:
                            require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                            require totalSupply + (10^18 * msg.value / 25 * 10^14) <= 100000000 * 10^18
                            require totalSupply + (10^18 * msg.value / 25 * 10^14) >= totalSupply
                            totalSupply += 10^18 * msg.value / 25 * 10^14
                            require balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^18 * msg.value / 25 * 10^14
                        else:
                            require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                            require totalSupply + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            totalSupply += 105 * 10^18 * msg.value / 25 * 10^14 / 100
                            require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 25 * 10^14 / 100
                else:
                    if 417168 * 24 * 3600 > block.timestamp:
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                    else:
                        if block.timestamp >= 417336 * 24 * 3600:
                            require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                            require totalSupply + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            totalSupply += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                            require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 25 * 10^14 / 100
                        else:
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 110 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
        else:
            if 417048 * 24 * 3600 > block.timestamp:
                if 417168 * 24 * 3600 > block.timestamp:
                    require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                    require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                    totalSupply += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                    require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                else:
                    if block.timestamp >= 417336 * 24 * 3600:
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                    else:
                        require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                        require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        totalSupply += 105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                        require balanceOf[address(msg.sender)] + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
            else:
                if block.timestamp >= 417168 * 24 * 3600:
                    if 417168 * 24 * 3600 > block.timestamp:
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                        require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                        totalSupply += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                        require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                    else:
                        if block.timestamp >= 417336 * 24 * 3600:
                            require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) <= 100000000 * 10^18
                            require totalSupply + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= totalSupply
                            totalSupply += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                            require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 25 * 10^14 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 25 * 10^14 / 100
                        else:
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                else:
                    if 417168 * 24 * 3600 > block.timestamp:
                        require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                        require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                        totalSupply += 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                        require balanceOf[address(msg.sender)] + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                    else:
                        if block.timestamp >= 417336 * 24 * 3600:
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) <= 100000000 * 10^18
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= totalSupply
                            totalSupply += 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                            require balanceOf[address(msg.sender)] + (110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100
                        else:
                            require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100) <= 100000000 * 10^18
                            require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 110 * 120 * 10^18 * msg.value / 25 * 10^14 / 100 / 100 / 100
    if msg.value < 100 * 10^18:
        if msg.value >= 20 * 10^18:
            if cards_gold.length < 500:
                if stor3[address(msg.sender)] != 1:
                    cards_gold.length++
                    if not cards_gold.length <= cards_gold.length + 1:
                        idx = cards_gold.length + 1
                        while cards_gold.length > idx:
                            uint256(cards_gold[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(cards_gold[cards_gold.length]) = msg.sender
                    stor3[address(msg.sender)] = 1
    else:
        if cards_metal.length >= 300:
            if msg.value >= 20 * 10^18:
                if cards_gold.length < 500:
                    if stor3[address(msg.sender)] != 1:
                        cards_gold.length++
                        if not cards_gold.length <= cards_gold.length + 1:
                            idx = cards_gold.length + 1
                            while cards_gold.length > idx:
                                uint256(cards_gold[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(cards_gold[cards_gold.length]) = msg.sender
                        stor3[address(msg.sender)] = 1
        else:
            if cards_metal_check[address(msg.sender)] == 1:
                if msg.value >= 20 * 10^18:
                    if cards_gold.length < 500:
                        if stor3[address(msg.sender)] != 1:
                            cards_gold.length++
                            if not cards_gold.length <= cards_gold.length + 1:
                                idx = cards_gold.length + 1
                                while cards_gold.length > idx:
                                    uint256(cards_gold[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(cards_gold[cards_gold.length]) = msg.sender
                            stor3[address(msg.sender)] = 1
            else:
                cards_metal.length++
                if not cards_metal.length <= cards_metal.length + 1:
                    idx = cards_metal.length + 1
                    while cards_metal.length > idx:
                        uint256(cards_metal[idx]) = 0
                        idx = idx + 1
                        continue 
                address(cards_metal[cards_metal.length]) = msg.sender
                cards_metal_check[address(msg.sender)] = 1
                if msg.value >= 20 * 10^18:
                    if cards_gold.length < 500:
                        if stor3[address(msg.sender)] != 1:
                            cards_gold.length++
                            if not cards_gold.length <= cards_gold.length + 1:
                                idx = cards_gold.length + 1
                                while cards_gold.length > idx:
                                    uint256(cards_gold[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(cards_gold[cards_gold.length]) = msg.sender
                            stor3[address(msg.sender)] = 1
    return 1
}



}
