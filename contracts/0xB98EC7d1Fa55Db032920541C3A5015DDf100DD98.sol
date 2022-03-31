contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
address stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor8 = code.data[7171 len 20]
    return code.data[95 len 7064]
}



// =====================  Runtime code  =====================


uint8 sub_45fa9fe5;
uint256 sub_074128a9;
array of uint256 sub_60b0f55f;
uint256 stor3;
array of uint256 sub_3c414376;
uint256 stor5;
mapping of uint256 balance;
mapping of uint256 deposit;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 T;
uint256 sub_3f816410;
uint256 sub_c2fdf892;

function sub_074128a9(?) {
    return sub_074128a9
}

function T() {
    return T
}

function sub_3c414376(?) {
    require arg1 < 2
    return sub_3c414376[arg1]
}

function sub_3f816410(?) {
    return sub_3f816410
}

function sub_45fa9fe5(?) {
    require sub_45fa9fe5 <= 4
    return sub_45fa9fe5
}

function sub_60b0f55f(?) {
    require arg1 < 2
    return sub_60b0f55f[arg1]
}

function Deposit(address arg1) {
    return deposit[arg1]
}

function sub_c2fdf892(?) {
    return sub_c2fdf892
}

function balance(address arg1) {
    return balance[arg1]
}

function _fallback() {
    revert 
}

function Join() payable {
    require ext_code.size(stor8)
    call stor8.0x1fc2044c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(stor8)
        call stor8.C1() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require msg.sender == ext_call.return_data[12 len 20]
    require msg.value == stor9 + stor10
    require T < sub_3f816410
    require sub_45fa9fe5 <= 4
    if sub_45fa9fe5 != 1:
        return 0
    require ext_code.size(stor8)
    call stor8.0x1865c57d with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[0] != 2:
        return 0
    sub_074128a9 += msg.value
    sub_45fa9fe5 = 2
    deposit[address(msg.sender)] = msg.value
    return 1
}

function sub_9e3502c9(?) payable {
    require ext_code.size(stor8)
    call stor8.0x1fc2044c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(stor8)
        call stor8.C1() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require msg.sender == ext_call.return_data[12 len 20]
    T = block.timestamp
    sub_3f816410 = arg3
    sub_c2fdf892 = arg4
    stor9 = arg1
    stor10 = arg2
    require arg1 + arg2 == msg.value
    if T > sub_3f816410:
        require ext_code.size(stor8)
        call stor8.0x84c9ad6e with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if sub_3f816410 > ext_call.return_data[0]:
            require ext_code.size(stor8)
            call stor8.0x31081d7e with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor8)
            call stor8.0x84c9ad6e with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0] > ext_call.return_data[0]:
                require ext_code.size(stor8)
                call stor8.0x31081d7e with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_call.return_data[0] <= sub_c2fdf892
    require sub_45fa9fe5 <= 4
    if sub_45fa9fe5:
        return 0
    require ext_code.size(stor8)
    call stor8.0x1865c57d with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[0] != 2:
        return 0
    sub_074128a9 += msg.value
    deposit[address(msg.sender)] = msg.value
    sub_45fa9fe5 = 1
    sub_60b0f55f.length = call.data[4]
    stor3 = call.data[36]
    sub_3c414376.length = call.data[68]
    stor5 = call.data[100]
    return 1
}

function reset() {
    require ext_code.size(stor8)
    call stor8.C1() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == msg.sender:
        sub_3f816410 = 0
        sub_c2fdf892 = 0
        stor9 = 0
        stor10 = 0
        sub_074128a9 = 0
        if ext_code.size(stor8):
            call stor8.C1() with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                balance[ext_call.return_data[12 len 20]] = 0
                if ext_code.size(stor8):
                    call stor8.0x1fc2044c with:
                         gas gas_remaining - 50 wei
                    if ext_call.success:
                        balance[ext_call.return_data[12 len 20]] = 0
                        if ext_code.size(stor8):
                            call stor8.0x1fc2044c with:
                                 gas gas_remaining - 50 wei
                            if ext_call.success:
                                deposit[ext_call.return_data[12 len 20]] = 0
                                if ext_code.size(stor8):
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    if ext_call.success:
                                        deposit[ext_call.return_data[12 len 20]] = 0
                                        call msg.sender with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    else:
        if ext_code.size(stor8):
            call stor8.0x1fc2044c with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                if msg.sender == ext_call.return_data[12 len 20]:
                    sub_3f816410 = 0
                    sub_c2fdf892 = 0
                    stor9 = 0
                    stor10 = 0
                    sub_074128a9 = 0
                    if ext_code.size(stor8):
                        call stor8.C1() with:
                             gas gas_remaining - 50 wei
                        if ext_call.success:
                            balance[ext_call.return_data[12 len 20]] = 0
                            if ext_code.size(stor8):
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                if ext_call.success:
                                    balance[ext_call.return_data[12 len 20]] = 0
                                    if ext_code.size(stor8):
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        if ext_call.success:
                                            deposit[ext_call.return_data[12 len 20]] = 0
                                            if ext_code.size(stor8):
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                if ext_call.success:
                                                    deposit[ext_call.return_data[12 len 20]] = 0
                                                    call msg.sender with:
                                                       value eth.balance(this.address) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
    revert 
}

