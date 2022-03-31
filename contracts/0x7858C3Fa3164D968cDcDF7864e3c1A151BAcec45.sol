contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor26;
uint8 stor27;

function _fallback() payable {
    stor26 = 0
    stor27 = 0
    require not msg.value
    mem[96 len -7951] = code.data[8235 len -7951]
    mem[64] = -7855
    stor0 = mem[140 len 20]
    stor1 = msg.sender
    require 1 < mem[mem[96] + 96]
    stor2 = mem[mem[96] + 172 len 20]
    require 2 < mem[mem[96] + 96]
    stor3 = mem[mem[96] + 204 len 20]
    require 3 < mem[mem[96] + 96]
    stor4 = mem[mem[96] + 236 len 20]
    return code.data[284 len 7951]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
address C1Address;
address C2Address;
address sub_779b9555Address;
mapping of uint256 balance;
mapping of uint256 results;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 sub_2a916e74;
mapping of uint8 stor10;
array of uint256 sub_9370c498;
uint256 N;
array of uint256 tT;
uint256 stor14;
array of uint256 sub_f9086ff7;
uint256 stor16;
array of uint256 sub_7e5bbb1f;
uint256 stor18;
uint256 T;
uint256 sub_a11efef4;
uint256 sub_84c9ad6e;
uint256 sub_31081d7e;
uint256 w;
uint256 sub_d7e96c05;
uint256 d;
uint256 deposit;
uint8 state;
array of uint256 sub_55f7bab8;
uint256 stor29;

function sub_0689aadd(?) {
    return bool(stor8[arg1])
}

function C1() {
    return C1Address
}

function client() {
    return address(stor1.length)
}

function getState() {
    require state <= 7
    return state
}

function C2() {
    return C2Address
}

function w() {
    return w
}

function sub_2a916e74(?) {
    return sub_2a916e74[arg1]
}

function T() {
    return T
}

function sub_2eed2a2c(?) {
    return bool(stor10[arg1])
}

function sub_31081d7e(?) {
    return sub_31081d7e
}

function sub_55f7bab8(?) {
    require arg1 < 2
    return sub_55f7bab8[arg1]
}

function sub_779b9555(?) {
    return sub_779b9555Address
}

function sub_7e5bbb1f(?) {
    require arg1 < 2
    return sub_7e5bbb1f[arg1]
}

function sub_84c9ad6e(?) {
    return sub_84c9ad6e
}

function d() {
    return d
}

function sub_9370c498(?) {
    require arg2 < 2
    return sub_9370c498[arg1][arg2]
}

function sub_a11efef4(?) {
    return sub_a11efef4
}

function sub_a7aba87f(?) {
    return bool(stor10[address(arg1)])
}

function state() {
    require state <= 7
    return state
}

function N() {
    return N
}

function deposit() {
    return deposit
}

function voterPresale(address arg1, address arg2) {
    return bool(stor7[arg1])
}

function sub_d7e96c05(?) {
    return sub_d7e96c05
}

function balance(address arg1) {
    return balance[arg1]
}

function TT(uint256 arg1) {
    require arg1 < 2
    return tT[arg1]
}

function results(address arg1) {
    return results[arg1]
}

function sub_f9086ff7(?) {
    require arg1 < 2
    return sub_f9086ff7[arg1]
}

function _fallback() payable {
    revert 
}

function sub_3e10533c(?) {
    idx = 160
    s = 28
    while 224 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return sub_55f7bab8.length, mem[192]
}

function sub_a17cb3ed(?) {
    idx = 224
    s = 15
    while 288 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    idx = 288
    s = 17
    while 352 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return sub_f9086ff7.length, mem[256], sub_7e5bbb1f.length, mem[320]
}

function Bid() payable {
    require not stor7[address(msg.sender)]
    require msg.value == d
    require T <= sub_a11efef4
    require state <= 7
    if state != 1:
        return 0
    deposit += msg.value
    sub_2a916e74[address(msg.sender)] = msg.value
    stor7[address(msg.sender)] = 1
    sub_2a916e74[address(msg.sender)] = msg.value
    if bool(stor7[stor2]) == 1:
        if 1 == bool(stor7[stor3]):
            state = 2
    return 1
}

function sub_56340486(?) {
    require not stor8[address(msg.sender)]
    require T <= sub_84c9ad6e
    require state <= 7
    if state != 2:
        return 0
    if C1Address != msg.sender:
        sub_7e5bbb1f.length = call.data[4]
        stor18 = call.data[36]
    else:
        sub_f9086ff7.length = call.data[4]
        stor16 = call.data[36]
    stor8[address(msg.sender)] = 1
    if bool(stor8[stor2]) == 1:
        if 1 == bool(stor8[stor3]):
            state = 3
    return 1
}

function reset() {
    require address(stor1.length) == msg.sender
    w = 0
    sub_d7e96c05 = 0
    d = 0
    sub_a11efef4 = 0
    sub_84c9ad6e = 0
    sub_31081d7e = 0
    stor7[stor2] = 0
    stor7[stor3] = 0
    balance[address(stor1.length)] = 0
    balance[stor2] = 0
    balance[stor3] = 0
    stor10[stor2] = 0
    stor10[stor3] = 0
    deposit = 0
    state = 0
    stor8[stor2] = 0
    stor8[stor3] = 0
    call address(stor1.length) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return 0
}

function Create(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require address(stor1.length) == msg.sender
    w = arg1
    sub_d7e96c05 = arg2
    d = arg3
    T = block.timestamp
    sub_a11efef4 = arg4
    sub_84c9ad6e = arg5
    sub_31081d7e = arg6
    require msg.value
    if T > sub_a11efef4:
        if T > sub_84c9ad6e:
            require T <= sub_31081d7e
    if (2 * w) + sub_d7e96c05 != msg.value:
        return 0
    require state <= 7
    if state:
        return 0
    state = 1
    deposit += msg.value
    return 1
}

function sub_5a98d0e1(?) {
    require address(stor1.length) == msg.sender
    require state <= 7
    require state == 3
    require T < sub_31081d7e
    N = arg1
    tT.length = call.data[4]
    stor14 = call.data[36]
    if not stor8[stor2]:
        if not stor8[stor3]:
            balance[address(stor1.length)] = sub_d7e96c05 + (2 * w) + (2 * d)
            call address(stor1.length) with:
               value balance[address(stor1.length)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            state = 4
            return 0
    if bool(stor8[stor2]) != 1:
        state = 5
        return 0
    if bool(stor8[stor3]) != 1:
        state = 5
        return 0
    idx = 196
    s = 15
    while 260 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    idx = 260
    s = 17
    while 324 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    idx = 324
    s = 13
    while 388 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor0)
    call stor0.0x28e44298 with:
         gas gas_remaining - 50 wei
        args N, sub_f9086ff7.length, mem[228], sub_7e5bbb1f.length, mem[292], tT.length, mem[356]
    require ext_call.success
    if not ext_call.return_data[0]:
        state = 5
        return 0
    balance[stor2] = sub_2a916e74[stor2] + w
    balance[stor3] = w + sub_2a916e74[stor3]
    balance[address(stor1.length)] = sub_d7e96c05
    call C1Address with:
       value sub_2a916e74[stor2] + w wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call C2Address with:
       value w + sub_2a916e74[stor3] wei
         gas 2300 * is_zero(value) wei
    call address(stor1.length) with:
       value sub_d7e96c05 wei
         gas 2300 * is_zero(value) wei
    state = 4
    return 1
}

function sub_5b34919c(?) {
    require sub_779b9555Address == msg.sender
    require state <= 7
    require state == 5
    sub_55f7bab8.length = call.data[4]
    stor29 = call.data[36]
    balance[stor4] = sub_d7e96c05
    call sub_779b9555Address with:
       value sub_d7e96c05 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if bool(stor8[stor2]) != 1:
        stor10[stor2] = 0
    else:
        mem[448] = 0
        idx = 420
        s = 15
        while 484 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        idx = 484
        s = 28
        while 548 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(stor0)
        call stor0.0xf5a93beb with:
             gas gas_remaining - 50 wei
            args sub_f9086ff7.length, mem[452], sub_55f7bab8.length, mem[516], call.data[68], call.data[100], call.data[132], call.data[164], arg1, arg2
        require ext_call.success
        if ext_call.return_data[0]:
            stor10[stor2] = 1
    if bool(stor8[stor2]) != 1:
        stor10[stor3] = 0
    else:
        mem[448] = 0
        idx = 420
        s = 17
        while 484 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        idx = 484
        s = 28
        while 548 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(stor0)
        call stor0.0xf5a93beb with:
             gas gas_remaining - 50 wei
            args sub_7e5bbb1f.length, mem[452], sub_55f7bab8.length, mem[516], call.data[196], call.data[228], call.data[260], call.data[292], arg3, arg4
        require ext_call.success
        if ext_call.return_data[0]:
            stor10[stor3] = 1
    if 1 == bool(stor10[stor2]):
        if 1 == bool(stor10[stor3]):
            balance[address(stor1.length)] = sub_2a916e74[stor3] + sub_2a916e74[stor2] + (2 * w)
            call address(stor1.length) with:
               value sub_2a916e74[stor3] + (2 * w) + sub_2a916e74[stor2] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            state = 4
            return 1
    if not stor10[stor2]:
        if not stor10[stor3]:
            balance[stor2] = sub_2a916e74[stor2] + w
            balance[stor3] = w + sub_2a916e74[stor3]
            call C1Address with:
               value sub_2a916e74[stor2] + w wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call C2Address with:
               value w + sub_2a916e74[stor3] wei
                 gas 2300 * is_zero(value) wei
            state = 4
            return 2
    if 1 == bool(stor10[stor2]):
        if not stor10[stor3]:
            balance[stor3] = w + sub_2a916e74[stor2] + sub_2a916e74[stor3] - sub_d7e96c05
            call C2Address with:
               value sub_2a916e74[stor2] + w + sub_2a916e74[stor3] - sub_d7e96c05 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            balance[address(stor1.length)] = w
            call address(stor1.length) with:
               value w wei
                 gas 2300 * is_zero(value) wei
            state = 4
            return 3
    if stor10[stor2]:
        state = 4
        return 0
    if bool(stor10[stor3]) != 1:
        state = 4
        return 0
    balance[stor2] = sub_2a916e74[stor3] - sub_d7e96c05 + sub_2a916e74[stor2] + w
    call C1Address with:
       value sub_2a916e74[stor3] - sub_d7e96c05 + sub_2a916e74[stor2] + w wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balance[address(stor1.length)] = w
    call address(stor1.length) with:
       value w wei
         gas 2300 * is_zero(value) wei
    state = 4
    return 4
}

function Timer() {
    T = block.timestamp
    if block.timestamp < sub_a11efef4:
        if T < sub_84c9ad6e:
            if T >= sub_31081d7e:
                require state <= 7
                if state == 3:
                    if bool(stor8[stor2]) != 1:
                        if 1 == bool(stor8[stor3]):
                            balance[stor3] = sub_2a916e74[stor3] + w
                            call C2Address with:
                               value sub_2a916e74[stor3] + w wei
                                 gas 2300 * is_zero(value) wei
                            deposit = deposit - sub_2a916e74[stor3] - w
                    else:
                        balance[stor2] = sub_2a916e74[stor2] + w
                        call C1Address with:
                           value sub_2a916e74[stor2] + w wei
                             gas 2300 * is_zero(value) wei
                        deposit = deposit - sub_2a916e74[stor2] - w
                        if 1 == bool(stor8[stor3]):
                            balance[stor3] = sub_2a916e74[stor3] + w
                            call C2Address with:
                               value sub_2a916e74[stor3] + w wei
                                 gas 2300 * is_zero(value) wei
                            deposit = deposit - sub_2a916e74[stor3] - w
                    balance[address(stor1.length)] = deposit
                    state = 4
        else:
            require state <= 7
            if state == 2:
                state = 3
            else:
                if T >= sub_31081d7e:
                    require state <= 7
                    if state == 3:
                        if bool(stor8[stor2]) != 1:
                            if 1 == bool(stor8[stor3]):
                                balance[stor3] = sub_2a916e74[stor3] + w
                                call C2Address with:
                                   value sub_2a916e74[stor3] + w wei
                                     gas 2300 * is_zero(value) wei
                                deposit = deposit - sub_2a916e74[stor3] - w
                        else:
                            balance[stor2] = sub_2a916e74[stor2] + w
                            call C1Address with:
                               value sub_2a916e74[stor2] + w wei
                                 gas 2300 * is_zero(value) wei
                            deposit = deposit - sub_2a916e74[stor2] - w
                            if 1 == bool(stor8[stor3]):
                                balance[stor3] = sub_2a916e74[stor3] + w
                                call C2Address with:
                                   value sub_2a916e74[stor3] + w wei
                                     gas 2300 * is_zero(value) wei
                                deposit = deposit - sub_2a916e74[stor3] - w
                        balance[address(stor1.length)] = deposit
                        state = 4
    else:
        require state <= 7
        if state == 1:
            balance[address(stor1.length)] = (2 * w) + sub_d7e96c05 + balance[address(stor1.length)]
            call address(stor1.length) with:
               value (2 * w) + sub_d7e96c05 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if 1 == bool(stor7[stor2]):
                balance[stor2] += d
                call C1Address with:
                   value d wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            if 1 == bool(stor7[stor3]):
                balance[stor3] += d
                call C2Address with:
                   value d wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            state = 6
        else:
            if T < sub_84c9ad6e:
                if T >= sub_31081d7e:
                    require state <= 7
                    if state == 3:
                        if bool(stor8[stor2]) != 1:
                            if 1 == bool(stor8[stor3]):
                                balance[stor3] = sub_2a916e74[stor3] + w
                                call C2Address with:
                                   value sub_2a916e74[stor3] + w wei
                                     gas 2300 * is_zero(value) wei
                                deposit = deposit - sub_2a916e74[stor3] - w
                        else:
                            balance[stor2] = sub_2a916e74[stor2] + w
                            call C1Address with:
                               value sub_2a916e74[stor2] + w wei
                                 gas 2300 * is_zero(value) wei
                            deposit = deposit - sub_2a916e74[stor2] - w
                            if 1 == bool(stor8[stor3]):
                                balance[stor3] = sub_2a916e74[stor3] + w
                                call C2Address with:
                                   value sub_2a916e74[stor3] + w wei
                                     gas 2300 * is_zero(value) wei
                                deposit = deposit - sub_2a916e74[stor3] - w
                        balance[address(stor1.length)] = deposit
                        state = 4
            else:
                require state <= 7
                if state == 2:
                    state = 3
                else:
                    if T >= sub_31081d7e:
                        require state <= 7
                        if state == 3:
                            if bool(stor8[stor2]) != 1:
                                if 1 == bool(stor8[stor3]):
                                    balance[stor3] = sub_2a916e74[stor3] + w
                                    call C2Address with:
                                       value sub_2a916e74[stor3] + w wei
                                         gas 2300 * is_zero(value) wei
                                    deposit = deposit - sub_2a916e74[stor3] - w
                            else:
                                balance[stor2] = sub_2a916e74[stor2] + w
                                call C1Address with:
                                   value sub_2a916e74[stor2] + w wei
                                     gas 2300 * is_zero(value) wei
                                deposit = deposit - sub_2a916e74[stor2] - w
                                if 1 == bool(stor8[stor3]):
                                    balance[stor3] = sub_2a916e74[stor3] + w
                                    call C2Address with:
                                       value sub_2a916e74[stor3] + w wei
                                         gas 2300 * is_zero(value) wei
                                    deposit = deposit - sub_2a916e74[stor3] - w
                            balance[address(stor1.length)] = deposit
                            state = 4
    return 0
}



}
