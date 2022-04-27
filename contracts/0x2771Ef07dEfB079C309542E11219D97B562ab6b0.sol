contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor13A9;

function _fallback() {
    stor0 = 100 * 10^6
    stor13A9 = 100 * 10^6
    return code.data[102 len 3132]
}



// =====================  Runtime code  =====================


const name = 'Avalanche'

const pieceprice = 390625 * 10^10

const totalavl = 10^10

const decimals = 4

const version = '1.0'

const symbol = 'AVL'

const oneavl = 10000


uint256 incirculation;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 gooBalanceOf;
mapping of uint8 stor4;
mapping of uint256 stor5;

function totalSupply() {
    return incirculation
}

function incirculation() {
    return incirculation
}

function gooBalanceOf(address arg1) {
    return gooBalanceOf[address(arg1)]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getPrice(bytes1 arg1) {
    return ((390625 * 10^10 * uint8(arg1)) + 390625 * 10^10)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendEther(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if gooBalanceOf[address(msg.sender)] >= 37835 * block.gasprice:
        if gooBalanceOf[address(msg.sender)] >= 37835 * block.gasprice:
            gooBalanceOf[address(msg.sender)] += -37835 * block.gasprice
            call msg.sender with:
               value 37835 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if gooBalanceOf[address(msg.sender)] <= 0:
            if gooBalanceOf[address(msg.sender)] >= 37835 * block.gasprice:
                gooBalanceOf[address(msg.sender)] += -37835 * block.gasprice
                call msg.sender with:
                   value 37835 * block.gasprice wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)]:
                gooBalanceOf[address(msg.sender)] = 0
                call msg.sender with:
                   value gooBalanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    emit etherSent(msg.value);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if gooBalanceOf[address(msg.sender)] >= 37278 * block.gasprice:
        if gooBalanceOf[address(msg.sender)] >= 37278 * block.gasprice:
            gooBalanceOf[address(msg.sender)] += -37278 * block.gasprice
            call msg.sender with:
               value 37278 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if gooBalanceOf[address(msg.sender)] <= 0:
            if gooBalanceOf[address(msg.sender)] >= 37278 * block.gasprice:
                gooBalanceOf[address(msg.sender)] += -37278 * block.gasprice
                call msg.sender with:
                   value 37278 * block.gasprice wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)]:
                gooBalanceOf[address(msg.sender)] = 0
                call msg.sender with:
                   value gooBalanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
        if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
            gooBalanceOf[address(msg.sender)] += -36120 * block.gasprice
            call msg.sender with:
               value 36120 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if gooBalanceOf[address(msg.sender)] <= 0:
            if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
                gooBalanceOf[address(msg.sender)] += -36120 * block.gasprice
                call msg.sender with:
                   value 36120 * block.gasprice wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)]:
                gooBalanceOf[address(msg.sender)] = 0
                call msg.sender with:
                   value gooBalanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    return 1
}

function _fallback() payable {
    if Mask(8, 248, stor4[address(msg.sender)]) > 0:
        require incirculation + (10000 * msg.value / 390625 * 10^10) <= 10^10
        incirculation += 10000 * msg.value / 390625 * 10^10
        balanceOf[address(msg.sender)] += 10000 * msg.value / 390625 * 10^10
        gooBalanceOf[address(msg.sender)] += msg.value
        if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
            if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
                gooBalanceOf[address(msg.sender)] += -36120 * block.gasprice
                call msg.sender with:
                   value 36120 * block.gasprice wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if gooBalanceOf[address(msg.sender)] <= 0:
                if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
                    gooBalanceOf[address(msg.sender)] += -36120 * block.gasprice
                    call msg.sender with:
                       value 36120 * block.gasprice wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)]:
                    gooBalanceOf[address(msg.sender)] = 0
                    call msg.sender with:
                       value gooBalanceOf[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        emit tokensCreated(10000 * msg.value / 390625 * 10^10, msg.value);
    else:
        s = 0
        idx = 0
        s = 0
        while idx < 20:
            require 2^(8 * -idx + 19)
            if msg.sender / 2^(8 * -idx + 19) << 248 <= Mask(8, 248, s):
                s = msg.sender / 2^(8 * -idx + 19) << 248
                idx = idx + 1
                s = s
                continue 
            s = msg.sender / 2^(8 * -idx + 19) << 248
            idx = idx + 1
            s = msg.sender / 2^(8 * -idx + 19) << 248
            continue 
        stor4[address(msg.sender)] = Mask(8, 248, s) >> 248
        require (390625 * 10^10 * Mask(8, 248, s) >> 248) + 390625 * 10^10
        require incirculation + (10000 * msg.value / (390625 * 10^10 * Mask(8, 248, s) >> 248) + 390625 * 10^10) <= 10^10
        incirculation += 10000 * msg.value / (390625 * 10^10 * Mask(8, 248, s) >> 248) + 390625 * 10^10
        balanceOf[address(msg.sender)] += 10000 * msg.value / (390625 * 10^10 * Mask(8, 248, s) >> 248) + 390625 * 10^10
        gooBalanceOf[address(msg.sender)] += msg.value
        if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
            if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
                gooBalanceOf[address(msg.sender)] += -36120 * block.gasprice
                call msg.sender with:
                   value 36120 * block.gasprice wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if gooBalanceOf[address(msg.sender)] <= 0:
                if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
                    gooBalanceOf[address(msg.sender)] += -36120 * block.gasprice
                    call msg.sender with:
                       value 36120 * block.gasprice wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)]:
                    gooBalanceOf[address(msg.sender)] = 0
                    call msg.sender with:
                       value gooBalanceOf[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        emit tokensCreated(10000 * msg.value / (390625 * 10^10 * Mask(8, 248, s) >> 248) + 390625 * 10^10, msg.value);
}

