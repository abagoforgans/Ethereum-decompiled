contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
mapping of struct stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of struct stor14;

function _fallback() payable {
    stor3 = 8
    stor8 = 25 * 10^18 * 3600
    stor9 = 0
    stor10 = 0
    stor11 = 5400
    stor12 = 4900
    stor13 = 4400
    mem[96 len -8141] = code.data[10050 len -8141]
    mem[64] = -8045
    stor0 = msg.sender
    stor4 = mem[96] * 10^stor3
    stor5[address(msg.sender)] = stor4
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor7[0].field_0 = 1
    stor7[0].field_256 = 5
    stor7[0].field_512 = 100
    stor7[1].field_0 = 5
    stor7[1].field_256 = 10
    stor7[1].field_512 = 150
    stor7[2].field_0 = 10
    stor7[2].field_256 = 20
    stor7[2].field_512 = 200
    stor7[3].field_0 = 20
    stor7[3].field_256 = 50
    stor7[3].field_512 = 250
    stor7[4].field_0 = 50
    stor7[4].field_256 = 100
    stor7[4].field_512 = 300
    stor7[5].field_0 = 100
    stor7[5].field_256 = 300
    stor7[5].field_512 = 500
    stor7[6].field_0 = 300
    stor7[6].field_256 = 500
    stor7[6].field_512 = 700
    stor7[7].field_0 = 500
    stor7[7].field_256 = 800
    stor7[7].field_512 = 900
    stor7[8].field_0 = 800
    stor7[8].field_256 = 1000
    stor7[8].field_512 = 1100
    stor7[9].field_0 = 1000
    stor7[9].field_256 = 1500
    stor7[9].field_512 = 1300
    stor7[10].field_0 = 1500
    stor7[10].field_256 = 2000
    stor7[10].field_512 = 1600
    stor7[11].field_0 = 20000
    stor7[11].field_256 = 200000
    stor7[11].field_512 = 2000
    stor14[0].field_0 = 1526538600
    stor14[0].field_256 = 1526539200
    stor14[0].field_512 = stor11
    stor14[1].field_0 = 1526539200
    stor14[1].field_256 = 1526539800
    stor14[1].field_512 = stor12
    stor14[2].field_0 = 1526539800
    stor14[2].field_256 = 9999999999
    stor14[2].field_512 = stor13
    return code.data[1909 len 8141]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct sub_a569eb8a;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of struct stor14;
mapping of struct stor15;
array of address stor16;

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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a569eb8a(?) {
    return sub_a569eb8a[arg1].field_0, sub_a569eb8a[arg1].field_256, sub_a569eb8a[arg1].field_512
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_f6d8454f(?) {
    require msg.sender == owner
    stor10 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    emit mylog(0);
}

function initCrowd() {
    stor14[0].field_0 = 1526538600
    stor14[0].field_256 = 1526539200
    stor14[0].field_512 = stor11
    stor14[1].field_0 = 1526539200
    stor14[1].field_256 = 1526539800
    stor14[1].field_512 = stor12
    stor14[2].field_0 = 1526539800
    stor14[2].field_256 = 9999999999
    stor14[2].field_512 = stor13
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function sub_2fd88f7c(?) {
    if block.timestamp >= stor14[0].field_0:
        if block.timestamp <= stor14[0].field_256:
            return stor14[0].field_512
    if block.timestamp >= stor14[1].field_0:
        if block.timestamp <= stor14[1].field_256:
            return stor14[1].field_512
    if block.timestamp < stor14[2].field_0:
        return 0
    return stor14[2].field_512
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit mylog(0);
    return 1
}

function getBonus(uint256 arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < 12:
        mem[0] = idx
        mem[32] = 7
        if arg1 < 10^18 * sub_a569eb8a[idx].field_0:
            idx = idx + 1
            s = sha3(idx, 7)
            continue 
        if arg1 >= 10^18 * sub_a569eb8a[idx].field_256:
            idx = idx + 1
            s = sha3(idx, 7)
            continue 
        return (4900 * arg1 * sub_a569eb8a[idx].field_512 / 10000 / 10^10)
    return 0
}

function sendPrize() {
    require msg.sender == owner
    s = 0
    idx = 0
    s = 0
    s = 0
    while idx < stor16.length:
        mem[0] = 0
        mem[32] = sha3(address(stor16[idx]), 15)
        if stor15[address(stor16[idx])][0].field_512 > 0:
            stor15[address(stor16[idx])][0].field_512 = 0
            mem[0] = 0
            mem[32] = sha3(address(stor16[idx]), 15)
            s = 0
            t = 0
            while s < 12:
                mem[0] = s
                mem[32] = 7
                if stor15[address(stor16[idx])][0].field_0 < 10^18 * sub_a569eb8a[s].field_0:
                    s = s + 1
                    t = sha3(s, 7)
                    continue 
                if stor15[address(stor16[idx])][0].field_0 >= 10^18 * sub_a569eb8a[s].field_256:
                    s = s + 1
                    t = sha3(s, 7)
                    continue 
                if 4900 * stor15[address(stor16[idx])][0].field_0 * sub_a569eb8a[s].field_512 / 10000 / 10^10 > 0:
                    balanceOf[stor0] -= 4900 * stor15[address(stor16[idx])][0].field_0 * sub_a569eb8a[s].field_512 / 10000 / 10^10
                    mem[0] = address(stor16[idx])
                    mem[32] = 5
                    balanceOf[address(stor16[idx])] += 4900 * stor15[address(stor16[idx])][0].field_0 * sub_a569eb8a[s].field_512 / 10000 / 10^10
                    mem[96] = 4900 * stor15[address(stor16[idx])][0].field_0 * sub_a569eb8a[s].field_512 / 10000 / 10^10
                    emit Transfer((4900 * stor15[address(stor16[idx])][0].field_0 * sub_a569eb8a[s].field_512 / 10000 / 10^10), owner, address(stor16[idx]));
                s = address(stor16[idx])
                idx = idx + 1
                s = 4900 * stor15[address(stor16[idx])][0].field_0 * sub_a569eb8a[s].field_512 / 10000 / 10^10
                s = stor15[address(stor16[idx])][0].field_512
                continue 
        s = address(stor16[idx])
        idx = idx + 1
        s = 0
        s = stor15[address(stor16[idx])][0].field_512
        continue 
}

function buyTokens(address arg1) payable {
    require not stor10
    require block.timestamp > 1526538600
    require 10^18 <= msg.value
    require msg.value - 10^18 >= 0
    require stor9 + msg.value <= stor8
    require stor8 - stor9 - msg.value >= 0
    require arg1
    if block.timestamp < stor14[0].field_0:
        if block.timestamp < stor14[1].field_0:
            if block.timestamp < stor14[2].field_0:
                require balanceOf[stor0] >= 0
                require balanceOf[address(arg1)] > balanceOf[address(arg1)]
                if not stor15[address(arg1)][0].field_0:
                    stor16.length++
                    if not stor16.length <= stor16.length + 1:
                        idx = stor16.length + 1
                        while stor16.length > idx:
                            uint256(stor16[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor16[stor16.length]) = arg1
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require stor9 + msg.value >= stor9
                stor9 += msg.value
                if stor15[address(arg1)][0].field_0:
                    stor15[address(arg1)][0].field_0 += msg.value
                else:
                    stor15[address(arg1)][0].field_0 = msg.value
                    stor15[address(arg1)][0].field_256 = 0
                stor15[address(arg1)][0].field_512 = 1
                emit Transfer(0, owner, arg1);
            else:
                require balanceOf[stor0] >= stor14[2].field_512 * msg.value / 10^10
                require balanceOf[address(arg1)] + (stor14[2].field_512 * msg.value / 10^10) > balanceOf[address(arg1)]
                if not stor15[address(arg1)][0].field_0:
                    stor16.length++
                    if not stor16.length <= stor16.length + 1:
                        idx = stor16.length + 1
                        while stor16.length > idx:
                            uint256(stor16[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor16[stor16.length]) = arg1
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require stor9 + msg.value >= stor9
                stor9 += msg.value
                balanceOf[stor0] -= stor14[2].field_512 * msg.value / 10^10
                balanceOf[address(arg1)] += stor14[2].field_512 * msg.value / 10^10
                if stor15[address(arg1)][0].field_0:
                    stor15[address(arg1)][0].field_0 += msg.value
                    stor15[address(arg1)][0].field_256 += stor14[2].field_512 * msg.value / 10^10
                else:
                    stor15[address(arg1)][0].field_0 = msg.value
                    stor15[address(arg1)][0].field_256 = stor14[2].field_512 * msg.value / 10^10
                stor15[address(arg1)][0].field_512 = 1
                emit Transfer((stor14[2].field_512 * msg.value / 10^10), owner, arg1);
        else:
            if block.timestamp <= stor14[1].field_256:
                require balanceOf[stor0] >= stor14[1].field_512 * msg.value / 10^10
                require balanceOf[address(arg1)] + (stor14[1].field_512 * msg.value / 10^10) > balanceOf[address(arg1)]
                if not stor15[address(arg1)][0].field_0:
                    stor16.length++
                    if not stor16.length <= stor16.length + 1:
                        idx = stor16.length + 1
                        while stor16.length > idx:
                            uint256(stor16[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor16[stor16.length]) = arg1
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require stor9 + msg.value >= stor9
                stor9 += msg.value
                balanceOf[stor0] -= stor14[1].field_512 * msg.value / 10^10
                balanceOf[address(arg1)] += stor14[1].field_512 * msg.value / 10^10
                if stor15[address(arg1)][0].field_0:
                    stor15[address(arg1)][0].field_0 += msg.value
                    stor15[address(arg1)][0].field_256 += stor14[1].field_512 * msg.value / 10^10
                else:
                    stor15[address(arg1)][0].field_0 = msg.value
                    stor15[address(arg1)][0].field_256 = stor14[1].field_512 * msg.value / 10^10
                stor15[address(arg1)][0].field_512 = 1
                emit Transfer((stor14[1].field_512 * msg.value / 10^10), owner, arg1);
            else:
                if block.timestamp < stor14[2].field_0:
                    require balanceOf[stor0] >= 0
                    require balanceOf[address(arg1)] > balanceOf[address(arg1)]
                    if not stor15[address(arg1)][0].field_0:
                        stor16.length++
                        if not stor16.length <= stor16.length + 1:
                            idx = stor16.length + 1
                            while stor16.length > idx:
                                uint256(stor16[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor16[stor16.length]) = arg1
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stor9 + msg.value >= stor9
                    stor9 += msg.value
                    if stor15[address(arg1)][0].field_0:
                        stor15[address(arg1)][0].field_0 += msg.value
                    else:
                        stor15[address(arg1)][0].field_0 = msg.value
                        stor15[address(arg1)][0].field_256 = 0
                    stor15[address(arg1)][0].field_512 = 1
                    emit Transfer(0, owner, arg1);
                else:
                    require balanceOf[stor0] >= stor14[2].field_512 * msg.value / 10^10
                    require balanceOf[address(arg1)] + (stor14[2].field_512 * msg.value / 10^10) > balanceOf[address(arg1)]
                    if not stor15[address(arg1)][0].field_0:
                        stor16.length++
                        if not stor16.length <= stor16.length + 1:
                            idx = stor16.length + 1
                            while stor16.length > idx:
                                uint256(stor16[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor16[stor16.length]) = arg1
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stor9 + msg.value >= stor9
                    stor9 += msg.value
                    balanceOf[stor0] -= stor14[2].field_512 * msg.value / 10^10
                    balanceOf[address(arg1)] += stor14[2].field_512 * msg.value / 10^10
                    if stor15[address(arg1)][0].field_0:
                        stor15[address(arg1)][0].field_0 += msg.value
                        stor15[address(arg1)][0].field_256 += stor14[2].field_512 * msg.value / 10^10
                    else:
                        stor15[address(arg1)][0].field_0 = msg.value
                        stor15[address(arg1)][0].field_256 = stor14[2].field_512 * msg.value / 10^10
                    stor15[address(arg1)][0].field_512 = 1
                    emit Transfer((stor14[2].field_512 * msg.value / 10^10), owner, arg1);
    else:
        if block.timestamp <= stor14[0].field_256:
            require balanceOf[stor0] >= stor14[0].field_512 * msg.value / 10^10
            require balanceOf[address(arg1)] + (stor14[0].field_512 * msg.value / 10^10) > balanceOf[address(arg1)]
            if not stor15[address(arg1)][0].field_0:
                stor16.length++
                if not stor16.length <= stor16.length + 1:
                    idx = stor16.length + 1
                    while stor16.length > idx:
                        uint256(stor16[idx]) = 0
                        idx = idx + 1
                        continue 
                address(stor16[stor16.length]) = arg1
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require stor9 + msg.value >= stor9
            stor9 += msg.value
            balanceOf[stor0] -= stor14[0].field_512 * msg.value / 10^10
            balanceOf[address(arg1)] += stor14[0].field_512 * msg.value / 10^10
            if stor15[address(arg1)][0].field_0:
                stor15[address(arg1)][0].field_0 += msg.value
                stor15[address(arg1)][0].field_256 += stor14[0].field_512 * msg.value / 10^10
            else:
                stor15[address(arg1)][0].field_0 = msg.value
                stor15[address(arg1)][0].field_256 = stor14[0].field_512 * msg.value / 10^10
            stor15[address(arg1)][0].field_512 = 1
            emit Transfer((stor14[0].field_512 * msg.value / 10^10), owner, arg1);
        else:
            if block.timestamp < stor14[1].field_0:
                if block.timestamp < stor14[2].field_0:
                    require balanceOf[stor0] >= 0
                    require balanceOf[address(arg1)] > balanceOf[address(arg1)]
                    if not stor15[address(arg1)][0].field_0:
                        stor16.length++
                        if not stor16.length <= stor16.length + 1:
                            idx = stor16.length + 1
                            while stor16.length > idx:
                                uint256(stor16[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor16[stor16.length]) = arg1
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stor9 + msg.value >= stor9
                    stor9 += msg.value
                    if stor15[address(arg1)][0].field_0:
                        stor15[address(arg1)][0].field_0 += msg.value
                    else:
                        stor15[address(arg1)][0].field_0 = msg.value
                        stor15[address(arg1)][0].field_256 = 0
                    stor15[address(arg1)][0].field_512 = 1
                    emit Transfer(0, owner, arg1);
                else:
                    require balanceOf[stor0] >= stor14[2].field_512 * msg.value / 10^10
                    require balanceOf[address(arg1)] + (stor14[2].field_512 * msg.value / 10^10) > balanceOf[address(arg1)]
                    if not stor15[address(arg1)][0].field_0:
                        stor16.length++
                        if not stor16.length <= stor16.length + 1:
                            idx = stor16.length + 1
                            while stor16.length > idx:
                                uint256(stor16[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor16[stor16.length]) = arg1
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stor9 + msg.value >= stor9
                    stor9 += msg.value
                    balanceOf[stor0] -= stor14[2].field_512 * msg.value / 10^10
                    balanceOf[address(arg1)] += stor14[2].field_512 * msg.value / 10^10
                    if stor15[address(arg1)][0].field_0:
                        stor15[address(arg1)][0].field_0 += msg.value
                        stor15[address(arg1)][0].field_256 += stor14[2].field_512 * msg.value / 10^10
                    else:
                        stor15[address(arg1)][0].field_0 = msg.value
                        stor15[address(arg1)][0].field_256 = stor14[2].field_512 * msg.value / 10^10
                    stor15[address(arg1)][0].field_512 = 1
                    emit Transfer((stor14[2].field_512 * msg.value / 10^10), owner, arg1);
            else:
                if block.timestamp <= stor14[1].field_256:
                    require balanceOf[stor0] >= stor14[1].field_512 * msg.value / 10^10
                    require balanceOf[address(arg1)] + (stor14[1].field_512 * msg.value / 10^10) > balanceOf[address(arg1)]
                    if not stor15[address(arg1)][0].field_0:
                        stor16.length++
                        if not stor16.length <= stor16.length + 1:
                            idx = stor16.length + 1
                            while stor16.length > idx:
                                uint256(stor16[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor16[stor16.length]) = arg1
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stor9 + msg.value >= stor9
                    stor9 += msg.value
                    balanceOf[stor0] -= stor14[1].field_512 * msg.value / 10^10
                    balanceOf[address(arg1)] += stor14[1].field_512 * msg.value / 10^10
                    if stor15[address(arg1)][0].field_0:
                        stor15[address(arg1)][0].field_0 += msg.value
                        stor15[address(arg1)][0].field_256 += stor14[1].field_512 * msg.value / 10^10
                    else:
                        stor15[address(arg1)][0].field_0 = msg.value
                        stor15[address(arg1)][0].field_256 = stor14[1].field_512 * msg.value / 10^10
                    stor15[address(arg1)][0].field_512 = 1
                    emit Transfer((stor14[1].field_512 * msg.value / 10^10), owner, arg1);
                else:
                    if block.timestamp < stor14[2].field_0:
                        require balanceOf[stor0] >= 0
                        require balanceOf[address(arg1)] > balanceOf[address(arg1)]
                        if not stor15[address(arg1)][0].field_0:
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = arg1
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require stor9 + msg.value >= stor9
                        stor9 += msg.value
                        if stor15[address(arg1)][0].field_0:
                            stor15[address(arg1)][0].field_0 += msg.value
                        else:
                            stor15[address(arg1)][0].field_0 = msg.value
                            stor15[address(arg1)][0].field_256 = 0
                        stor15[address(arg1)][0].field_512 = 1
                        emit Transfer(0, owner, arg1);
                    else:
                        require balanceOf[stor0] >= stor14[2].field_512 * msg.value / 10^10
                        require balanceOf[address(arg1)] + (stor14[2].field_512 * msg.value / 10^10) > balanceOf[address(arg1)]
                        if not stor15[address(arg1)][0].field_0:
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = arg1
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require stor9 + msg.value >= stor9
                        stor9 += msg.value
                        balanceOf[stor0] -= stor14[2].field_512 * msg.value / 10^10
                        balanceOf[address(arg1)] += stor14[2].field_512 * msg.value / 10^10
                        if stor15[address(arg1)][0].field_0:
                            stor15[address(arg1)][0].field_0 += msg.value
                            stor15[address(arg1)][0].field_256 += stor14[2].field_512 * msg.value / 10^10
                        else:
                            stor15[address(arg1)][0].field_0 = msg.value
                            stor15[address(arg1)][0].field_256 = stor14[2].field_512 * msg.value / 10^10
                        stor15[address(arg1)][0].field_512 = 1
                        emit Transfer((stor14[2].field_512 * msg.value / 10^10), owner, arg1);
}

function _fallback() payable {
    require not stor10
    require block.timestamp > 1526538600
    require 10^18 <= msg.value
    require msg.value - 10^18 >= 0
    require stor9 + msg.value <= stor8
    require stor8 - stor9 - msg.value >= 0
    require msg.sender
    if block.timestamp < stor14[0].field_0:
        if block.timestamp < stor14[1].field_0:
            if block.timestamp < stor14[2].field_0:
                require balanceOf[stor0] >= 0
                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                if not stor15[address(msg.sender)][0].field_0:
                    stor16.length++
                    if not stor16.length <= stor16.length + 1:
                        idx = stor16.length + 1
                        while stor16.length > idx:
                            uint256(stor16[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor16[stor16.length]) = msg.sender
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require stor9 + msg.value >= stor9
                stor9 += msg.value
                if stor15[address(msg.sender)][0].field_0:
                    stor15[address(msg.sender)][0].field_0 += msg.value
                else:
                    stor15[address(msg.sender)][0].field_0 = msg.value
                    stor15[address(msg.sender)][0].field_256 = 0
                stor15[address(msg.sender)][0].field_512 = 1
                emit Transfer(0, owner, msg.sender);
            else:
                require balanceOf[stor0] >= stor14[2].field_512 * msg.value / 10^10
                require balanceOf[address(msg.sender)] + (stor14[2].field_512 * msg.value / 10^10) > balanceOf[address(msg.sender)]
                if not stor15[address(msg.sender)][0].field_0:
                    stor16.length++
                    if not stor16.length <= stor16.length + 1:
                        idx = stor16.length + 1
                        while stor16.length > idx:
                            uint256(stor16[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor16[stor16.length]) = msg.sender
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require stor9 + msg.value >= stor9
                stor9 += msg.value
                balanceOf[stor0] -= stor14[2].field_512 * msg.value / 10^10
                balanceOf[address(msg.sender)] += stor14[2].field_512 * msg.value / 10^10
                if stor15[address(msg.sender)][0].field_0:
                    stor15[address(msg.sender)][0].field_0 += msg.value
                    stor15[address(msg.sender)][0].field_256 += stor14[2].field_512 * msg.value / 10^10
                else:
                    stor15[address(msg.sender)][0].field_0 = msg.value
                    stor15[address(msg.sender)][0].field_256 = stor14[2].field_512 * msg.value / 10^10
                stor15[address(msg.sender)][0].field_512 = 1
                emit Transfer((stor14[2].field_512 * msg.value / 10^10), owner, msg.sender);
        else:
            if block.timestamp <= stor14[1].field_256:
                require balanceOf[stor0] >= stor14[1].field_512 * msg.value / 10^10
                require balanceOf[address(msg.sender)] + (stor14[1].field_512 * msg.value / 10^10) > balanceOf[address(msg.sender)]
                if not stor15[address(msg.sender)][0].field_0:
                    stor16.length++
                    if not stor16.length <= stor16.length + 1:
                        idx = stor16.length + 1
                        while stor16.length > idx:
                            uint256(stor16[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor16[stor16.length]) = msg.sender
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require stor9 + msg.value >= stor9
                stor9 += msg.value
                balanceOf[stor0] -= stor14[1].field_512 * msg.value / 10^10
                balanceOf[address(msg.sender)] += stor14[1].field_512 * msg.value / 10^10
                if stor15[address(msg.sender)][0].field_0:
                    stor15[address(msg.sender)][0].field_0 += msg.value
                    stor15[address(msg.sender)][0].field_256 += stor14[1].field_512 * msg.value / 10^10
                else:
                    stor15[address(msg.sender)][0].field_0 = msg.value
                    stor15[address(msg.sender)][0].field_256 = stor14[1].field_512 * msg.value / 10^10
                stor15[address(msg.sender)][0].field_512 = 1
                emit Transfer((stor14[1].field_512 * msg.value / 10^10), owner, msg.sender);
            else:
                if block.timestamp < stor14[2].field_0:
                    require balanceOf[stor0] >= 0
                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    if not stor15[address(msg.sender)][0].field_0:
                        stor16.length++
                        if not stor16.length <= stor16.length + 1:
                            idx = stor16.length + 1
                            while stor16.length > idx:
                                uint256(stor16[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor16[stor16.length]) = msg.sender
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stor9 + msg.value >= stor9
                    stor9 += msg.value
                    if stor15[address(msg.sender)][0].field_0:
                        stor15[address(msg.sender)][0].field_0 += msg.value
                    else:
                        stor15[address(msg.sender)][0].field_0 = msg.value
                        stor15[address(msg.sender)][0].field_256 = 0
                    stor15[address(msg.sender)][0].field_512 = 1
                    emit Transfer(0, owner, msg.sender);
                else:
                    require balanceOf[stor0] >= stor14[2].field_512 * msg.value / 10^10
                    require balanceOf[address(msg.sender)] + (stor14[2].field_512 * msg.value / 10^10) > balanceOf[address(msg.sender)]
                    if not stor15[address(msg.sender)][0].field_0:
                        stor16.length++
                        if not stor16.length <= stor16.length + 1:
                            idx = stor16.length + 1
                            while stor16.length > idx:
                                uint256(stor16[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor16[stor16.length]) = msg.sender
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stor9 + msg.value >= stor9
                    stor9 += msg.value
                    balanceOf[stor0] -= stor14[2].field_512 * msg.value / 10^10
                    balanceOf[address(msg.sender)] += stor14[2].field_512 * msg.value / 10^10
                    if stor15[address(msg.sender)][0].field_0:
                        stor15[address(msg.sender)][0].field_0 += msg.value
                        stor15[address(msg.sender)][0].field_256 += stor14[2].field_512 * msg.value / 10^10
                    else:
                        stor15[address(msg.sender)][0].field_0 = msg.value
                        stor15[address(msg.sender)][0].field_256 = stor14[2].field_512 * msg.value / 10^10
                    stor15[address(msg.sender)][0].field_512 = 1
                    emit Transfer((stor14[2].field_512 * msg.value / 10^10), owner, msg.sender);
    else:
        if block.timestamp <= stor14[0].field_256:
            require balanceOf[stor0] >= stor14[0].field_512 * msg.value / 10^10
            require balanceOf[address(msg.sender)] + (stor14[0].field_512 * msg.value / 10^10) > balanceOf[address(msg.sender)]
            if not stor15[address(msg.sender)][0].field_0:
                stor16.length++
                if not stor16.length <= stor16.length + 1:
                    idx = stor16.length + 1
                    while stor16.length > idx:
                        uint256(stor16[idx]) = 0
                        idx = idx + 1
                        continue 
                address(stor16[stor16.length]) = msg.sender
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require stor9 + msg.value >= stor9
            stor9 += msg.value
            balanceOf[stor0] -= stor14[0].field_512 * msg.value / 10^10
            balanceOf[address(msg.sender)] += stor14[0].field_512 * msg.value / 10^10
            if stor15[address(msg.sender)][0].field_0:
                stor15[address(msg.sender)][0].field_0 += msg.value
                stor15[address(msg.sender)][0].field_256 += stor14[0].field_512 * msg.value / 10^10
            else:
                stor15[address(msg.sender)][0].field_0 = msg.value
                stor15[address(msg.sender)][0].field_256 = stor14[0].field_512 * msg.value / 10^10
            stor15[address(msg.sender)][0].field_512 = 1
            emit Transfer((stor14[0].field_512 * msg.value / 10^10), owner, msg.sender);
        else:
            if block.timestamp < stor14[1].field_0:
                if block.timestamp < stor14[2].field_0:
                    require balanceOf[stor0] >= 0
                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    if not stor15[address(msg.sender)][0].field_0:
                        stor16.length++
                        if not stor16.length <= stor16.length + 1:
                            idx = stor16.length + 1
                            while stor16.length > idx:
                                uint256(stor16[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor16[stor16.length]) = msg.sender
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stor9 + msg.value >= stor9
                    stor9 += msg.value
                    if stor15[address(msg.sender)][0].field_0:
                        stor15[address(msg.sender)][0].field_0 += msg.value
                    else:
                        stor15[address(msg.sender)][0].field_0 = msg.value
                        stor15[address(msg.sender)][0].field_256 = 0
                    stor15[address(msg.sender)][0].field_512 = 1
                    emit Transfer(0, owner, msg.sender);
                else:
                    require balanceOf[stor0] >= stor14[2].field_512 * msg.value / 10^10
                    require balanceOf[address(msg.sender)] + (stor14[2].field_512 * msg.value / 10^10) > balanceOf[address(msg.sender)]
                    if not stor15[address(msg.sender)][0].field_0:
                        stor16.length++
                        if not stor16.length <= stor16.length + 1:
                            idx = stor16.length + 1
                            while stor16.length > idx:
                                uint256(stor16[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor16[stor16.length]) = msg.sender
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stor9 + msg.value >= stor9
                    stor9 += msg.value
                    balanceOf[stor0] -= stor14[2].field_512 * msg.value / 10^10
                    balanceOf[address(msg.sender)] += stor14[2].field_512 * msg.value / 10^10
                    if stor15[address(msg.sender)][0].field_0:
                        stor15[address(msg.sender)][0].field_0 += msg.value
                        stor15[address(msg.sender)][0].field_256 += stor14[2].field_512 * msg.value / 10^10
                    else:
                        stor15[address(msg.sender)][0].field_0 = msg.value
                        stor15[address(msg.sender)][0].field_256 = stor14[2].field_512 * msg.value / 10^10
                    stor15[address(msg.sender)][0].field_512 = 1
                    emit Transfer((stor14[2].field_512 * msg.value / 10^10), owner, msg.sender);
            else:
                if block.timestamp <= stor14[1].field_256:
                    require balanceOf[stor0] >= stor14[1].field_512 * msg.value / 10^10
                    require balanceOf[address(msg.sender)] + (stor14[1].field_512 * msg.value / 10^10) > balanceOf[address(msg.sender)]
                    if not stor15[address(msg.sender)][0].field_0:
                        stor16.length++
                        if not stor16.length <= stor16.length + 1:
                            idx = stor16.length + 1
                            while stor16.length > idx:
                                uint256(stor16[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor16[stor16.length]) = msg.sender
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require stor9 + msg.value >= stor9
                    stor9 += msg.value
                    balanceOf[stor0] -= stor14[1].field_512 * msg.value / 10^10
                    balanceOf[address(msg.sender)] += stor14[1].field_512 * msg.value / 10^10
                    if stor15[address(msg.sender)][0].field_0:
                        stor15[address(msg.sender)][0].field_0 += msg.value
                        stor15[address(msg.sender)][0].field_256 += stor14[1].field_512 * msg.value / 10^10
                    else:
                        stor15[address(msg.sender)][0].field_0 = msg.value
                        stor15[address(msg.sender)][0].field_256 = stor14[1].field_512 * msg.value / 10^10
                    stor15[address(msg.sender)][0].field_512 = 1
                    emit Transfer((stor14[1].field_512 * msg.value / 10^10), owner, msg.sender);
                else:
                    if block.timestamp < stor14[2].field_0:
                        require balanceOf[stor0] >= 0
                        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                        if not stor15[address(msg.sender)][0].field_0:
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require stor9 + msg.value >= stor9
                        stor9 += msg.value
                        if stor15[address(msg.sender)][0].field_0:
                            stor15[address(msg.sender)][0].field_0 += msg.value
                        else:
                            stor15[address(msg.sender)][0].field_0 = msg.value
                            stor15[address(msg.sender)][0].field_256 = 0
                        stor15[address(msg.sender)][0].field_512 = 1
                        emit Transfer(0, owner, msg.sender);
                    else:
                        require balanceOf[stor0] >= stor14[2].field_512 * msg.value / 10^10
                        require balanceOf[address(msg.sender)] + (stor14[2].field_512 * msg.value / 10^10) > balanceOf[address(msg.sender)]
                        if not stor15[address(msg.sender)][0].field_0:
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require stor9 + msg.value >= stor9
                        stor9 += msg.value
                        balanceOf[stor0] -= stor14[2].field_512 * msg.value / 10^10
                        balanceOf[address(msg.sender)] += stor14[2].field_512 * msg.value / 10^10
                        if stor15[address(msg.sender)][0].field_0:
                            stor15[address(msg.sender)][0].field_0 += msg.value
                            stor15[address(msg.sender)][0].field_256 += stor14[2].field_512 * msg.value / 10^10
                        else:
                            stor15[address(msg.sender)][0].field_0 = msg.value
                            stor15[address(msg.sender)][0].field_256 = stor14[2].field_512 * msg.value / 10^10
                        stor15[address(msg.sender)][0].field_512 = 1
                        emit Transfer((stor14[2].field_512 * msg.value / 10^10), owner, msg.sender);
}



}
