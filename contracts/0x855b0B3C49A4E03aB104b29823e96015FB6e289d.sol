contract main {




// =====================  Runtime code  =====================


const sub_125fdbbc(?) = 5

const sub_87e70928(?) = (92500 * 10^6 * 3600)

const sub_daff31b2(?) = 777 * 10^12

const sub_f377d7ab(?) = 0

const ADMIN_FEE = 10

const ONE_DAY = (24 * 3600)

const MINIMUM = 10^17

const ONE_HUNDRED = 100


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of struct deposit;
address adminAddress;
uint256 maxBalance;
uint256 start;
uint8 stor13;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function getDeposit(address arg1, uint256 arg2) {
    require arg2 < deposit[address(arg1)].field_0
    return deposit[address(arg1)][arg2].field_0
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function maxBalance() {
    return maxBalance
}

function getRefBonus(address arg1) {
    return deposit[address(arg1)].field_512
}

function symbol() {
    return symbol[0 len symbol.length]
}

function users(address arg1) {
    return deposit[arg1].field_256, deposit[arg1].field_512
}

function finalized() {
    return bool(stor13)
}

function start() {
    return start
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function dividendsOf(address arg1) {
    if not stor8:
        require stor6[address(arg1)] <= 0
        if stor7:
            return (-stor6[address(arg1)] / stor7)
    else:
        if stor8:
            require stor8 * balanceOf[address(arg1)] / stor8 == balanceOf[address(arg1)]
            require stor6[address(arg1)] <= stor8 * balanceOf[address(arg1)]
            if stor7:
                return ((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7)
    revert
}

function myDividends() {
    if not stor8:
        require stor6[address(msg.sender)] <= 0
        if stor7:
            return (-stor6[address(msg.sender)] / stor7)
    else:
        if stor8:
            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
            if stor7:
                return ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7)
    revert
}

function getPercent() {
    if block.timestamp < start:
        return 0
    require start <= block.timestamp
    if block.timestamp - start < 1440 * 24 * 3600:
        return (((10 * 10^18 * block.timestamp) - (10 * 10^18 * start) / 60 / 24 * 3600) + 10 * 10^18)
    if block.timestamp - start < 2880 * 24 * 3600:
        return (((15 * 10^18 * block.timestamp) + (-15 * 10^18 * start) - (6 * 10^18 * 24 * 3600 * 24 * 3600) / 60 / 24 * 3600) + 20 * 10^18)
    if block.timestamp - start < 4320 * 24 * 3600:
        return (((20 * 10^18 * block.timestamp) + (-20 * 10^18 * start) - (16 * 10^18 * 3600 * 24 * 3600) / 60 / 24 * 3600) + 35 * 10^18)
    if block.timestamp - start >= 2 * 3600 * 24 * 3600:
        return (((10 * 10^18 * block.timestamp) + (-10 * 10^18 * start) - (20 * 10^18 * 3600 * 24 * 3600) / 30 / 24 * 3600) + 100 * 10^18)
    return (((125 * 10^14 * 3600 * block.timestamp) + (-45 * 10^18 * start) - (15 * 10^15 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 120 / 24 * 3600) + 55 * 10^18)
}

function getDeposits(address arg1) {
    idx = 0
    s = 0
    while idx < deposit[address(arg1)].field_0:
        require idx < deposit[address(arg1)].field_0
        mem[0] = arg1
        mem[32] = 9
        idx = idx + 1
        s = s + deposit[address(arg1)][idx].field_0
        continue 
    return (s * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0)
}

function getProfit(address arg1) {
    if not deposit[address(arg1)].field_0:
        return 0
    if block.timestamp < start:
        idx = 0
        while idx < deposit[address(arg1)].field_0:
            require idx < deposit[address(arg1)].field_0
            require idx < deposit[address(arg1)].field_0
            mem[0] = arg1
            mem[32] = 9
            idx = idx + 1
            continue 
        return 0
    require start <= block.timestamp
    if block.timestamp - start < 1440 * 24 * 3600:
        idx = 0
        s = 0
        while idx < deposit[address(arg1)].field_0:
            require idx < deposit[address(arg1)].field_0
            require idx < deposit[address(arg1)].field_0
            mem[0] = arg1
            mem[32] = 9
            idx = idx + 1
            s = s + ((block.timestamp * (10 * 10^18 * deposit[address(arg1)][idx].field_0) + ((10 * 10^18 * block.timestamp) - (10 * 10^18 * start) / 60 / 24 * 3600 * deposit[address(arg1)][idx].field_0) / 1000 * 10^18) - (deposit[address(arg1)][idx].field_256 * (10 * 10^18 * deposit[address(arg1)][idx].field_0) + ((10 * 10^18 * block.timestamp) - (10 * 10^18 * start) / 60 / 24 * 3600 * deposit[address(arg1)][idx].field_0) / 1000 * 10^18) / 24 * 3600)
            continue 
    else:
        if block.timestamp - start < 2880 * 24 * 3600:
            idx = 0
            s = 0
            while idx < deposit[address(arg1)].field_0:
                require idx < deposit[address(arg1)].field_0
                require idx < deposit[address(arg1)].field_0
                mem[0] = arg1
                mem[32] = 9
                idx = idx + 1
                s = s + ((block.timestamp * (20 * 10^18 * deposit[address(arg1)][idx].field_0) + ((15 * 10^18 * block.timestamp) + (-15 * 10^18 * start) - (6 * 10^18 * 24 * 3600 * 24 * 3600) / 60 / 24 * 3600 * deposit[address(arg1)][idx].field_0) / 1000 * 10^18) - (deposit[address(arg1)][idx].field_256 * (20 * 10^18 * deposit[address(arg1)][idx].field_0) + ((15 * 10^18 * block.timestamp) + (-15 * 10^18 * start) - (6 * 10^18 * 24 * 3600 * 24 * 3600) / 60 / 24 * 3600 * deposit[address(arg1)][idx].field_0) / 1000 * 10^18) / 24 * 3600)
                continue 
        else:
            if block.timestamp - start < 4320 * 24 * 3600:
                idx = 0
                s = 0
                while idx < deposit[address(arg1)].field_0:
                    require idx < deposit[address(arg1)].field_0
                    require idx < deposit[address(arg1)].field_0
                    mem[0] = arg1
                    mem[32] = 9
                    idx = idx + 1
                    s = s + ((block.timestamp * (35 * 10^18 * deposit[address(arg1)][idx].field_0) + ((20 * 10^18 * block.timestamp) + (-20 * 10^18 * start) - (16 * 10^18 * 3600 * 24 * 3600) / 60 / 24 * 3600 * deposit[address(arg1)][idx].field_0) / 1000 * 10^18) - (deposit[address(arg1)][idx].field_256 * (35 * 10^18 * deposit[address(arg1)][idx].field_0) + ((20 * 10^18 * block.timestamp) + (-20 * 10^18 * start) - (16 * 10^18 * 3600 * 24 * 3600) / 60 / 24 * 3600 * deposit[address(arg1)][idx].field_0) / 1000 * 10^18) / 24 * 3600)
                    continue 
            else:
                if block.timestamp - start >= 2 * 3600 * 24 * 3600:
                    idx = 0
                    s = 0
                    while idx < deposit[address(arg1)].field_0:
                        require idx < deposit[address(arg1)].field_0
                        require idx < deposit[address(arg1)].field_0
                        mem[0] = arg1
                        mem[32] = 9
                        idx = idx + 1
                        s = s + ((block.timestamp * (100 * 10^18 * deposit[address(arg1)][idx].field_0) + ((10 * 10^18 * block.timestamp) + (-10 * 10^18 * start) - (20 * 10^18 * 3600 * 24 * 3600) / 30 / 24 * 3600 * deposit[address(arg1)][idx].field_0) / 1000 * 10^18) - (deposit[address(arg1)][idx].field_256 * (100 * 10^18 * deposit[address(arg1)][idx].field_0) + ((10 * 10^18 * block.timestamp) + (-10 * 10^18 * start) - (20 * 10^18 * 3600 * 24 * 3600) / 30 / 24 * 3600 * deposit[address(arg1)][idx].field_0) / 1000 * 10^18) / 24 * 3600)
                        continue 
                else:
                    idx = 0
                    s = 0
                    while idx < deposit[address(arg1)].field_0:
                        require idx < deposit[address(arg1)].field_0
                        require idx < deposit[address(arg1)].field_0
                        mem[0] = arg1
                        mem[32] = 9
                        idx = idx + 1
                        s = s + ((block.timestamp * (55 * 10^18 * deposit[address(arg1)][idx].field_0) + ((125 * 10^14 * 3600 * block.timestamp) + (-45 * 10^18 * start) - (15 * 10^15 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 120 / 24 * 3600 * deposit[address(arg1)][idx].field_0) / 1000 * 10^18) - (deposit[address(arg1)][idx].field_256 * (55 * 10^18 * deposit[address(arg1)][idx].field_0) + ((125 * 10^14 * 3600 * block.timestamp) + (-45 * 10^18 * start) - (15 * 10^15 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 120 / 24 * 3600 * deposit[address(arg1)][idx].field_0) / 1000 * 10^18) / 24 * 3600)
                        continue 
    return (s * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0 * deposit[address(arg1)].field_0)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    if not stor8:
        require stor6[address(arg1)] <= 0
        require stor7
        if -stor6[address(arg1)] / stor7 > 0:
            if not stor8:
                require stor6[address(arg1)] <= 0
                require stor7
                if -stor6[address(arg1)] / stor7 > 0:
                    if not stor8:
                        require stor6[address(arg1)] <= 0
                        require stor7
                        require stor6[address(arg1)] + (-stor6[address(arg1)] / stor7 * stor7) >= stor6[address(arg1)]
                        stor6[address(arg1)] += -stor6[address(arg1)] / stor7 * stor7
                    else:
                        require stor8
                        require stor8 * balanceOf[address(arg1)] / stor8 == balanceOf[address(arg1)]
                        require stor6[address(arg1)] <= stor8 * balanceOf[address(arg1)]
                        require stor7
                        require stor6[address(arg1)] + ((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 * stor7) >= stor6[address(arg1)]
                        stor6[address(arg1)] += (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 * stor7
                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                    if 92500 * 10^6 * 3600 != msg.value:
                        if -stor6[address(arg1)] / stor7 <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call arg1 with:
                               value -stor6[address(arg1)] / stor7 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((-stor6[address(arg1)] / stor7), arg1);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call arg1 with:
                               value eth.balance(this.address) - (10 * maxBalance / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), arg1);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
                    else:
                        if (-stor6[address(arg1)] / stor7) + (92500 * 10^6 * 3600) <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call arg1 with:
                               value (-stor6[address(arg1)] / stor7) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((-stor6[address(arg1)] / stor7), arg1);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call arg1 with:
                               value eth.balance(this.address) + -(10 * maxBalance / 100) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), arg1);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
            else:
                require stor8
                require stor8 * balanceOf[address(arg1)] / stor8 == balanceOf[address(arg1)]
                require stor6[address(arg1)] <= stor8 * balanceOf[address(arg1)]
                require stor7
                if (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 > 0:
                    if not stor8:
                        require stor6[address(arg1)] <= 0
                        require stor7
                        require stor6[address(arg1)] + (-stor6[address(arg1)] / stor7 * stor7) >= stor6[address(arg1)]
                        stor6[address(arg1)] += -stor6[address(arg1)] / stor7 * stor7
                    else:
                        require stor8
                        require stor8 * balanceOf[address(arg1)] / stor8 == balanceOf[address(arg1)]
                        require stor6[address(arg1)] <= stor8 * balanceOf[address(arg1)]
                        require stor7
                        require stor6[address(arg1)] + ((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 * stor7) >= stor6[address(arg1)]
                        stor6[address(arg1)] += (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 * stor7
                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                    if 92500 * 10^6 * 3600 != msg.value:
                        if (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call arg1 with:
                               value (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed(((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7), arg1);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call arg1 with:
                               value eth.balance(this.address) - (10 * maxBalance / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), arg1);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
                    else:
                        if ((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7) + (92500 * 10^6 * 3600) <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call arg1 with:
                               value ((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed(((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7), arg1);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call arg1 with:
                               value eth.balance(this.address) + -(10 * maxBalance / 100) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), arg1);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
    else:
        require stor8
        require stor8 * balanceOf[address(arg1)] / stor8 == balanceOf[address(arg1)]
        require stor6[address(arg1)] <= stor8 * balanceOf[address(arg1)]
        require stor7
        if (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 > 0:
            if not stor8:
                require stor6[address(arg1)] <= 0
                require stor7
                if -stor6[address(arg1)] / stor7 > 0:
                    if not stor8:
                        require stor6[address(arg1)] <= 0
                        require stor7
                        require stor6[address(arg1)] + (-stor6[address(arg1)] / stor7 * stor7) >= stor6[address(arg1)]
                        stor6[address(arg1)] += -stor6[address(arg1)] / stor7 * stor7
                    else:
                        require stor8
                        require stor8 * balanceOf[address(arg1)] / stor8 == balanceOf[address(arg1)]
                        require stor6[address(arg1)] <= stor8 * balanceOf[address(arg1)]
                        require stor7
                        require stor6[address(arg1)] + ((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 * stor7) >= stor6[address(arg1)]
                        stor6[address(arg1)] += (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 * stor7
                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                    if 92500 * 10^6 * 3600 != msg.value:
                        if -stor6[address(arg1)] / stor7 <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call arg1 with:
                               value -stor6[address(arg1)] / stor7 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((-stor6[address(arg1)] / stor7), arg1);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call arg1 with:
                               value eth.balance(this.address) - (10 * maxBalance / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), arg1);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
                    else:
                        if (-stor6[address(arg1)] / stor7) + (92500 * 10^6 * 3600) <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call arg1 with:
                               value (-stor6[address(arg1)] / stor7) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((-stor6[address(arg1)] / stor7), arg1);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call arg1 with:
                               value eth.balance(this.address) + -(10 * maxBalance / 100) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), arg1);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
            else:
                require stor8
                require stor8 * balanceOf[address(arg1)] / stor8 == balanceOf[address(arg1)]
                require stor6[address(arg1)] <= stor8 * balanceOf[address(arg1)]
                require stor7
                if (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 > 0:
                    if not stor8:
                        require stor6[address(arg1)] <= 0
                        require stor7
                        require stor6[address(arg1)] + (-stor6[address(arg1)] / stor7 * stor7) >= stor6[address(arg1)]
                        stor6[address(arg1)] += -stor6[address(arg1)] / stor7 * stor7
                    else:
                        require stor8
                        require stor8 * balanceOf[address(arg1)] / stor8 == balanceOf[address(arg1)]
                        require stor6[address(arg1)] <= stor8 * balanceOf[address(arg1)]
                        require stor7
                        require stor6[address(arg1)] + ((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 * stor7) >= stor6[address(arg1)]
                        stor6[address(arg1)] += (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 * stor7
                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                    if 92500 * 10^6 * 3600 != msg.value:
                        if (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call arg1 with:
                               value (stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed(((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7), arg1);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call arg1 with:
                               value eth.balance(this.address) - (10 * maxBalance / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), arg1);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
                    else:
                        if ((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7) + (92500 * 10^6 * 3600) <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call arg1 with:
                               value ((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed(((stor8 * balanceOf[address(arg1)]) - stor6[address(arg1)] / stor7), arg1);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call arg1 with:
                               value eth.balance(this.address) + -(10 * maxBalance / 100) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), arg1);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    stor6[address(arg1)] += -1 * stor8 * arg3
    stor6[address(arg2)] += stor8 * arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if not stor8:
        require stor6[address(msg.sender)] <= 0
        require stor7
        if -stor6[address(msg.sender)] / stor7 > 0:
            if not stor8:
                require stor6[address(msg.sender)] <= 0
                require stor7
                if -stor6[address(msg.sender)] / stor7 > 0:
                    if not stor8:
                        require stor6[address(msg.sender)] <= 0
                        require stor7
                        require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                    else:
                        require stor8
                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                        require stor7
                        require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                    if 92500 * 10^6 * 3600 != msg.value:
                        if -stor6[address(msg.sender)] / stor7 <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value -stor6[address(msg.sender)] / stor7 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) - (10 * maxBalance / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
                    else:
                        if (-stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value (-stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) + -(10 * maxBalance / 100) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
            else:
                require stor8
                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                require stor7
                if (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 > 0:
                    if not stor8:
                        require stor6[address(msg.sender)] <= 0
                        require stor7
                        require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                    else:
                        require stor8
                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                        require stor7
                        require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                    if 92500 * 10^6 * 3600 != msg.value:
                        if (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) - (10 * maxBalance / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
                    else:
                        if ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) + -(10 * maxBalance / 100) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
    else:
        require stor8
        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
        require stor7
        if (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 > 0:
            if not stor8:
                require stor6[address(msg.sender)] <= 0
                require stor7
                if -stor6[address(msg.sender)] / stor7 > 0:
                    if not stor8:
                        require stor6[address(msg.sender)] <= 0
                        require stor7
                        require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                    else:
                        require stor8
                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                        require stor7
                        require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                    if 92500 * 10^6 * 3600 != msg.value:
                        if -stor6[address(msg.sender)] / stor7 <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value -stor6[address(msg.sender)] / stor7 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) - (10 * maxBalance / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
                    else:
                        if (-stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value (-stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) + -(10 * maxBalance / 100) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
            else:
                require stor8
                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                require stor7
                if (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 > 0:
                    if not stor8:
                        require stor6[address(msg.sender)] <= 0
                        require stor7
                        require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                    else:
                        require stor8
                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                        require stor7
                        require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                    if 92500 * 10^6 * 3600 != msg.value:
                        if (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) - (10 * maxBalance / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
                    else:
                        if ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) + -(10 * maxBalance / 100) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    stor6[address(msg.sender)] += -1 * stor8 * arg2
    stor6[address(arg1)] += stor8 * arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if not msg.value:
        if deposit[address(msg.sender)].field_512 > 0:
            deposit[address(msg.sender)].field_512 = 0
            require 10 * maxBalance / 100 <= eth.balance(this.address)
            if deposit[address(msg.sender)].field_512 <= eth.balance(this.address) - (10 * maxBalance / 100):
                call msg.sender with:
                   value deposit[address(msg.sender)].field_512 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RefBonusPayed(deposit[address(msg.sender)].field_512, msg.sender);
            else:
                require 10 * maxBalance / 100 <= eth.balance(this.address)
                call msg.sender with:
                   value eth.balance(this.address) - (10 * maxBalance / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RefBonusPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                call adminAddress with:
                   value 10 * maxBalance / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor13 = 1
                emit Finalized((10 * maxBalance / 100));
    else:
        if msg.value == 92500 * 10^6 * 3600:
            if not stor8:
                require stor6[address(msg.sender)] <= 0
                require stor7
                if -stor6[address(msg.sender)] / stor7 > 0:
                    if not stor8:
                        require stor6[address(msg.sender)] <= 0
                        require stor7
                        require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                    else:
                        require stor8
                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                        require stor7
                        require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                    if 92500 * 10^6 * 3600 != msg.value:
                        if -stor6[address(msg.sender)] / stor7 <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value -stor6[address(msg.sender)] / stor7 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) - (10 * maxBalance / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
                    else:
                        if (-stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value (-stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) + -(10 * maxBalance / 100) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
            else:
                require stor8
                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                require stor7
                if (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 > 0:
                    if not stor8:
                        require stor6[address(msg.sender)] <= 0
                        require stor7
                        require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                    else:
                        require stor8
                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                        require stor7
                        require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                    if 92500 * 10^6 * 3600 != msg.value:
                        if (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) - (10 * maxBalance / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
                    else:
                        if ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) <= eth.balance(this.address) - (10 * maxBalance / 100):
                            call msg.sender with:
                               value ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                        else:
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) + -(10 * maxBalance / 100) + (92500 * 10^6 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit DividendsPayed((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                            call adminAddress with:
                               value 10 * maxBalance / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 1
                            emit Finalized((10 * maxBalance / 100));
        else:
            if 777 * 10^12 != msg.value:
                require block.timestamp >= start
                require not stor13
                require msg.value >= 10^17
                call adminAddress with:
                   value 10 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                deposit[address(msg.sender)].field_0++
                deposit[address(msg.sender)][deposit[address(msg.sender)].field_0].field_0 = msg.value
                deposit[address(msg.sender)][deposit[address(msg.sender)].field_0].field_256 = block.timestamp
                if deposit[address(msg.sender)].field_256:
                    deposit[deposit[address(msg.sender)].field_256].field_512 += 5 * msg.value / 100
                    emit RefBonusAdded((5 * msg.value / 100), msg.sender, deposit[address(msg.sender)].field_256);
                else:
                    if calldata.size == 20:
                        mem[192 len calldata.size] = call.data[0 len calldata.size]
                        if mem[192 len 20] != msg.sender:
                            idx = 0
                            s = 0
                            while idx < deposit[mem[192 len 20]].field_0:
                                require idx < deposit[address(mem[192 len 20])].field_0
                                mem[0] = mem[192 len 20]
                                mem[32] = 9
                                idx = idx + 1
                                s = s + deposit[address(mem[192 len 20])][idx].field_0
                                continue 
                            if s * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 * deposit[mem[192 len 20]].field_0 >= 8 * 10^18:
                                deposit[address(msg.sender)].field_256 = mem[192 len 20]
                                deposit[deposit[address(msg.sender)].field_256].field_512 += 5 * msg.value / 100
                                emit RefBonusAdded((5 * msg.value / 100), msg.sender, deposit[address(msg.sender)].field_256);
                                emit ReferrerAdded(msg.sender, mem[192 len 20]);
                if deposit[address(msg.sender)].field_0 == 1:
                    emit InvestorAdded(msg.sender);
                if totalSupply > 0:
                    require totalSupply
                    require stor8 + (5 * msg.value / 100 * stor7 / totalSupply) >= stor8
                    stor8 += 5 * msg.value / 100 * stor7 / totalSupply
                    require stor6[address(msg.sender)] + (stor8 * 5 * msg.value / 100) >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += stor8 * 5 * msg.value / 100
                require totalSupply + (5 * msg.value / 100) >= totalSupply
                totalSupply += 5 * msg.value / 100
                require balanceOf[address(msg.sender)] + (5 * msg.value / 100) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 5 * msg.value / 100
                emit Transfer((5 * msg.value / 100), 0, msg.sender);
                maxBalance += msg.value
                emit DepositAdded(msg.value, msg.sender);
            else:
                if not deposit[address(msg.sender)].field_0:
                    if not deposit[address(msg.sender)].field_512:
                        if not stor8:
                            require stor6[address(msg.sender)] <= 0
                            require stor7
                            require -stor6[address(msg.sender)] / stor7
                        else:
                            require stor8
                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                            require stor7
                            require (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7
                        if not stor8:
                            require stor6[address(msg.sender)] <= 0
                            require stor7
                            require -stor6[address(msg.sender)] / stor7 >= 0
                            if not stor8:
                                require stor6[address(msg.sender)] <= 0
                                require stor7
                                emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                            else:
                                require stor8
                                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                require stor7
                                emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                            if not stor8:
                                require stor6[address(msg.sender)] <= 0
                                require stor7
                                require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                            else:
                                require stor8
                                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                require stor7
                                require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                            require -stor6[address(msg.sender)] / stor7 >= 10^17
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            if (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                deposit[address(msg.sender)].field_0 = 0
                                idx = 0
                                while 2 * deposit[address(msg.sender)].field_0 > idx:
                                    deposit[address(msg.sender)][idx].field_0 = 0
                                    deposit[address(msg.sender)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                                deposit[address(msg.sender)].field_256 = 0
                                deposit[address(msg.sender)].field_512 = 0
                                call msg.sender with:
                                   value (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdrawn((-stor6[address(msg.sender)] / stor7), msg.sender);
                            else:
                                require 10 * maxBalance / 100 <= eth.balance(this.address)
                                deposit[address(msg.sender)].field_0 = 0
                                idx = 0
                                while 2 * deposit[address(msg.sender)].field_0 > idx:
                                    deposit[address(msg.sender)][idx].field_0 = 0
                                    deposit[address(msg.sender)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                                deposit[address(msg.sender)].field_256 = 0
                                deposit[address(msg.sender)].field_512 = 0
                                call msg.sender with:
                                   value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                call adminAddress with:
                                   value 10 * maxBalance / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor13 = 1
                                emit Finalized((10 * maxBalance / 100));
                        else:
                            require stor8
                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                            require stor7
                            require (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 >= 0
                            if not stor8:
                                require stor6[address(msg.sender)] <= 0
                                require stor7
                                emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                            else:
                                require stor8
                                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                require stor7
                                emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                            if not stor8:
                                require stor6[address(msg.sender)] <= 0
                                require stor7
                                require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                            else:
                                require stor8
                                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                require stor7
                                require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                            require (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 >= 10^17
                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                            if ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                deposit[address(msg.sender)].field_0 = 0
                                idx = 0
                                while 2 * deposit[address(msg.sender)].field_0 > idx:
                                    deposit[address(msg.sender)][idx].field_0 = 0
                                    deposit[address(msg.sender)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                                deposit[address(msg.sender)].field_256 = 0
                                deposit[address(msg.sender)].field_512 = 0
                                call msg.sender with:
                                   value ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdrawn(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                            else:
                                require 10 * maxBalance / 100 <= eth.balance(this.address)
                                deposit[address(msg.sender)].field_0 = 0
                                idx = 0
                                while 2 * deposit[address(msg.sender)].field_0 > idx:
                                    deposit[address(msg.sender)][idx].field_0 = 0
                                    deposit[address(msg.sender)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                                deposit[address(msg.sender)].field_256 = 0
                                deposit[address(msg.sender)].field_512 = 0
                                call msg.sender with:
                                   value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                call adminAddress with:
                                   value 10 * maxBalance / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor13 = 1
                                emit Finalized((10 * maxBalance / 100));
                    else:
                        require deposit[address(msg.sender)].field_512 >= 0
                        emit RefBonusPayed(deposit[address(msg.sender)].field_512, msg.sender);
                        deposit[address(msg.sender)].field_512 = 0
                        if not stor8:
                            require stor6[address(msg.sender)] <= 0
                            require stor7
                            if not -stor6[address(msg.sender)] / stor7:
                                require deposit[address(msg.sender)].field_512 >= 10^17
                                require 10 * maxBalance / 100 <= eth.balance(this.address)
                                if deposit[address(msg.sender)].field_512 + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                    deposit[address(msg.sender)].field_0 = 0
                                    idx = 0
                                    while 2 * deposit[address(msg.sender)].field_0 > idx:
                                        deposit[address(msg.sender)][idx].field_0 = 0
                                        deposit[address(msg.sender)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                    deposit[address(msg.sender)].field_256 = 0
                                    deposit[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value deposit[address(msg.sender)].field_512 + 777 * 10^12 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdrawn(deposit[address(msg.sender)].field_512, msg.sender);
                                else:
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    deposit[address(msg.sender)].field_0 = 0
                                    idx = 0
                                    while 2 * deposit[address(msg.sender)].field_0 > idx:
                                        deposit[address(msg.sender)][idx].field_0 = 0
                                        deposit[address(msg.sender)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                    deposit[address(msg.sender)].field_256 = 0
                                    deposit[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                    call adminAddress with:
                                       value 10 * maxBalance / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 1
                                    emit Finalized((10 * maxBalance / 100));
                            else:
                                if not stor8:
                                    require stor6[address(msg.sender)] <= 0
                                    require stor7
                                    require deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) >= deposit[address(msg.sender)].field_512
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                        stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                        stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                    require deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) >= 10^17
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    if deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7)), msg.sender);
                                    else:
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                        call adminAddress with:
                                           value 10 * maxBalance / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 1
                                        emit Finalized((10 * maxBalance / 100));
                                else:
                                    require stor8
                                    require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                    require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                    require stor7
                                    require deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= deposit[address(msg.sender)].field_512
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                        stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                        stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                    require deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= 10^17
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    if deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7)), msg.sender);
                                    else:
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                        call adminAddress with:
                                           value 10 * maxBalance / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 1
                                        emit Finalized((10 * maxBalance / 100));
                        else:
                            require stor8
                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                            require stor7
                            if not (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7:
                                require deposit[address(msg.sender)].field_512 >= 10^17
                                require 10 * maxBalance / 100 <= eth.balance(this.address)
                                if deposit[address(msg.sender)].field_512 + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                    deposit[address(msg.sender)].field_0 = 0
                                    idx = 0
                                    while 2 * deposit[address(msg.sender)].field_0 > idx:
                                        deposit[address(msg.sender)][idx].field_0 = 0
                                        deposit[address(msg.sender)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                    deposit[address(msg.sender)].field_256 = 0
                                    deposit[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value deposit[address(msg.sender)].field_512 + 777 * 10^12 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdrawn(deposit[address(msg.sender)].field_512, msg.sender);
                                else:
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    deposit[address(msg.sender)].field_0 = 0
                                    idx = 0
                                    while 2 * deposit[address(msg.sender)].field_0 > idx:
                                        deposit[address(msg.sender)][idx].field_0 = 0
                                        deposit[address(msg.sender)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                    deposit[address(msg.sender)].field_256 = 0
                                    deposit[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                    call adminAddress with:
                                       value 10 * maxBalance / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 1
                                    emit Finalized((10 * maxBalance / 100));
                            else:
                                if not stor8:
                                    require stor6[address(msg.sender)] <= 0
                                    require stor7
                                    require deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) >= deposit[address(msg.sender)].field_512
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                        stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                        stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                    require deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) >= 10^17
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    if deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7)), msg.sender);
                                    else:
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                        call adminAddress with:
                                           value 10 * maxBalance / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 1
                                        emit Finalized((10 * maxBalance / 100));
                                else:
                                    require stor8
                                    require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                    require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                    require stor7
                                    require deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= deposit[address(msg.sender)].field_512
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                        stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                        stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                    require deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= 10^17
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    if deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7)), msg.sender);
                                    else:
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                        call adminAddress with:
                                           value 10 * maxBalance / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 1
                                        emit Finalized((10 * maxBalance / 100));
                else:
                    if block.timestamp < start:
                        idx = 0
                        while idx < deposit[address(msg.sender)].field_0:
                            require idx < deposit[address(msg.sender)].field_0
                            require idx < deposit[address(msg.sender)].field_0
                            mem[0] = msg.sender
                            mem[32] = 9
                            idx = idx + 1
                            continue 
                        if not deposit[address(msg.sender)].field_512:
                            if not stor8:
                                require stor6[address(msg.sender)] <= 0
                                require stor7
                                require -stor6[address(msg.sender)] / stor7
                            else:
                                require stor8
                                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                require stor7
                                require (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7
                            if not stor8:
                                require stor6[address(msg.sender)] <= 0
                                require stor7
                                require -stor6[address(msg.sender)] / stor7 >= 0
                                if not stor8:
                                    require stor6[address(msg.sender)] <= 0
                                    require stor7
                                    emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                else:
                                    require stor8
                                    require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                    require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                    require stor7
                                    emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                if not stor8:
                                    require stor6[address(msg.sender)] <= 0
                                    require stor7
                                    require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                    stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                else:
                                    require stor8
                                    require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                    require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                    require stor7
                                    require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                    stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                require -stor6[address(msg.sender)] / stor7 >= 10^17
                                require 10 * maxBalance / 100 <= eth.balance(this.address)
                                if (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                    deposit[address(msg.sender)].field_0 = 0
                                    idx = 0
                                    while 2 * deposit[address(msg.sender)].field_0 > idx:
                                        deposit[address(msg.sender)][idx].field_0 = 0
                                        deposit[address(msg.sender)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                    deposit[address(msg.sender)].field_256 = 0
                                    deposit[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdrawn((-stor6[address(msg.sender)] / stor7), msg.sender);
                                else:
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    deposit[address(msg.sender)].field_0 = 0
                                    idx = 0
                                    while 2 * deposit[address(msg.sender)].field_0 > idx:
                                        deposit[address(msg.sender)][idx].field_0 = 0
                                        deposit[address(msg.sender)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                    deposit[address(msg.sender)].field_256 = 0
                                    deposit[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                    call adminAddress with:
                                       value 10 * maxBalance / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 1
                                    emit Finalized((10 * maxBalance / 100));
                            else:
                                require stor8
                                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                require stor7
                                require (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 >= 0
                                if not stor8:
                                    require stor6[address(msg.sender)] <= 0
                                    require stor7
                                    emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                else:
                                    require stor8
                                    require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                    require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                    require stor7
                                    emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                if not stor8:
                                    require stor6[address(msg.sender)] <= 0
                                    require stor7
                                    require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                    stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                else:
                                    require stor8
                                    require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                    require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                    require stor7
                                    require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                    stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                require (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 >= 10^17
                                require 10 * maxBalance / 100 <= eth.balance(this.address)
                                if ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                    deposit[address(msg.sender)].field_0 = 0
                                    idx = 0
                                    while 2 * deposit[address(msg.sender)].field_0 > idx:
                                        deposit[address(msg.sender)][idx].field_0 = 0
                                        deposit[address(msg.sender)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                    deposit[address(msg.sender)].field_256 = 0
                                    deposit[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdrawn(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                else:
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    deposit[address(msg.sender)].field_0 = 0
                                    idx = 0
                                    while 2 * deposit[address(msg.sender)].field_0 > idx:
                                        deposit[address(msg.sender)][idx].field_0 = 0
                                        deposit[address(msg.sender)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                    deposit[address(msg.sender)].field_256 = 0
                                    deposit[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                    call adminAddress with:
                                       value 10 * maxBalance / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 1
                                    emit Finalized((10 * maxBalance / 100));
                        else:
                            require deposit[address(msg.sender)].field_512 >= 0
                            emit RefBonusPayed(deposit[address(msg.sender)].field_512, msg.sender);
                            deposit[address(msg.sender)].field_512 = 0
                            if not stor8:
                                require stor6[address(msg.sender)] <= 0
                                require stor7
                                if not -stor6[address(msg.sender)] / stor7:
                                    require deposit[address(msg.sender)].field_512 >= 10^17
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    if deposit[address(msg.sender)].field_512 + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value deposit[address(msg.sender)].field_512 + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn(deposit[address(msg.sender)].field_512, msg.sender);
                                    else:
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                        call adminAddress with:
                                           value 10 * maxBalance / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 1
                                        emit Finalized((10 * maxBalance / 100));
                                else:
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        require deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) >= deposit[address(msg.sender)].field_512
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        require deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= deposit[address(msg.sender)].field_512
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                            else:
                                require stor8
                                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                require stor7
                                if not (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7:
                                    require deposit[address(msg.sender)].field_512 >= 10^17
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    if deposit[address(msg.sender)].field_512 + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value deposit[address(msg.sender)].field_512 + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn(deposit[address(msg.sender)].field_512, msg.sender);
                                    else:
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                        call adminAddress with:
                                           value 10 * maxBalance / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 1
                                        emit Finalized((10 * maxBalance / 100));
                                else:
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        require deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) >= deposit[address(msg.sender)].field_512
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        require deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= deposit[address(msg.sender)].field_512
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                    else:
                        require start <= block.timestamp
                        if block.timestamp - start < 1440 * 24 * 3600:
                            idx = 0
                            s = 0
                            while idx < deposit[address(msg.sender)].field_0:
                                require idx < deposit[address(msg.sender)].field_0
                                require idx < deposit[address(msg.sender)].field_0
                                mem[0] = msg.sender
                                mem[32] = 9
                                idx = idx + 1
                                s = s + ((block.timestamp * (10 * 10^18 * deposit[address(msg.sender)][idx].field_0) + ((10 * 10^18 * block.timestamp) - (10 * 10^18 * start) / 60 / 24 * 3600 * deposit[address(msg.sender)][idx].field_0) / 1000 * 10^18) - (deposit[address(msg.sender)][idx].field_256 * (10 * 10^18 * deposit[address(msg.sender)][idx].field_0) + ((10 * 10^18 * block.timestamp) - (10 * 10^18 * start) / 60 / 24 * 3600 * deposit[address(msg.sender)][idx].field_0) / 1000 * 10^18) / 24 * 3600)
                                continue 
                        else:
                            if block.timestamp - start < 2880 * 24 * 3600:
                                idx = 0
                                s = 0
                                while idx < deposit[address(msg.sender)].field_0:
                                    require idx < deposit[address(msg.sender)].field_0
                                    require idx < deposit[address(msg.sender)].field_0
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    idx = idx + 1
                                    s = s + ((block.timestamp * (20 * 10^18 * deposit[address(msg.sender)][idx].field_0) + ((15 * 10^18 * block.timestamp) + (-15 * 10^18 * start) - (6 * 10^18 * 24 * 3600 * 24 * 3600) / 60 / 24 * 3600 * deposit[address(msg.sender)][idx].field_0) / 1000 * 10^18) - (deposit[address(msg.sender)][idx].field_256 * (20 * 10^18 * deposit[address(msg.sender)][idx].field_0) + ((15 * 10^18 * block.timestamp) + (-15 * 10^18 * start) - (6 * 10^18 * 24 * 3600 * 24 * 3600) / 60 / 24 * 3600 * deposit[address(msg.sender)][idx].field_0) / 1000 * 10^18) / 24 * 3600)
                                    continue 
                            else:
                                if block.timestamp - start < 4320 * 24 * 3600:
                                    idx = 0
                                    s = 0
                                    while idx < deposit[address(msg.sender)].field_0:
                                        require idx < deposit[address(msg.sender)].field_0
                                        require idx < deposit[address(msg.sender)].field_0
                                        mem[0] = msg.sender
                                        mem[32] = 9
                                        idx = idx + 1
                                        s = s + ((block.timestamp * (35 * 10^18 * deposit[address(msg.sender)][idx].field_0) + ((20 * 10^18 * block.timestamp) + (-20 * 10^18 * start) - (16 * 10^18 * 3600 * 24 * 3600) / 60 / 24 * 3600 * deposit[address(msg.sender)][idx].field_0) / 1000 * 10^18) - (deposit[address(msg.sender)][idx].field_256 * (35 * 10^18 * deposit[address(msg.sender)][idx].field_0) + ((20 * 10^18 * block.timestamp) + (-20 * 10^18 * start) - (16 * 10^18 * 3600 * 24 * 3600) / 60 / 24 * 3600 * deposit[address(msg.sender)][idx].field_0) / 1000 * 10^18) / 24 * 3600)
                                        continue 
                                else:
                                    if block.timestamp - start >= 2 * 3600 * 24 * 3600:
                                        idx = 0
                                        s = 0
                                        while idx < deposit[address(msg.sender)].field_0:
                                            require idx < deposit[address(msg.sender)].field_0
                                            require idx < deposit[address(msg.sender)].field_0
                                            mem[0] = msg.sender
                                            mem[32] = 9
                                            idx = idx + 1
                                            s = s + ((block.timestamp * (100 * 10^18 * deposit[address(msg.sender)][idx].field_0) + ((10 * 10^18 * block.timestamp) + (-10 * 10^18 * start) - (20 * 10^18 * 3600 * 24 * 3600) / 30 / 24 * 3600 * deposit[address(msg.sender)][idx].field_0) / 1000 * 10^18) - (deposit[address(msg.sender)][idx].field_256 * (100 * 10^18 * deposit[address(msg.sender)][idx].field_0) + ((10 * 10^18 * block.timestamp) + (-10 * 10^18 * start) - (20 * 10^18 * 3600 * 24 * 3600) / 30 / 24 * 3600 * deposit[address(msg.sender)][idx].field_0) / 1000 * 10^18) / 24 * 3600)
                                            continue 
                                    else:
                                        idx = 0
                                        s = 0
                                        while idx < deposit[address(msg.sender)].field_0:
                                            require idx < deposit[address(msg.sender)].field_0
                                            require idx < deposit[address(msg.sender)].field_0
                                            mem[0] = msg.sender
                                            mem[32] = 9
                                            idx = idx + 1
                                            s = s + ((block.timestamp * (55 * 10^18 * deposit[address(msg.sender)][idx].field_0) + ((125 * 10^14 * 3600 * block.timestamp) + (-45 * 10^18 * start) - (15 * 10^15 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 120 / 24 * 3600 * deposit[address(msg.sender)][idx].field_0) / 1000 * 10^18) - (deposit[address(msg.sender)][idx].field_256 * (55 * 10^18 * deposit[address(msg.sender)][idx].field_0) + ((125 * 10^14 * 3600 * block.timestamp) + (-45 * 10^18 * start) - (15 * 10^15 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 120 / 24 * 3600 * deposit[address(msg.sender)][idx].field_0) / 1000 * 10^18) / 24 * 3600)
                                            continue 
                        if not deposit[address(msg.sender)].field_512:
                            if not stor8:
                                require stor6[address(msg.sender)] <= 0
                                require stor7
                                if not -stor6[address(msg.sender)] / stor7:
                                    require s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 >= 10^17
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0), msg.sender);
                                    else:
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                        call adminAddress with:
                                           value 10 * maxBalance / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 1
                                        emit Finalized((10 * maxBalance / 100));
                                else:
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + (-stor6[address(msg.sender)] / stor7) >= s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + (-stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn(((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + (-stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn(((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                            else:
                                require stor8
                                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                require stor7
                                if not (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7:
                                    require s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 >= 10^17
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0), msg.sender);
                                    else:
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                        call adminAddress with:
                                           value 10 * maxBalance / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 1
                                        emit Finalized((10 * maxBalance / 100));
                                else:
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + (-stor6[address(msg.sender)] / stor7) >= s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + (-stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn(((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + (-stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn(((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                        else:
                            require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 >= s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0
                            emit RefBonusPayed(deposit[address(msg.sender)].field_512, msg.sender);
                            deposit[address(msg.sender)].field_512 = 0
                            if not stor8:
                                require stor6[address(msg.sender)] <= 0
                                require stor7
                                if not -stor6[address(msg.sender)] / stor7:
                                    require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 >= 10^17
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn(((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512), msg.sender);
                                    else:
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                        call adminAddress with:
                                           value 10 * maxBalance / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 1
                                        emit Finalized((10 * maxBalance / 100));
                                else:
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        require -stor6[address(msg.sender)] / stor7 >= 0
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn(((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        require (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 >= 0
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn(((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                            else:
                                require stor8
                                require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                require stor7
                                if not (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7:
                                    require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 >= 10^17
                                    require 10 * maxBalance / 100 <= eth.balance(this.address)
                                    if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn(((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512), msg.sender);
                                    else:
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        deposit[address(msg.sender)].field_0 = 0
                                        idx = 0
                                        while 2 * deposit[address(msg.sender)].field_0 > idx:
                                            deposit[address(msg.sender)][idx].field_0 = 0
                                            deposit[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                        deposit[address(msg.sender)].field_256 = 0
                                        deposit[address(msg.sender)].field_512 = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                        call adminAddress with:
                                           value 10 * maxBalance / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 1
                                        emit Finalized((10 * maxBalance / 100));
                                else:
                                    if not stor8:
                                        require stor6[address(msg.sender)] <= 0
                                        require stor7
                                        require -stor6[address(msg.sender)] / stor7 >= 0
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn(((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + (-stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
                                    else:
                                        require stor8
                                        require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                        require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                        require stor7
                                        require (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 >= 0
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            emit DividendsPayed((-stor6[address(msg.sender)] / stor7), msg.sender);
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            emit DividendsPayed(((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7), msg.sender);
                                        if not stor8:
                                            require stor6[address(msg.sender)] <= 0
                                            require stor7
                                            require stor6[address(msg.sender)] + (-stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += -stor6[address(msg.sender)] / stor7 * stor7
                                        else:
                                            require stor8
                                            require stor8 * balanceOf[address(msg.sender)] / stor8 == balanceOf[address(msg.sender)]
                                            require stor6[address(msg.sender)] <= stor8 * balanceOf[address(msg.sender)]
                                            require stor7
                                            require stor6[address(msg.sender)] + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7) >= stor6[address(msg.sender)]
                                            stor6[address(msg.sender)] += (stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7 * stor7
                                        require (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) >= 10^17
                                        require 10 * maxBalance / 100 <= eth.balance(this.address)
                                        if (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 <= eth.balance(this.address) - (10 * maxBalance / 100):
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value (s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn(((s * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0 * deposit[address(msg.sender)].field_0) + deposit[address(msg.sender)].field_512 + ((stor8 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)] / stor7)), msg.sender);
                                        else:
                                            require 10 * maxBalance / 100 <= eth.balance(this.address)
                                            deposit[address(msg.sender)].field_0 = 0
                                            idx = 0
                                            while 2 * deposit[address(msg.sender)].field_0 > idx:
                                                deposit[address(msg.sender)][idx].field_0 = 0
                                                deposit[address(msg.sender)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                            deposit[address(msg.sender)].field_256 = 0
                                            deposit[address(msg.sender)].field_512 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) + -(10 * maxBalance / 100) + 777 * 10^12 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Withdrawn((eth.balance(this.address) - (10 * maxBalance / 100)), msg.sender);
                                            call adminAddress with:
                                               value 10 * maxBalance / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 1
                                            emit Finalized((10 * maxBalance / 100));
}



}