function sub_a50f28ef(?) {
    T = block.timestamp
    if block.timestamp >= sub_3f816410:
        require sub_45fa9fe5 <= 4
        if sub_45fa9fe5 == 1:
            require ext_code.size(stor8)
            call stor8.0x1fc2044c with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor8)
            call stor8.0x1fc2044c with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
            require ext_code.size(stor8)
            call stor8.C1() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor8)
            call stor8.C1() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
            require ext_code.size(stor8)
            call stor8.C1() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor8)
            call stor8.C1() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            call address(ext_call.return_data[0]) with:
               value deposit[address(ext_call.return_data[0])] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                return 0
            require ext_code.size(stor8)
            call stor8.0x1fc2044c with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor8)
            call stor8.0x1fc2044c with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            call address(ext_call.return_data[0]) with:
               value deposit[address(ext_call.return_data[0])] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                return 0
            sub_45fa9fe5 = 3
            return 1
    if T >= sub_c2fdf892:
        require sub_45fa9fe5 <= 4
        if sub_45fa9fe5 == 2:
            require ext_code.size(stor8)
            call stor8.0x1865c57d with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if 4 == ext_call.return_data[0]:
                require ext_code.size(stor8)
                call stor8.0xa17cb3ed with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(stor8)
                if ext_call.return_data[0] != sub_60b0f55f.length:
                    if ext_call.return_data[0] == sub_60b0f55f.length:
                        call stor8.0x1fc2044c with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if ext_call.return_data[0] != sub_60b0f55f.length:
                            require ext_code.size(stor8)
                            call stor8.0x1fc2044c with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                            require ext_code.size(stor8)
                            call stor8.C1() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor8)
                            call stor8.C1() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                            require ext_code.size(stor8)
                            call stor8.0x1fc2044c with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor8)
                            call stor8.0x1fc2044c with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            call address(ext_call.return_data[0]) with:
                               value deposit[address(ext_call.return_data[0])] wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor8)
                                call stor8.C1() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                call address(ext_call.return_data[0]) with:
                                   value deposit[address(ext_call.return_data[0])] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    return 1
                        else:
                            if ext_call.return_data[32] != stor3:
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                require ext_code.size(stor8)
                                call stor8.C1() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor8)
                                call stor8.C1() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                call address(ext_call.return_data[0]) with:
                                   value deposit[address(ext_call.return_data[0])] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value deposit[address(ext_call.return_data[0])] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if ext_call.return_data[64] == sub_3c414376.length:
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value deposit[address(ext_call.return_data[0])] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if ext_call.return_data[96] != stor5:
                                        balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value (2 * stor10) + stor9 wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            return 1
                                    else:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                    else:
                        if ext_call.return_data[32] == stor3:
                            call stor8.0x1fc2044c with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if ext_call.return_data[0] != sub_60b0f55f.length:
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                require ext_code.size(stor8)
                                call stor8.C1() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor8)
                                call stor8.C1() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                call address(ext_call.return_data[0]) with:
                                   value deposit[address(ext_call.return_data[0])] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value deposit[address(ext_call.return_data[0])] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if ext_call.return_data[32] != stor3:
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value deposit[address(ext_call.return_data[0])] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if ext_call.return_data[64] == sub_3c414376.length:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if ext_call.return_data[96] != stor5:
                                            balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value (2 * stor10) + stor9 wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                        else:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                        else:
                            if ext_call.return_data[64] != sub_3c414376.length:
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                if ext_call.return_data[0] != sub_60b0f55f.length:
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value deposit[address(ext_call.return_data[0])] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if ext_call.return_data[32] != stor3:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if ext_call.return_data[64] == sub_3c414376.length:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if ext_call.return_data[96] != stor5:
                                                balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value (2 * stor10) + stor9 wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                            else:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                            else:
                                if ext_call.return_data[96] == stor5:
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value (2 * stor10) + stor9 wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        return 1
                                else:
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] != sub_60b0f55f.length:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if ext_call.return_data[32] != stor3:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if ext_call.return_data[64] == sub_3c414376.length:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if ext_call.return_data[96] != stor5:
                                                    balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value (2 * stor10) + stor9 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                                else:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                else:
                    if ext_call.return_data[32] != stor3:
                        if ext_call.return_data[0] == sub_60b0f55f.length:
                            call stor8.0x1fc2044c with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if ext_call.return_data[0] != sub_60b0f55f.length:
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                require ext_code.size(stor8)
                                call stor8.C1() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor8)
                                call stor8.C1() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                call address(ext_call.return_data[0]) with:
                                   value deposit[address(ext_call.return_data[0])] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value deposit[address(ext_call.return_data[0])] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if ext_call.return_data[32] != stor3:
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value deposit[address(ext_call.return_data[0])] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if ext_call.return_data[64] == sub_3c414376.length:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if ext_call.return_data[96] != stor5:
                                            balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value (2 * stor10) + stor9 wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                        else:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                        else:
                            if ext_call.return_data[32] == stor3:
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                if ext_call.return_data[0] != sub_60b0f55f.length:
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value deposit[address(ext_call.return_data[0])] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if ext_call.return_data[32] != stor3:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if ext_call.return_data[64] == sub_3c414376.length:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if ext_call.return_data[96] != stor5:
                                                balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value (2 * stor10) + stor9 wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                            else:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                            else:
                                if ext_call.return_data[64] != sub_3c414376.length:
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] != sub_60b0f55f.length:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if ext_call.return_data[32] != stor3:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if ext_call.return_data[64] == sub_3c414376.length:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if ext_call.return_data[96] != stor5:
                                                    balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value (2 * stor10) + stor9 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                                else:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                else:
                                    if ext_call.return_data[96] == stor5:
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value (2 * stor10) + stor9 wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            return 1
                                    else:
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if ext_call.return_data[0] != sub_60b0f55f.length:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if ext_call.return_data[32] != stor3:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if ext_call.return_data[64] == sub_3c414376.length:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if ext_call.return_data[96] != stor5:
                                                        balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value (2 * stor10) + stor9 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                                    else:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value deposit[address(ext_call.return_data[0])] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                return 1
                    else:
                        if ext_call.return_data[64] != sub_3c414376.length:
                            if ext_call.return_data[0] == sub_60b0f55f.length:
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                if ext_call.return_data[0] != sub_60b0f55f.length:
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    require ext_code.size(stor8)
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value deposit[address(ext_call.return_data[0])] wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if ext_call.return_data[32] != stor3:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if ext_call.return_data[64] == sub_3c414376.length:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if ext_call.return_data[96] != stor5:
                                                balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value (2 * stor10) + stor9 wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                            else:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                            else:
                                if ext_call.return_data[32] == stor3:
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] != sub_60b0f55f.length:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if ext_call.return_data[32] != stor3:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if ext_call.return_data[64] == sub_3c414376.length:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if ext_call.return_data[96] != stor5:
                                                    balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value (2 * stor10) + stor9 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                                else:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                else:
                                    if ext_call.return_data[64] != sub_3c414376.length:
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if ext_call.return_data[0] != sub_60b0f55f.length:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if ext_call.return_data[32] != stor3:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if ext_call.return_data[64] == sub_3c414376.length:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if ext_call.return_data[96] != stor5:
                                                        balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value (2 * stor10) + stor9 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                                    else:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value deposit[address(ext_call.return_data[0])] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                return 1
                                    else:
                                        if ext_call.return_data[96] == stor5:
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value (2 * stor10) + stor9 wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                        else:
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            if ext_call.return_data[0] != sub_60b0f55f.length:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if ext_call.return_data[32] != stor3:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if ext_call.return_data[64] == sub_3c414376.length:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value deposit[address(ext_call.return_data[0])] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if ext_call.return_data[96] != stor5:
                                                            balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value (2 * stor10) + stor9 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value deposit[address(ext_call.return_data[0])] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                require ext_code.size(stor8)
                                                                call stor8.0x1fc2044c with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                require ext_code.size(stor8)
                                                                call stor8.C1() with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                call address(ext_call.return_data[0]) with:
                                                                   value deposit[address(ext_call.return_data[0])] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                                                                    return 1
                        else:
                            if ext_call.return_data[96] == stor5:
                                call stor8.C1() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                balance[address(ext_call.return_data[0])] = stor9
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                balance[address(ext_call.return_data[0])] = stor9 + stor10
                                require ext_code.size(stor8)
                                call stor8.0x1fc2044c with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                call address(ext_call.return_data[0]) with:
                                   value stor10 + stor9 wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    require ext_code.size(stor8)
                                    call stor8.C1() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    call address(ext_call.return_data[0]) with:
                                       value stor9 wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if ext_call.return_data[0] == sub_60b0f55f.length:
                                    call stor8.0x1fc2044c with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] != sub_60b0f55f.length:
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.C1() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        require ext_code.size(stor8)
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        call address(ext_call.return_data[0]) with:
                                           value deposit[address(ext_call.return_data[0])] wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if ext_call.return_data[32] != stor3:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if ext_call.return_data[64] == sub_3c414376.length:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if ext_call.return_data[96] != stor5:
                                                    balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value (2 * stor10) + stor9 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                                else:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                else:
                                    if ext_call.return_data[32] == stor3:
                                        call stor8.0x1fc2044c with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if ext_call.return_data[0] != sub_60b0f55f.length:
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.C1() with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            require ext_code.size(stor8)
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            call address(ext_call.return_data[0]) with:
                                               value deposit[address(ext_call.return_data[0])] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if ext_call.return_data[32] != stor3:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if ext_call.return_data[64] == sub_3c414376.length:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if ext_call.return_data[96] != stor5:
                                                        balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value (2 * stor10) + stor9 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                                    else:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value deposit[address(ext_call.return_data[0])] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                return 1
                                    else:
                                        if ext_call.return_data[64] != sub_3c414376.length:
                                            call stor8.0x1fc2044c with:
                                                 gas gas_remaining - 50 wei
                                            require ext_call.success
                                            if ext_call.return_data[0] != sub_60b0f55f.length:
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                require ext_code.size(stor8)
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value deposit[address(ext_call.return_data[0])] wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if ext_call.return_data[32] != stor3:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if ext_call.return_data[64] == sub_3c414376.length:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value deposit[address(ext_call.return_data[0])] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if ext_call.return_data[96] != stor5:
                                                            balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value (2 * stor10) + stor9 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value deposit[address(ext_call.return_data[0])] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                require ext_code.size(stor8)
                                                                call stor8.0x1fc2044c with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                require ext_code.size(stor8)
                                                                call stor8.C1() with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                call address(ext_call.return_data[0]) with:
                                                                   value deposit[address(ext_call.return_data[0])] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                                                                    return 1
                                        else:
                                            if ext_call.return_data[96] == stor5:
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                require ext_code.size(stor8)
                                                call stor8.C1() with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                call address(ext_call.return_data[0]) with:
                                                   value (2 * stor10) + stor9 wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                            else:
                                                call stor8.0x1fc2044c with:
                                                     gas gas_remaining - 50 wei
                                                require ext_call.success
                                                if ext_call.return_data[0] != sub_60b0f55f.length:
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.C1() with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    require ext_code.size(stor8)
                                                    call stor8.0x1fc2044c with:
                                                         gas gas_remaining - 50 wei
                                                    require ext_call.success
                                                    call address(ext_call.return_data[0]) with:
                                                       value deposit[address(ext_call.return_data[0])] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if ext_call.return_data[32] != stor3:
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.C1() with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        require ext_code.size(stor8)
                                                        call stor8.0x1fc2044c with:
                                                             gas gas_remaining - 50 wei
                                                        require ext_call.success
                                                        call address(ext_call.return_data[0]) with:
                                                           value deposit[address(ext_call.return_data[0])] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value deposit[address(ext_call.return_data[0])] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if ext_call.return_data[64] == sub_3c414376.length:
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.C1() with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            require ext_code.size(stor8)
                                                            call stor8.0x1fc2044c with:
                                                                 gas gas_remaining - 50 wei
                                                            require ext_call.success
                                                            call address(ext_call.return_data[0]) with:
                                                               value deposit[address(ext_call.return_data[0])] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                require ext_code.size(stor8)
                                                                call stor8.0x1fc2044c with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                require ext_code.size(stor8)
                                                                call stor8.C1() with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                call address(ext_call.return_data[0]) with:
                                                                   value deposit[address(ext_call.return_data[0])] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if ext_call.return_data[96] != stor5:
                                                                balance[address(ext_call.return_data[0])] = (2 * stor10) + stor9
                                                                require ext_code.size(stor8)
                                                                call stor8.0x1fc2044c with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                call address(ext_call.return_data[0]) with:
                                                                   value (2 * stor10) + stor9 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor8)
                                                                call stor8.0x1fc2044c with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                                require ext_code.size(stor8)
                                                                call stor8.C1() with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                require ext_code.size(stor8)
                                                                call stor8.C1() with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                balance[address(ext_call.return_data[0])] = deposit[address(ext_call.return_data[0])]
                                                                require ext_code.size(stor8)
                                                                call stor8.0x1fc2044c with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                require ext_code.size(stor8)
                                                                call stor8.0x1fc2044c with:
                                                                     gas gas_remaining - 50 wei
                                                                require ext_call.success
                                                                call address(ext_call.return_data[0]) with:
                                                                   value deposit[address(ext_call.return_data[0])] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                                                                    require ext_code.size(stor8)
                                                                    call stor8.0x1fc2044c with:
                                                                         gas gas_remaining - 50 wei
                                                                    require ext_call.success
                                                                    require ext_code.size(stor8)
                                                                    call stor8.C1() with:
                                                                         gas gas_remaining - 50 wei
                                                                    require ext_call.success
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value deposit[address(ext_call.return_data[0])] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                                                        return 1
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
