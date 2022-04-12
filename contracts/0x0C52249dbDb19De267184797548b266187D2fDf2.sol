contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
mapping of uint256 stor4;

function _fallback() payable {
    stor0 = 5000000 * 10^18
    stor1 = 417840 * 24 * 3600
    stor2 = 420768 * 24 * 3600
    require not msg.value
    stor3 = msg.sender
    stor4[stor3] = 5000000 * 10^18
    return code.data[272 len 7461]
}



// =====================  Runtime code  =====================


const name = 'PRCR token'

const ownerSupply = 5000000 * 10^18

const decimals = 18

const token_price = 10^16

const maxValue = 10000 * 10^18

const symbol = 'PRCR'

const minValue = 10^16

const minValuePre = 10^16

const maxTokens = 20000000 * 10^18


uint256 totalSupply;
uint256 ico_start;
uint256 ico_finish;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 orders_sell_amount;
mapping of uint256 orders_sell_price;
array of address orders_sell_list;

function totalSupply() {
    return totalSupply
}

function ico_finish() {
    return ico_finish
}

function orders_sell_list(uint256 arg1) {
    require arg1 < orders_sell_list.length
    return address(orders_sell_list[arg1])
}

function orders_sell_amount(address arg1) {
    return orders_sell_amount[arg1]
}

