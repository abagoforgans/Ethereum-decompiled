contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
mapping of uint256 stor3;
mapping of uint8 stor5;
mapping of uint256 stor6;
mapping of address stor7;
mapping of uint256 stor8;
mapping of address stor9;
mapping of uint8 stor10;
mapping of address stor11;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint256 stor41;
uint256 stor42;

function _fallback() payable {
    stor0 = 25000000 * 10^18 * 3600
    require not msg.value
    stor3[address(msg.sender)] = 1000000 * 10^18
    stor1 = 1000000 * 10^18
    stor2 = msg.sender
    stor5[address(msg.sender)] = 1
    stor21 = 1
    stor15 = 1
    stor22 = 2 * 10^18
    stor23 = 2 * 10^16
    stor2 = msg.sender
    stor9[stor2] = msg.sender
    stor10[stor2] = 1
    stor7[1] = msg.sender
    stor8[address(msg.sender)] = 1
    stor11[stor2] = stor2
    stor6[1] = 0
    stor14 = 1
    stor42 = 3
    stor24 = 1000 * stor22
    stor25 = 150
    stor26 = 100
    stor27 = 85
    stor28 = 70
    stor29 = 55
    stor30 = 45
    stor31 = 35
    stor32 = 25
    stor33 = 15
    stor34 = 10
    stor35 = 8
    stor36 = 8
    stor37 = 6
    stor38 = 6
    stor39 = 5
    stor40 = 5
    stor41 = 5
    stor17 = 3
    stor18 = 30
    stor19 = 6
    stor20 = 300
    stor16 = stor22 * stor42
    return code.data[1543 len 21138]
}



// =====================  Runtime code  =====================


const name = 'AthenaToken'

const decimals = 18

const symbol = 'ATT'


uint256 stor0;
uint256 totalSupply;
address stor2;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint256 stor6;
mapping of address stor7;
mapping of uint256 stor8;
mapping of address sub_f0c6a279;
mapping of uint8 stor10;
mapping of address sub_fb25657a;
mapping of uint256 sub_f1becb6e;
mapping of uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
array of uint256 stor25;
array of address stor42;
array of address stor43;
array of address stor60;