function leakEther() {
    if block.timestamp - stor5[address(msg.sender)] < 24 * 3600:
        if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
            if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
                gooBalanceOf[address(msg.sender)] += -36120 * block.gasprice
                call msg.sender with:
                   value 36120 * block.gasprice wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if gooBalanceOf[address(msg.sender)] <= 0:
                if gooBalanceOf[address(msg.sender)] >= 36120 * block.gasprice:
                    gooBalanceOf[address(msg.sender)] += -36120 * block.gasprice
                    call msg.sender with:
                       value 36120 * block.gasprice wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)]:
                    gooBalanceOf[address(msg.sender)] = 0
                    call msg.sender with:
                       value gooBalanceOf[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        emit etherLeaked(0);
    else:
        require Mask(8, 248, stor4[address(msg.sender)]) <= 0
        s = 0
        idx = 0
        s = 0
        while idx < 20:
            require 2^(8 * -idx + 19)
            if msg.sender / 2^(8 * -idx + 19) << 248 <= Mask(8, 248, s):
                s = msg.sender / 2^(8 * -idx + 19) << 248
                idx = idx + 1
                s = s
                continue 
            s = msg.sender / 2^(8 * -idx + 19) << 248
            idx = idx + 1
            s = msg.sender / 2^(8 * -idx + 19) << 248
            continue 
        stor4[address(msg.sender)] = Mask(8, 248, s) >> 248
        require Mask(8, 248, s) >> 248
        if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)] / Mask(8, 248, s) >> 248:
            if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)] / Mask(8, 248, s) >> 248:
                stor5[address(msg.sender)] = block.timestamp
                gooBalanceOf[address(msg.sender)] -= gooBalanceOf[address(msg.sender)] / Mask(8, 248, s) >> 248
                call msg.sender with:
                   value gooBalanceOf[address(msg.sender)] / Mask(8, 248, s) >> 248 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if gooBalanceOf[address(msg.sender)] >= 36479 * block.gasprice:
                    if gooBalanceOf[address(msg.sender)] >= 36479 * block.gasprice:
                        gooBalanceOf[address(msg.sender)] += -36479 * block.gasprice
                        call msg.sender with:
                           value 36479 * block.gasprice wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    if gooBalanceOf[address(msg.sender)] <= 0:
                        if gooBalanceOf[address(msg.sender)] >= 36479 * block.gasprice:
                            gooBalanceOf[address(msg.sender)] += -36479 * block.gasprice
                            call msg.sender with:
                               value 36479 * block.gasprice wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)]:
                            gooBalanceOf[address(msg.sender)] = 0
                            call msg.sender with:
                               value gooBalanceOf[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                emit etherLeaked((gooBalanceOf[address(msg.sender)] / Mask(8, 248, s) >> 248));
        else:
            if gooBalanceOf[address(msg.sender)] <= 0:
                if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)] / Mask(8, 248, s) >> 248:
                    stor5[address(msg.sender)] = block.timestamp
                    gooBalanceOf[address(msg.sender)] -= gooBalanceOf[address(msg.sender)] / Mask(8, 248, s) >> 248
                    call msg.sender with:
                       value gooBalanceOf[address(msg.sender)] / Mask(8, 248, s) >> 248 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if gooBalanceOf[address(msg.sender)] >= 36479 * block.gasprice:
                        if gooBalanceOf[address(msg.sender)] >= 36479 * block.gasprice:
                            gooBalanceOf[address(msg.sender)] += -36479 * block.gasprice
                            call msg.sender with:
                               value 36479 * block.gasprice wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        if gooBalanceOf[address(msg.sender)] <= 0:
                            if gooBalanceOf[address(msg.sender)] >= 36479 * block.gasprice:
                                gooBalanceOf[address(msg.sender)] += -36479 * block.gasprice
                                call msg.sender with:
                                   value 36479 * block.gasprice wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)]:
                                gooBalanceOf[address(msg.sender)] = 0
                                call msg.sender with:
                                   value gooBalanceOf[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                    emit etherLeaked((gooBalanceOf[address(msg.sender)] / Mask(8, 248, s) >> 248));
            else:
                if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)]:
                    stor5[address(msg.sender)] = block.timestamp
                    gooBalanceOf[address(msg.sender)] = 0
                    call msg.sender with:
                       value gooBalanceOf[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if gooBalanceOf[address(msg.sender)] >= 36479 * block.gasprice:
                        if gooBalanceOf[address(msg.sender)] >= 36479 * block.gasprice:
                            gooBalanceOf[address(msg.sender)] += -36479 * block.gasprice
                            call msg.sender with:
                               value 36479 * block.gasprice wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        if gooBalanceOf[address(msg.sender)] <= 0:
                            if gooBalanceOf[address(msg.sender)] >= 36479 * block.gasprice:
                                gooBalanceOf[address(msg.sender)] += -36479 * block.gasprice
                                call msg.sender with:
                                   value 36479 * block.gasprice wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if gooBalanceOf[address(msg.sender)] >= gooBalanceOf[address(msg.sender)]:
                                gooBalanceOf[address(msg.sender)] = 0
                                call msg.sender with:
                                   value gooBalanceOf[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                    emit etherLeaked(gooBalanceOf[address(msg.sender)]);
}



}