function orders_sell_price(address arg1) {
    return orders_sell_price[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ico_start() {
    return ico_start
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function orders_sell_total() {
    return orders_sell_list.length
}

function change_ico_start(uint256 arg1) {
    require msg.sender == owner
    ico_start = arg1
    return 1
}

function change_ico_finish(uint256 arg1) {
    require msg.sender == owner
    ico_finish = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    return 1
}

function transfer(address arg1, uint256 arg2) {
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

function get_orders_sell_amount(address arg1) {
    if orders_sell_amount[address(arg1)] <= 0:
        return 0
    if balanceOf[address(arg1)] <= 0:
        if orders_sell_amount[address(arg1)] >= 0:
            return 0
    else:
        if orders_sell_amount[address(arg1)] >= balanceOf[address(arg1)]:
            return balanceOf[address(arg1)]
    return orders_sell_amount[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function order_sell(uint256 arg1, uint256 arg2) {
    require arg1 > 0
    require arg2 > 0
    orders_sell_amount[address(msg.sender)] = arg1
    orders_sell_price[address(msg.sender)] = 105 * arg2 / 100
    orders_sell_list.length++
    if not orders_sell_list.length <= orders_sell_list.length + 1:
        idx = orders_sell_list.length + 1
        while orders_sell_list.length > idx:
            uint256(orders_sell_list[idx]) = 0
            idx = idx + 1
            continue 
    address(orders_sell_list[orders_sell_list.length]) = msg.sender
    return 1
}

function order_buy(address arg1, uint256 arg2) payable {
    require msg.value > 0
    require arg2 > 0
    require orders_sell_amount[address(arg1)] > 0
    require orders_sell_price[address(arg1)] > 0
    require orders_sell_price[address(arg1)] <= arg2
    require orders_sell_price[address(arg1)]
    require orders_sell_amount[address(arg1)] > 0
    if balanceOf[address(arg1)] <= 0:
        require orders_sell_amount[address(arg1)] < 0
        if 10^18 * msg.value / orders_sell_price[address(arg1)] <= orders_sell_amount[address(arg1)]:
            require 10^18 * msg.value / orders_sell_price[address(arg1)] > 0
            require 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 <= msg.value
            require 100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105 <= msg.value
            require (100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105) + msg.value - (10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18) <= msg.value
            if 100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105 > 0:
                call arg1 with:
                   value 100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105 wei
                     gas 2300 * is_zero(value) wei
            if msg.value - (10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18) > 0:
                call msg.sender with:
                   value msg.value - (10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18) wei
                     gas 2300 * is_zero(value) wei
            orders_sell_amount[address(arg1)] += -1 * 10^18 * msg.value / orders_sell_price[address(arg1)]
            balanceOf[address(arg1)] += -1 * 10^18 * msg.value / orders_sell_price[address(arg1)]
            balanceOf[address(msg.sender)] += 10^18 * msg.value / orders_sell_price[address(arg1)]
            emit 0xea8ef7f9: 10^18 * msg.value / orders_sell_price[address(arg1)], orders_sell_price[address(arg1)], arg1, msg.sender
        else:
            require orders_sell_amount[address(arg1)] > 0
            require orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18 <= msg.value
            require 100 * orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18 / 105 <= msg.value
            require (100 * orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18 / 105) + msg.value - (orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18) <= msg.value
            if 100 * orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18 / 105 > 0:
                call arg1 with:
                   value 100 * orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18 / 105 wei
                     gas 2300 * is_zero(value) wei
            if msg.value - (orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18) > 0:
                call msg.sender with:
                   value msg.value - (orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18) wei
                     gas 2300 * is_zero(value) wei
            orders_sell_amount[address(arg1)] = 0
            balanceOf[address(arg1)] -= orders_sell_amount[address(arg1)]
            balanceOf[address(msg.sender)] += orders_sell_amount[address(arg1)]
            emit 0xea8ef7f9: orders_sell_amount[address(arg1)], orders_sell_price[address(arg1)], arg1, msg.sender
    else:
        if orders_sell_amount[address(arg1)] >= balanceOf[address(arg1)]:
            if 10^18 * msg.value / orders_sell_price[address(arg1)] <= balanceOf[address(arg1)]:
                require 10^18 * msg.value / orders_sell_price[address(arg1)] > 0
                require 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 <= msg.value
                require 100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105 <= msg.value
                require (100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105) + msg.value - (10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18) <= msg.value
                if 100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105 > 0:
                    call arg1 with:
                       value 100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105 wei
                         gas 2300 * is_zero(value) wei
                if msg.value - (10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18) > 0:
                    call msg.sender with:
                       value msg.value - (10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18) wei
                         gas 2300 * is_zero(value) wei
                orders_sell_amount[address(arg1)] += -1 * 10^18 * msg.value / orders_sell_price[address(arg1)]
                balanceOf[address(arg1)] += -1 * 10^18 * msg.value / orders_sell_price[address(arg1)]
                balanceOf[address(msg.sender)] += 10^18 * msg.value / orders_sell_price[address(arg1)]
                emit 0xea8ef7f9: 10^18 * msg.value / orders_sell_price[address(arg1)], orders_sell_price[address(arg1)], arg1, msg.sender
            else:
                require balanceOf[address(arg1)] > 0
                require orders_sell_price[address(arg1)] * balanceOf[address(arg1)] / 10^18 <= msg.value
                require 100 * orders_sell_price[address(arg1)] * balanceOf[address(arg1)] / 10^18 / 105 <= msg.value
                require (100 * orders_sell_price[address(arg1)] * balanceOf[address(arg1)] / 10^18 / 105) + msg.value - (orders_sell_price[address(arg1)] * balanceOf[address(arg1)] / 10^18) <= msg.value
                if 100 * orders_sell_price[address(arg1)] * balanceOf[address(arg1)] / 10^18 / 105 > 0:
                    call arg1 with:
                       value 100 * orders_sell_price[address(arg1)] * balanceOf[address(arg1)] / 10^18 / 105 wei
                         gas 2300 * is_zero(value) wei
                if msg.value - (orders_sell_price[address(arg1)] * balanceOf[address(arg1)] / 10^18) > 0:
                    call msg.sender with:
                       value msg.value - (orders_sell_price[address(arg1)] * balanceOf[address(arg1)] / 10^18) wei
                         gas 2300 * is_zero(value) wei
                orders_sell_amount[address(arg1)] -= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = 0
                balanceOf[address(msg.sender)] += balanceOf[address(arg1)]
                emit 0xea8ef7f9: balanceOf[address(arg1)], orders_sell_price[address(arg1)], arg1, msg.sender
        else:
            if 10^18 * msg.value / orders_sell_price[address(arg1)] <= orders_sell_amount[address(arg1)]:
                require 10^18 * msg.value / orders_sell_price[address(arg1)] > 0
                require 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 <= msg.value
                require 100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105 <= msg.value
                require (100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105) + msg.value - (10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18) <= msg.value
                if 100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105 > 0:
                    call arg1 with:
                       value 100 * 10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18 / 105 wei
                         gas 2300 * is_zero(value) wei
                if msg.value - (10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18) > 0:
                    call msg.sender with:
                       value msg.value - (10^18 * orders_sell_price[address(arg1)] * msg.value / orders_sell_price[address(arg1)] / 10^18) wei
                         gas 2300 * is_zero(value) wei
                orders_sell_amount[address(arg1)] += -1 * 10^18 * msg.value / orders_sell_price[address(arg1)]
                balanceOf[address(arg1)] += -1 * 10^18 * msg.value / orders_sell_price[address(arg1)]
                balanceOf[address(msg.sender)] += 10^18 * msg.value / orders_sell_price[address(arg1)]
                emit 0xea8ef7f9: 10^18 * msg.value / orders_sell_price[address(arg1)], orders_sell_price[address(arg1)], arg1, msg.sender
            else:
                require orders_sell_amount[address(arg1)] > 0
                require orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18 <= msg.value
                require 100 * orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18 / 105 <= msg.value
                require (100 * orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18 / 105) + msg.value - (orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18) <= msg.value
                if 100 * orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18 / 105 > 0:
                    call arg1 with:
                       value 100 * orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18 / 105 wei
                         gas 2300 * is_zero(value) wei
                if msg.value - (orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18) > 0:
                    call msg.sender with:
                       value msg.value - (orders_sell_price[address(arg1)] * orders_sell_amount[address(arg1)] / 10^18) wei
                         gas 2300 * is_zero(value) wei
                orders_sell_amount[address(arg1)] = 0
                balanceOf[address(arg1)] -= orders_sell_amount[address(arg1)]
                balanceOf[address(msg.sender)] += orders_sell_amount[address(arg1)]
                emit 0xea8ef7f9: orders_sell_amount[address(arg1)], orders_sell_price[address(arg1)], arg1, msg.sender
    return 0
}

function _fallback() payable {
    require block.timestamp <= ico_finish
    require totalSupply < 20000000 * 10^18
    require msg.value >= 10^16
    require msg.value <= 10000 * 10^18
    require 10^18 * msg.value / 10^16 > 0
    if block.timestamp >= ico_start:
        if ico_start > block.timestamp:
            if ico_start + (48 * 24 * 3600) > block.timestamp:
                if ico_start + (168 * 24 * 3600) > block.timestamp:
                    require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                    require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                    require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                    totalSupply += 10^18 * msg.value / 10^16
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                else:
                    if block.timestamp >= ico_start + (336 * 24 * 3600):
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        totalSupply += 10^18 * msg.value / 10^16
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                    else:
                        require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 105 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 10^16 / 100
            else:
                if block.timestamp >= ico_start + (168 * 24 * 3600):
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        totalSupply += 10^18 * msg.value / 10^16
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            totalSupply += 10^18 * msg.value / 10^16
                            require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                        else:
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 105 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 10^16 / 100
                else:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 110 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 10^16 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 110 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 10^16 / 100
                        else:
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100
        else:
            if block.timestamp >= ico_start + (48 * 24 * 3600):
                if ico_start + (48 * 24 * 3600) > block.timestamp:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        totalSupply += 10^18 * msg.value / 10^16
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            totalSupply += 10^18 * msg.value / 10^16
                            require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                        else:
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 105 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 10^16 / 100
                else:
                    if block.timestamp >= ico_start + (168 * 24 * 3600):
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            totalSupply += 10^18 * msg.value / 10^16
                            require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                                require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                                require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                                totalSupply += 10^18 * msg.value / 10^16
                                require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                            else:
                                require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                totalSupply += 105 * 10^18 * msg.value / 10^16 / 100
                                require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 10^16 / 100
                    else:
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 110 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 10^16 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                                require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                totalSupply += 110 * 10^18 * msg.value / 10^16 / 100
                                require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 10^16 / 100
                            else:
                                require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100
            else:
                if ico_start + (48 * 24 * 3600) > block.timestamp:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 120 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 10^16 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 120 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 10^16 / 100
                        else:
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                else:
                    if block.timestamp >= ico_start + (168 * 24 * 3600):
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 120 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 10^16 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                                require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                totalSupply += 120 * 10^18 * msg.value / 10^16 / 100
                                require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 10^16 / 100
                            else:
                                require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                    else:
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                            else:
                                require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
    else:
        require msg.value >= 10^16
        if ico_start > block.timestamp:
            if ico_start + (48 * 24 * 3600) > block.timestamp:
                if ico_start + (168 * 24 * 3600) > block.timestamp:
                    require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                    require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                    require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                    totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                    require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                else:
                    if block.timestamp >= ico_start + (336 * 24 * 3600):
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                    else:
                        require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                        require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        totalSupply += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        require balanceOf[address(msg.sender)] + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
            else:
                if block.timestamp >= ico_start + (168 * 24 * 3600):
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                        else:
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                else:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                        require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        totalSupply += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        require balanceOf[address(msg.sender)] + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        else:
                            require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
        else:
            if block.timestamp >= ico_start + (48 * 24 * 3600):
                if ico_start + (48 * 24 * 3600) > block.timestamp:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                        else:
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                else:
                    if block.timestamp >= ico_start + (168 * 24 * 3600):
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                                require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                                require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                            else:
                                require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                    else:
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            else:
                                require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
            else:
                if ico_start + (48 * 24 * 3600) > block.timestamp:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                        require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        totalSupply += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        require balanceOf[address(msg.sender)] + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        else:
                            require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                else:
                    if block.timestamp >= ico_start + (168 * 24 * 3600):
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            else:
                                require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                    else:
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            totalSupply += 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                            require balanceOf[address(msg.sender)] + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                totalSupply += 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                                require balanceOf[address(msg.sender)] + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                            else:
                                require totalSupply + (105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100
}

function tokens_buy() payable {
    require block.timestamp <= ico_finish
    require totalSupply < 20000000 * 10^18
    require msg.value >= 10^16
    require msg.value <= 10000 * 10^18
    require 10^18 * msg.value / 10^16 > 0
    if block.timestamp >= ico_start:
        if ico_start > block.timestamp:
            if ico_start + (48 * 24 * 3600) > block.timestamp:
                if ico_start + (168 * 24 * 3600) > block.timestamp:
                    require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                    require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                    require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                    totalSupply += 10^18 * msg.value / 10^16
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                else:
                    if block.timestamp >= ico_start + (336 * 24 * 3600):
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        totalSupply += 10^18 * msg.value / 10^16
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                    else:
                        require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 105 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 10^16 / 100
            else:
                if block.timestamp >= ico_start + (168 * 24 * 3600):
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        totalSupply += 10^18 * msg.value / 10^16
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            totalSupply += 10^18 * msg.value / 10^16
                            require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                        else:
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 105 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 10^16 / 100
                else:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 110 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 10^16 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 110 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 10^16 / 100
                        else:
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100
        else:
            if block.timestamp >= ico_start + (48 * 24 * 3600):
                if ico_start + (48 * 24 * 3600) > block.timestamp:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                        require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                        totalSupply += 10^18 * msg.value / 10^16
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            totalSupply += 10^18 * msg.value / 10^16
                            require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                        else:
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 105 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 10^16 / 100
                else:
                    if block.timestamp >= ico_start + (168 * 24 * 3600):
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                            require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                            totalSupply += 10^18 * msg.value / 10^16
                            require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                                require totalSupply + (10^18 * msg.value / 10^16) <= 20000000 * 10^18
                                require totalSupply + (10^18 * msg.value / 10^16) >= totalSupply
                                totalSupply += 10^18 * msg.value / 10^16
                                require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^16) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^16
                            else:
                                require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                totalSupply += 105 * 10^18 * msg.value / 10^16 / 100
                                require balanceOf[address(msg.sender)] + (105 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 10^18 * msg.value / 10^16 / 100
                    else:
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 110 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 10^16 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                                require totalSupply + (110 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                totalSupply += 110 * 10^18 * msg.value / 10^16 / 100
                                require balanceOf[address(msg.sender)] + (110 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 110 * 10^18 * msg.value / 10^16 / 100
                            else:
                                require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 110 * 10^18 * msg.value / 10^16 / 100 / 100
            else:
                if ico_start + (48 * 24 * 3600) > block.timestamp:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 120 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 10^16 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 120 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 10^16 / 100
                        else:
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                else:
                    if block.timestamp >= ico_start + (168 * 24 * 3600):
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 120 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 10^16 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                                require totalSupply + (120 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                totalSupply += 120 * 10^18 * msg.value / 10^16 / 100
                                require balanceOf[address(msg.sender)] + (120 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 120 * 10^18 * msg.value / 10^16 / 100
                            else:
                                require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                    else:
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100
                            else:
                                require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 110 * 120 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
    else:
        require msg.value >= 10^16
        if ico_start > block.timestamp:
            if ico_start + (48 * 24 * 3600) > block.timestamp:
                if ico_start + (168 * 24 * 3600) > block.timestamp:
                    require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                    require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                    require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                    totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                    require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                else:
                    if block.timestamp >= ico_start + (336 * 24 * 3600):
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                    else:
                        require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                        require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        totalSupply += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        require balanceOf[address(msg.sender)] + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
            else:
                if block.timestamp >= ico_start + (168 * 24 * 3600):
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                        else:
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                else:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                        require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        totalSupply += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        require balanceOf[address(msg.sender)] + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        else:
                            require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
        else:
            if block.timestamp >= ico_start + (48 * 24 * 3600):
                if ico_start + (48 * 24 * 3600) > block.timestamp:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                        require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                        totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                        require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                        else:
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                else:
                    if block.timestamp >= ico_start + (168 * 24 * 3600):
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                            require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                            totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                            require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) <= 20000000 * 10^18
                                require totalSupply + (125 * 10^18 * msg.value / 10^16 / 100) >= totalSupply
                                totalSupply += 125 * 10^18 * msg.value / 10^16 / 100
                                require balanceOf[address(msg.sender)] + (125 * 10^18 * msg.value / 10^16 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 125 * 10^18 * msg.value / 10^16 / 100
                            else:
                                require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                    else:
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            else:
                                require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 110 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
            else:
                if ico_start + (48 * 24 * 3600) > block.timestamp:
                    if ico_start + (168 * 24 * 3600) > block.timestamp:
                        require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                        require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                        totalSupply += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        require balanceOf[address(msg.sender)] + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                    else:
                        if block.timestamp >= ico_start + (336 * 24 * 3600):
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        else:
                            require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            totalSupply += 105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                            require balanceOf[address(msg.sender)] + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                else:
                    if block.timestamp >= ico_start + (168 * 24 * 3600):
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                            totalSupply += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            require balanceOf[address(msg.sender)] + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= totalSupply
                                totalSupply += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                                require balanceOf[address(msg.sender)] + (120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100
                            else:
                                require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                    else:
                        if ico_start + (168 * 24 * 3600) > block.timestamp:
                            require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                            require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                            totalSupply += 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                            require balanceOf[address(msg.sender)] + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                        else:
                            if block.timestamp >= ico_start + (336 * 24 * 3600):
                                require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= totalSupply
                                totalSupply += 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                                require balanceOf[address(msg.sender)] + (110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100
                            else:
                                require totalSupply + (105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100) >= totalSupply
                                require totalSupply + (105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100) <= 20000000 * 10^18
                                require totalSupply + (105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100) >= totalSupply
                                totalSupply += 105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100
                                require balanceOf[address(msg.sender)] + (105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 105 * 110 * 120 * 125 * 10^18 * msg.value / 10^16 / 100 / 100 / 100 / 100
    return 1
}



}