function sub_05522976(?) {
    require stor5[address(msg.sender)]
    return sub_f1becb6e[stor7[arg1]], sub_f1becb6e[stor7[arg1]] + stor13[stor7[arg1]]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function sub_a94e2d91(?) {
    return bool(stor10[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_f0c6a279(?) {
    require stor5[address(msg.sender)]
    return sub_f0c6a279[address(arg1)]
}

function sub_f1becb6e(?) {
    require stor5[address(msg.sender)]
    return sub_f1becb6e[address(arg1)], sub_f1becb6e[address(arg1)] + stor13[address(arg1)]
}

function sub_fb25657a(?) {
    return sub_fb25657a[address(msg.sender)]
}

function sub_534d1260(?) {
    if stor2 != msg.sender:
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function sub_2fd9332b(?) {
    return (stor22 / 10^18)
}

function sub_dc73d21a(?) {
    require stor5[address(msg.sender)]
    return (stor6[arg1] / 10^15)
}

function sub_b9121098(?) {
    require stor5[address(msg.sender)]
    stor5[address(arg1)] = uint8(arg2)
}

function sub_fb0dcb99(?) {
    require stor5[address(msg.sender)]
    sub_fb25657a[address(arg1)] = arg2
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function sub_9d0b6d86(?) {
    require stor5[address(msg.sender)]
    return stor21, stor14, stor15, stor16, stor7[arg1], sub_f0c6a279[stor7[arg1]]
}

function withdrawEther(uint256 arg1) {
    require stor5[address(msg.sender)]
    call stor2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burn(uint256 arg1) {
    require stor5[address(msg.sender)]
    require balances[address(msg.sender)] > arg1
    require arg1 > 0
    balances[address(msg.sender)] -= arg1
    totalSupply += arg1
    return 1
}

function sub_0baca38d(?) {
    require stor5[address(msg.sender)]
    stor22 = arg1
    stor23 = arg2
    stor24 = arg3
    stor0 = arg4
    stor42.length = arg5
    stor17 = arg6
    stor18 = arg7
    stor19 = arg8
    stor20 = arg9
}

function mint(address arg1, uint256 arg2) {
    require stor5[address(msg.sender)]
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    require totalSupply + arg2 > totalSupply
    totalSupply += arg2
    balances[address(arg1)] += arg2
    return 1
}

function sub_608f5539(?) {
    return bool(stor10[address(msg.sender)]), 
           balances[address(msg.sender)] / 10^18,
           totalSupply / 10^18,
           sub_f1becb6e[address(msg.sender)],
           sub_f1becb6e[address(msg.sender)] + stor13[address(msg.sender)]
}

function burnFrom(address arg1, uint256 arg2) {
    require stor5[address(msg.sender)]
    require balances[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balances[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    return 1
}

function sub_1af95836(?) {
    require msg.sender
    stor10[address(msg.sender)] = 1
    require balances[address(msg.sender)] > 100 * 10^18
    require ext_code.size(msg.sender) < 1
    balances[address(msg.sender)] -= 10 * 10^18
    totalSupply -= 10 * 10^18
    sub_fb25657a[address(msg.sender)] = arg1
    require msg.sender == msg.sender
    emit 0xec95482f: msg.sender, arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require balances[address(msg.sender)] > arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balances[address(msg.sender)] + balances[address(arg1)] == balances[address(msg.sender)] + balances[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 > 0
    require balances[address(arg1)] > arg3
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    require arg3 < allowance[address(arg1)][address(msg.sender)]
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_14740477(?) {
    require stor5[address(msg.sender)]
    require bool(stor10[address(arg1)]) == 1
    require not stor10[address(arg2)]
    sub_f0c6a279[address(arg2)] = arg1
    stor10[address(arg2)] = 1
    sub_f1becb6e[address(arg1)]++
    balances[address(arg2)] += stor24
    totalSupply += stor24
    stor21++
    stor6[stor21] = 0
    stor8[address(arg2)] = stor21
    stor7[stor21] = arg2
    sub_fb25657a[address(arg2)] = arg2
    return 1
}

function join(address arg1) payable {
    require msg.value == stor22
    require bool(stor10[address(arg1)]) == 1
    require not stor10[address(msg.sender)]
    require ext_code.size(msg.sender) < 1
    require stor0 > totalSupply
    sub_f0c6a279[address(msg.sender)] = arg1
    stor10[address(msg.sender)] = 1
    balances[address(msg.sender)] += stor24
    totalSupply += stor24
    sub_f1becb6e[address(arg1)]++
    stor21++
    stor6[stor21] = 0
    stor8[address(msg.sender)] = stor21
    stor7[stor21] = msg.sender
    sub_fb25657a[address(msg.sender)] = msg.sender
    stor43.length = arg1
    idx = 1
    while idx < 17:
        require idx - 1 < 17
        require idx < 17
        stor43[idx] = sub_f0c6a279[stor42[idx]]
        mem[0] = stor43[idx]
        mem[32] = 13
        stor13[stor43[idx]]++
        idx = idx + 1
        continue 
    idx = 1
    while idx < 17:
        mem[0] = stor43[idx]
        mem[32] = 12
        if sub_f1becb6e[stor43[idx]] < stor17:
            idx = idx + 1
            continue 
        require idx < 17
        mem[0] = stor43[idx]
        mem[32] = 13
        if stor13[stor43[idx]] + sub_f1becb6e[stor43[idx]] < stor18:
            idx = idx + 1
            continue 
        require idx < 17
        s = 1
        while s < 17:
            mem[0] = stor43[s]
            mem[32] = 12
            if sub_f1becb6e[stor43[s]] < stor19:
                s = s + 1
                continue 
            require s < 17
            mem[0] = stor43[s]
            mem[32] = 13
            if stor13[stor43[s]] + sub_f1becb6e[stor43[s]] < stor20:
                s = s + 1
                continue 
            require s < 17
            t = 1
            while t < 17:
                require t < 17
                mem[0] = stor43[t]
                mem[32] = 3
                if balances[stor43[t]] < stor24 / 10:
                    require t < 17
                    stor43[t] = stor2
                t = t + 1
                continue 
            t = 0
            u = msg.value
            while t < 17:
                call sub_fb25657a[stor43[t]] with:
                   value msg.value * stor25[t] / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require t < 17
                require t < 17
                require t < 17
                if stor43[t] != stor2:
                    balances[stor43[t]] -= msg.value * stor25[t] / 10
                    totalSupply -= msg.value * stor25[t] / 10
                mem[0] = stor8[stor43[t]]
                mem[32] = 6
                stor6[stor8[stor43[t]]] += msg.value * stor25[t] / 1000
                t = t + 1
                u = u - (msg.value * stor25[t] / 1000)
                continue 
            v = 0
            t = 0
            while t < 23:
                mem[0] = stor14
                mem[32] = 6
                if stor6[stor14] >= stor16:
                    if stor14 == stor15:
                        if stor16 == stor22 * stor42.length:
                            stor15++
                    stor14++
                    if stor14 <= stor21:
                        v = v
                        t = t
                        continue 
                    stor14 = stor15
                    if stor16 != stor22 * stor42.length:
                        stor16 = stor22 * stor42.length
                    else:
                        stor16 = 4 * stor22 * stor42.length / 10
                    v = stor16
                    t = t
                    continue 
                require t < 23
                stor60[t] = stor7[stor14]
                mem[0] = stor14
                mem[32] = 6
                stor6[stor14] += stor23
                stor14++
                if stor14 <= stor21:
                    v = v
                    t = t + 1
                    continue 
                stor14 = stor15
                if stor16 != stor22 * stor42.length:
                    stor16 = stor22 * stor42.length
                else:
                    stor16 = 4 * stor22 * stor42.length / 10
                v = stor16
                t = t + 1
                continue 
            t = 0
            while t < 23:
                mem[0] = stor60[t]
                mem[32] = 11
                call sub_fb25657a[stor60[t]] with:
                   value stor23 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                t = t + 1
                continue 
            call sub_fb25657a[stor43[idx]] with:
               value msg.value / 66 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call sub_fb25657a[stor43[s]] with:
               value msg.value / 66 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call sub_fb25657a[stor2] with:
               value u - (2 * msg.value / 66) - (23 * stor23) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.sender == msg.sender
            emit 0x1ba4ecaf: msg.sender, balances[address(msg.sender)]
        s = 1
        while s < 17:
            require s < 17
            mem[0] = stor43[s]
            mem[32] = 3
            if balances[stor43[s]] < stor24 / 10:
                require s < 17
                stor43[s] = stor2
            s = s + 1
            continue 
        s = 0
        t = msg.value
        while s < 17:
            call sub_fb25657a[stor43[s]] with:
               value msg.value * stor25[s] / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require s < 17
            require s < 17
            require s < 17
            if stor43[s] != stor2:
                balances[stor43[s]] -= msg.value * stor25[s] / 10
                totalSupply -= msg.value * stor25[s] / 10
            mem[0] = stor8[stor43[s]]
            mem[32] = 6
            stor6[stor8[stor43[s]]] += msg.value * stor25[s] / 1000
            s = s + 1
            t = t - (msg.value * stor25[s] / 1000)
            continue 
        u = 0
        s = 0
        while s < 23:
            mem[0] = stor14
            mem[32] = 6
            if stor6[stor14] >= stor16:
                if stor14 == stor15:
                    if stor16 == stor22 * stor42.length:
                        stor15++
                stor14++
                if stor14 <= stor21:
                    u = u
                    s = s
                    continue 
                stor14 = stor15
                if stor16 != stor22 * stor42.length:
                    stor16 = stor22 * stor42.length
                else:
                    stor16 = 4 * stor22 * stor42.length / 10
                u = stor16
                s = s
                continue 
            require s < 23
            stor60[s] = stor7[stor14]
            mem[0] = stor14
            mem[32] = 6
            stor6[stor14] += stor23
            stor14++
            if stor14 <= stor21:
                u = u
                s = s + 1
                continue 
            stor14 = stor15
            if stor16 != stor22 * stor42.length:
                stor16 = stor22 * stor42.length
            else:
                stor16 = 4 * stor22 * stor42.length / 10
            u = stor16
            s = s + 1
            continue 
        s = 0
        while s < 23:
            mem[0] = stor60[s]
            mem[32] = 11
            call sub_fb25657a[stor60[s]] with:
               value stor23 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            s = s + 1
            continue 
        call sub_fb25657a[stor43[idx]] with:
           value msg.value / 66 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call sub_fb25657a[stor2] with:
           value msg.value / 66 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call sub_fb25657a[stor2] with:
           value t - (2 * msg.value / 66) - (23 * stor23) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.sender == msg.sender
        emit 0x1ba4ecaf: msg.sender, balances[address(msg.sender)]
    idx = 1
    while idx < 17:
        mem[0] = stor43[idx]
        mem[32] = 12
        if sub_f1becb6e[stor43[idx]] < stor19:
            idx = idx + 1
            continue 
        require idx < 17
        mem[0] = stor43[idx]
        mem[32] = 13
        if stor13[stor43[idx]] + sub_f1becb6e[stor43[idx]] < stor20:
            idx = idx + 1
            continue 
        require idx < 17
        s = 1
        while s < 17:
            require s < 17
            mem[0] = stor43[s]
            mem[32] = 3
            if balances[stor43[s]] < stor24 / 10:
                require s < 17
                stor43[s] = stor2
            s = s + 1
            continue 
        s = 0
        t = msg.value
        while s < 17:
            call sub_fb25657a[stor43[s]] with:
               value msg.value * stor25[s] / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require s < 17
            require s < 17
            require s < 17
            if stor43[s] != stor2:
                balances[stor43[s]] -= msg.value * stor25[s] / 10
                totalSupply -= msg.value * stor25[s] / 10
            mem[0] = stor8[stor43[s]]
            mem[32] = 6
            stor6[stor8[stor43[s]]] += msg.value * stor25[s] / 1000
            s = s + 1
            t = t - (msg.value * stor25[s] / 1000)
            continue 
        u = 0
        s = 0
        while s < 23:
            mem[0] = stor14
            mem[32] = 6
            if stor6[stor14] >= stor16:
                if stor14 == stor15:
                    if stor16 == stor22 * stor42.length:
                        stor15++
                stor14++
                if stor14 <= stor21:
                    u = u
                    s = s
                    continue 
                stor14 = stor15
                if stor16 != stor22 * stor42.length:
                    stor16 = stor22 * stor42.length
                else:
                    stor16 = 4 * stor22 * stor42.length / 10
                u = stor16
                s = s
                continue 
            require s < 23
            stor60[s] = stor7[stor14]
            mem[0] = stor14
            mem[32] = 6
            stor6[stor14] += stor23
            stor14++
            if stor14 <= stor21:
                u = u
                s = s + 1
                continue 
            stor14 = stor15
            if stor16 != stor22 * stor42.length:
                stor16 = stor22 * stor42.length
            else:
                stor16 = 4 * stor22 * stor42.length / 10
            u = stor16
            s = s + 1
            continue 
        s = 0
        while s < 23:
            mem[0] = stor60[s]
            mem[32] = 11
            call sub_fb25657a[stor60[s]] with:
               value stor23 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            s = s + 1
            continue 
        call sub_fb25657a[stor2] with:
           value msg.value / 66 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call sub_fb25657a[stor43[idx]] with:
           value msg.value / 66 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call sub_fb25657a[stor2] with:
           value t - (2 * msg.value / 66) - (23 * stor23) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.sender == msg.sender
        emit 0x1ba4ecaf: msg.sender, balances[address(msg.sender)]
    idx = 1
    while idx < 17:
        require idx < 17
        mem[0] = stor43[idx]
        mem[32] = 3
        if balances[stor43[idx]] < stor24 / 10:
            require idx < 17
            stor43[idx] = stor2
        idx = idx + 1
        continue 
    idx = 0
    s = msg.value
    while idx < 17:
        call sub_fb25657a[stor43[idx]] with:
           value msg.value * stor25[idx] / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < 17
        require idx < 17
        require idx < 17
        if stor43[idx] != stor2:
            balances[stor43[idx]] -= msg.value * stor25[idx] / 10
            totalSupply -= msg.value * stor25[idx] / 10
        mem[0] = stor8[stor43[idx]]
        mem[32] = 6
        stor6[stor8[stor43[idx]]] += msg.value * stor25[idx] / 1000
        idx = idx + 1
        s = s - (msg.value * stor25[idx] / 1000)
        continue 
    t = 0
    idx = 0
    while idx < 23:
        mem[0] = stor14
        mem[32] = 6
        if stor6[stor14] >= stor16:
            if stor14 == stor15:
                if stor16 == stor22 * stor42.length:
                    stor15++
            stor14++
            if stor14 <= stor21:
                t = t
                idx = idx
                continue 
            stor14 = stor15
            if stor16 != stor22 * stor42.length:
                stor16 = stor22 * stor42.length
            else:
                stor16 = 4 * stor22 * stor42.length / 10
            t = stor16
            idx = idx
            continue 
        require idx < 23
        stor60[idx] = stor7[stor14]
        mem[0] = stor14
        mem[32] = 6
        stor6[stor14] += stor23
        stor14++
        if stor14 <= stor21:
            t = t
            idx = idx + 1
            continue 
        stor14 = stor15
        if stor16 != stor22 * stor42.length:
            stor16 = stor22 * stor42.length
        else:
            stor16 = 4 * stor22 * stor42.length / 10
        t = stor16
        idx = idx + 1
        continue 
    idx = 0
    while idx < 23:
        mem[0] = stor60[idx]
        mem[32] = 11
        call sub_fb25657a[stor60[idx]] with:
           value stor23 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
    call sub_fb25657a[stor2] with:
       value msg.value / 66 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call sub_fb25657a[stor2] with:
       value msg.value / 66 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call sub_fb25657a[stor2] with:
       value s - (2 * msg.value / 66) - (23 * stor23) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require msg.sender == msg.sender
    emit 0x1ba4ecaf: msg.sender, balances[address(msg.sender)]
}

function sub_c0a171b6(?) payable {
    require msg.value == stor22
    require bool(stor10[address(arg1)]) == 1
    require not stor10[address(arg2)]
    require arg1 != arg2
    require ext_code.size(msg.sender) < 1
    require ext_code.size(arg2) < 1
    require stor0 > totalSupply
    sub_f0c6a279[address(arg2)] = arg1
    stor10[address(arg2)] = 1
    balances[address(arg2)] += stor24
    totalSupply += stor24
    sub_f1becb6e[address(arg1)]++
    stor21++
    stor6[stor21] = 0
    stor8[address(arg2)] = stor21
    stor7[stor21] = arg2
    sub_fb25657a[address(arg2)] = arg2
    stor43.length = arg1
    idx = 1
    while idx < 17:
        require idx - 1 < 17
        require idx < 17
        stor43[idx] = sub_f0c6a279[stor42[idx]]
        mem[0] = stor43[idx]
        mem[32] = 13
        stor13[stor43[idx]]++
        idx = idx + 1
        continue 
    idx = 1
    while idx < 17:
        mem[0] = stor43[idx]
        mem[32] = 12
        if sub_f1becb6e[stor43[idx]] < stor17:
            idx = idx + 1
            continue 
        require idx < 17
        mem[0] = stor43[idx]
        mem[32] = 13
        if stor13[stor43[idx]] + sub_f1becb6e[stor43[idx]] < stor18:
            idx = idx + 1
            continue 
        require idx < 17
        s = 1
        while s < 17:
            mem[0] = stor43[s]
            mem[32] = 12
            if sub_f1becb6e[stor43[s]] < stor19:
                s = s + 1
                continue 
            require s < 17
            mem[0] = stor43[s]
            mem[32] = 13
            if stor13[stor43[s]] + sub_f1becb6e[stor43[s]] < stor20:
                s = s + 1
                continue 
            require s < 17
            t = 1
            while t < 17:
                require t < 17
                mem[0] = stor43[t]
                mem[32] = 3
                if balances[stor43[t]] < stor24 / 10:
                    require t < 17
                    stor43[t] = stor2
                t = t + 1
                continue 
            t = 0
            u = msg.value
            while t < 17:
                call sub_fb25657a[stor43[t]] with:
                   value msg.value * stor25[t] / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require t < 17
                require t < 17
                require t < 17
                if stor43[t] != stor2:
                    balances[stor43[t]] -= msg.value * stor25[t] / 10
                    totalSupply -= msg.value * stor25[t] / 10
                mem[0] = stor8[stor43[t]]
                mem[32] = 6
                stor6[stor8[stor43[t]]] += msg.value * stor25[t] / 1000
                t = t + 1
                u = u - (msg.value * stor25[t] / 1000)
                continue 
            v = 0
            t = 0
            while t < 23:
                mem[0] = stor14
                mem[32] = 6
                if stor6[stor14] >= stor16:
                    if stor14 == stor15:
                        if stor16 == stor22 * stor42.length:
                            stor15++
                    stor14++
                    if stor14 <= stor21:
                        v = v
                        t = t
                        continue 
                    stor14 = stor15
                    if stor16 != stor22 * stor42.length:
                        stor16 = stor22 * stor42.length
                    else:
                        stor16 = 4 * stor22 * stor42.length / 10
                    v = stor16
                    t = t
                    continue 
                require t < 23
                stor60[t] = stor7[stor14]
                mem[0] = stor14
                mem[32] = 6
                stor6[stor14] += stor23
                stor14++
                if stor14 <= stor21:
                    v = v
                    t = t + 1
                    continue 
                stor14 = stor15
                if stor16 != stor22 * stor42.length:
                    stor16 = stor22 * stor42.length
                else:
                    stor16 = 4 * stor22 * stor42.length / 10
                v = stor16
                t = t + 1
                continue 
            t = 0
            while t < 23:
                mem[0] = stor60[t]
                mem[32] = 11
                call sub_fb25657a[stor60[t]] with:
                   value stor23 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                t = t + 1
                continue 
            call sub_fb25657a[stor43[idx]] with:
               value msg.value / 66 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call sub_fb25657a[stor43[s]] with:
               value msg.value / 66 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call msg.sender with:
               value msg.value / 66 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call sub_fb25657a[stor2] with:
               value u - (3 * msg.value / 66) - (23 * stor23) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.sender == msg.sender
            emit 0x1ba4ecaf: address(arg2), balances[address(msg.sender)]
        s = 1
        while s < 17:
            require s < 17
            mem[0] = stor43[s]
            mem[32] = 3
            if balances[stor43[s]] < stor24 / 10:
                require s < 17
                stor43[s] = stor2
            s = s + 1
            continue 
        s = 0
        t = msg.value
        while s < 17:
            call sub_fb25657a[stor43[s]] with:
               value msg.value * stor25[s] / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require s < 17
            require s < 17
            require s < 17
            if stor43[s] != stor2:
                balances[stor43[s]] -= msg.value * stor25[s] / 10
                totalSupply -= msg.value * stor25[s] / 10
            mem[0] = stor8[stor43[s]]
            mem[32] = 6
            stor6[stor8[stor43[s]]] += msg.value * stor25[s] / 1000
            s = s + 1
            t = t - (msg.value * stor25[s] / 1000)
            continue 
        u = 0
        s = 0
        while s < 23:
            mem[0] = stor14
            mem[32] = 6
            if stor6[stor14] >= stor16:
                if stor14 == stor15:
                    if stor16 == stor22 * stor42.length:
                        stor15++
                stor14++
                if stor14 <= stor21:
                    u = u
                    s = s
                    continue 
                stor14 = stor15
                if stor16 != stor22 * stor42.length:
                    stor16 = stor22 * stor42.length
                else:
                    stor16 = 4 * stor22 * stor42.length / 10
                u = stor16
                s = s
                continue 
            require s < 23
            stor60[s] = stor7[stor14]
            mem[0] = stor14
            mem[32] = 6
            stor6[stor14] += stor23
            stor14++
            if stor14 <= stor21:
                u = u
                s = s + 1
                continue 
            stor14 = stor15
            if stor16 != stor22 * stor42.length:
                stor16 = stor22 * stor42.length
            else:
                stor16 = 4 * stor22 * stor42.length / 10
            u = stor16
            s = s + 1
            continue 
        s = 0
        while s < 23:
            mem[0] = stor60[s]
            mem[32] = 11
            call sub_fb25657a[stor60[s]] with:
               value stor23 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            s = s + 1
            continue 
        call sub_fb25657a[stor43[idx]] with:
           value msg.value / 66 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call sub_fb25657a[stor2] with:
           value msg.value / 66 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call msg.sender with:
           value msg.value / 66 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call sub_fb25657a[stor2] with:
           value t - (3 * msg.value / 66) - (23 * stor23) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.sender == msg.sender
        emit 0x1ba4ecaf: address(arg2), balances[address(msg.sender)]
    idx = 1
    while idx < 17:
        mem[0] = stor43[idx]
        mem[32] = 12
        if sub_f1becb6e[stor43[idx]] < stor19:
            idx = idx + 1
            continue 
        require idx < 17
        mem[0] = stor43[idx]
        mem[32] = 13
        if stor13[stor43[idx]] + sub_f1becb6e[stor43[idx]] < stor20:
            idx = idx + 1
            continue 
        require idx < 17
        s = 1
        while s < 17:
            require s < 17
            mem[0] = stor43[s]
            mem[32] = 3
            if balances[stor43[s]] < stor24 / 10:
                require s < 17
                stor43[s] = stor2
            s = s + 1
            continue 
        s = 0
        t = msg.value
        while s < 17:
            call sub_fb25657a[stor43[s]] with:
               value msg.value * stor25[s] / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require s < 17
            require s < 17
            require s < 17
            if stor43[s] != stor2:
                balances[stor43[s]] -= msg.value * stor25[s] / 10
                totalSupply -= msg.value * stor25[s] / 10
            mem[0] = stor8[stor43[s]]
            mem[32] = 6
            stor6[stor8[stor43[s]]] += msg.value * stor25[s] / 1000
            s = s + 1
            t = t - (msg.value * stor25[s] / 1000)
            continue 
        u = 0
        s = 0
        while s < 23:
            mem[0] = stor14
            mem[32] = 6
            if stor6[stor14] >= stor16:
                if stor14 == stor15:
                    if stor16 == stor22 * stor42.length:
                        stor15++
                stor14++
                if stor14 <= stor21:
                    u = u
                    s = s
                    continue 
                stor14 = stor15
                if stor16 != stor22 * stor42.length:
                    stor16 = stor22 * stor42.length
                else:
                    stor16 = 4 * stor22 * stor42.length / 10
                u = stor16
                s = s
                continue 
            require s < 23
            stor60[s] = stor7[stor14]
            mem[0] = stor14
            mem[32] = 6
            stor6[stor14] += stor23
            stor14++
            if stor14 <= stor21:
                u = u
                s = s + 1
                continue 
            stor14 = stor15
            if stor16 != stor22 * stor42.length:
                stor16 = stor22 * stor42.length
            else:
                stor16 = 4 * stor22 * stor42.length / 10
            u = stor16
            s = s + 1
            continue 
        s = 0
        while s < 23:
            mem[0] = stor60[s]
            mem[32] = 11
            call sub_fb25657a[stor60[s]] with:
               value stor23 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            s = s + 1
            continue 
        call sub_fb25657a[stor2] with:
           value msg.value / 66 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call sub_fb25657a[stor43[idx]] with:
           value msg.value / 66 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call msg.sender with:
           value msg.value / 66 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call sub_fb25657a[stor2] with:
           value t - (3 * msg.value / 66) - (23 * stor23) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.sender == msg.sender
        emit 0x1ba4ecaf: address(arg2), balances[address(msg.sender)]
    idx = 1
    while idx < 17:
        require idx < 17
        mem[0] = stor43[idx]
        mem[32] = 3
        if balances[stor43[idx]] < stor24 / 10:
            require idx < 17
            stor43[idx] = stor2
        idx = idx + 1
        continue 
    idx = 0
    s = msg.value
    while idx < 17:
        call sub_fb25657a[stor43[idx]] with:
           value msg.value * stor25[idx] / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < 17
        require idx < 17
        require idx < 17
        if stor43[idx] != stor2:
            balances[stor43[idx]] -= msg.value * stor25[idx] / 10
            totalSupply -= msg.value * stor25[idx] / 10
        mem[0] = stor8[stor43[idx]]
        mem[32] = 6
        stor6[stor8[stor43[idx]]] += msg.value * stor25[idx] / 1000
        idx = idx + 1
        s = s - (msg.value * stor25[idx] / 1000)
        continue 
    t = 0
    idx = 0
    while idx < 23:
        mem[0] = stor14
        mem[32] = 6
        if stor6[stor14] >= stor16:
            if stor14 == stor15:
                if stor16 == stor22 * stor42.length:
                    stor15++
            stor14++
            if stor14 <= stor21:
                t = t
                idx = idx
                continue 
            stor14 = stor15
            if stor16 != stor22 * stor42.length:
                stor16 = stor22 * stor42.length
            else:
                stor16 = 4 * stor22 * stor42.length / 10
            t = stor16
            idx = idx
            continue 
        require idx < 23
        stor60[idx] = stor7[stor14]
        mem[0] = stor14
        mem[32] = 6
        stor6[stor14] += stor23
        stor14++
        if stor14 <= stor21:
            t = t
            idx = idx + 1
            continue 
        stor14 = stor15
        if stor16 != stor22 * stor42.length:
            stor16 = stor22 * stor42.length
        else:
            stor16 = 4 * stor22 * stor42.length / 10
        t = stor16
        idx = idx + 1
        continue 
    idx = 0
    while idx < 23:
        mem[0] = stor60[idx]
        mem[32] = 11
        call sub_fb25657a[stor60[idx]] with:
           value stor23 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
    call sub_fb25657a[stor2] with:
       value msg.value / 66 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call sub_fb25657a[stor2] with:
       value msg.value / 66 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call msg.sender with:
       value msg.value / 66 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call sub_fb25657a[stor2] with:
       value s - (3 * msg.value / 66) - (23 * stor23) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require msg.sender == msg.sender
    emit 0x1ba4ecaf: address(arg2), balances[address(msg.sender)]
}



}
