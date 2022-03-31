contract main {


// =======================  Init code  ======================


address stor2;
address stor3;
address stor4;
uint256 stor5;
uint8 stor14;

function _fallback() payable {
    stor5 = 0
    stor14 = 0
    require not msg.value
    stor2 = code.data[7314 len 20]
    stor3 = code.data[7250 len 20]
    stor4 = code.data[7282 len 20]
    return code.data[136 len 7102]
}



// =====================  Runtime code  =====================


address clientAddress;
address sub_d55d3b26Address;
address stor2;
address stor3;
address stor4;
uint256 sub_074128a9;
uint256 N;
array of uint256 tT;
uint256 stor8;
array of uint256 com;
uint256 stor10;
mapping of uint256 balance;
mapping of uint256 results;
mapping of uint256 sub_2a916e74;
uint8 sub_7cf46945;
uint256 sub_f00a619b;

function sub_074128a9(?) {
    return sub_074128a9
}

function client() {
    return clientAddress
}

function sub_2a916e74(?) {
    return sub_2a916e74[arg1]
}

function com(uint256 arg1) {
    require arg1 < 2
    return com[arg1]
}

function sub_7cf46945(?) {
    require sub_7cf46945 <= 5
    return sub_7cf46945
}

function N() {
    return N
}

function sub_d55d3b26(?) {
    return sub_d55d3b26Address
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

function sub_f00a619b(?) {
    return sub_f00a619b
}

function _fallback() {
    revert 
}

function reset() {
    require clientAddress == msg.sender
    balance[stor0] = 0
    balance[stor1] = 0
    sub_7cf46945 = 0
    sub_f00a619b = 0
    sub_2a916e74[stor0] = 0
    sub_2a916e74[stor1] = 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_9206d151(?) {
    require sub_d55d3b26Address == msg.sender
    require ext_code.size(stor3)
    call stor3.0x84c9ad6e with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require sub_f00a619b <= ext_call.return_data[0]
    require sub_7cf46945 <= 5
    if sub_7cf46945 != 2:
        return 0
    require ext_code.size(stor3)
    call stor3.0xc19d93fb with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= 7
    if ext_call.return_data[0] != 2:
        return 0
    com.length = call.data[4]
    stor10 = call.data[36]
    N = arg1
    tT.length = call.data[68]
    stor8 = call.data[100]
    sub_7cf46945 = 3
    return 1
}

function Join() payable {
    require sub_d55d3b26Address == msg.sender
    require ext_code.size(stor3)
    call stor3.0xd7e96c05 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.value == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x84c9ad6e with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require sub_f00a619b <= ext_call.return_data[0]
    require sub_7cf46945 <= 5
    if sub_7cf46945 != 1:
        return 0
    require ext_code.size(stor3)
    call stor3.0xc19d93fb with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= 7
    if ext_call.return_data[0] != 2:
        return 0
    sub_2a916e74[address(msg.sender)] = msg.value
    sub_074128a9 += msg.value
    sub_7cf46945 = 2
    return 1
}

function create(address arg1) payable {
    require ext_code.size(stor3)
    call stor3.0x109e94cf with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    clientAddress = msg.sender
    sub_d55d3b26Address = arg1
    require ext_code.size(stor3)
    call stor3.0xd7e96c05 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x8a054ac2 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x205c9cc7 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.value == 3 * ext_call.return_data[0]
    sub_f00a619b = block.timestamp
    require ext_code.size(stor3)
    call stor3.0x84c9ad6e with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require sub_f00a619b <= ext_call.return_data[0]
    require sub_7cf46945 <= 5
    if sub_7cf46945:
        return 0
    require ext_code.size(stor4)
    call stor4.0x45fa9fe5 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= 4
    if ext_call.return_data[0] != 1:
        require ext_code.size(stor4)
        call stor4.0x45fa9fe5 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[0] <= 4
        if ext_call.return_data[0] != 2:
            return 0
    sub_074128a9 = msg.value
    sub_7cf46945 = 1
    sub_2a916e74[stor0] = msg.value
    return 1
}

function Timer() {
    sub_f00a619b = block.timestamp
    require ext_code.size(stor3)
    call stor3.0x84c9ad6e with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if sub_f00a619b < ext_call.return_data[0]:
        require ext_code.size(stor3)
        call stor3.0x84c9ad6e with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if sub_f00a619b >= ext_call.return_data[0]:
            require sub_7cf46945 <= 5
            if sub_7cf46945 == 3:
                balance[stor0] += sub_074128a9
                call clientAddress with:
                   value sub_074128a9 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                sub_7cf46945 = 4
    else:
        require sub_7cf46945 <= 5
        if sub_7cf46945 == 1:
            balance[stor0] = sub_2a916e74[stor0]
            balance[stor1] = sub_2a916e74[stor1]
            call clientAddress with:
               value sub_2a916e74[stor0] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call sub_d55d3b26Address with:
               value sub_2a916e74[stor1] wei
                 gas 2300 * is_zero(value) wei
            sub_7cf46945 = 5
        else:
            require ext_code.size(stor3)
            call stor3.0x84c9ad6e with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if sub_f00a619b >= ext_call.return_data[0]:
                require sub_7cf46945 <= 5
                if sub_7cf46945 == 3:
                    balance[stor0] += sub_074128a9
                    call clientAddress with:
                       value sub_074128a9 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_7cf46945 = 4
    require ext_code.size(stor3)
    call stor3.0x31081d7e with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if sub_f00a619b < ext_call.return_data[0]:
        require sub_7cf46945 <= 5
        if sub_7cf46945 == 3:
            balance[stor1] += sub_074128a9
            call sub_d55d3b26Address with:
               value sub_074128a9 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            sub_7cf46945 = 4
            return 0
        else:
            return 0
    else:
        return 0
}

function sub_a714848d(?) {
    require clientAddress == msg.sender
    require sub_7cf46945 <= 5
    require ext_code.size(stor3)
    if sub_7cf46945 == 3:
        call stor3.0x3e10533c with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0x28e44298 with:
             gas gas_remaining - 50 wei
            args arg1, call.data[4], call.data[36], 0x3e10533c00000000000000000000000000000000000000000000000000000000, mem[448], call.data[68], call.data[100]
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0xf5a93beb with:
             gas gas_remaining - 50 wei
            args call.data[4], call.data[36], 0x3e10533c00000000000000000000000000000000000000000000000000000000, mem[448], call.data[164], call.data[196], call.data[228], call.data[260], arg2, arg3
        require ext_call.success
        require ext_code.size(stor3)
        call stor3.C1() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor3)
        call stor3.0xa7aba87f with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        require ext_call.success
        require ext_code.size(stor3)
        if not ext_call.return_data[0]:
            call stor3.0x1fc2044c with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor3)
            call stor3.0xa7aba87f with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            if not ext_call.return_data[0]:
                balance[stor0] += sub_074128a9
                call clientAddress with:
                   value sub_074128a9 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                sub_7cf46945 = 4
                return 1
        call stor3.C1() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor3)
        call stor3.0xa7aba87f with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        require ext_call.success
        require ext_code.size(stor3)
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    call stor3.0x1fc2044c with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(stor3)
                    call stor3.0xa7aba87f with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                call stor3.C1() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(stor3)
                call stor3.0xa7aba87f with:
                     gas gas_remaining - 50 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if 1 == bool(ext_call.return_data[0]):
                    require ext_code.size(stor3)
                    call stor3.0x1fc2044c with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(stor3)
                    call stor3.0xa7aba87f with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
            else:
                if not ext_call.return_data[0]:
                    call stor3.0x1fc2044c with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(stor3)
                    call stor3.0xa7aba87f with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                    if 1 == bool(ext_call.return_data[0]):
                        require ext_code.size(stor3)
                        call stor3.0x8a054ac2 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        balance[stor0] += 2 * ext_call.return_data[0]
                        require ext_code.size(stor3)
                        call stor3.0x205c9cc7 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        balance[stor1] += ext_call.return_data[0]
                        require ext_code.size(stor3)
                        call stor3.0x8a054ac2 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        call clientAddress with:
                           value 2 * ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(stor3)
                        call stor3.0x205c9cc7 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        call sub_d55d3b26Address with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        sub_7cf46945 = 4
                        return 2
                call stor3.C1() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(stor3)
                call stor3.0xa7aba87f with:
                     gas gas_remaining - 50 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if 1 == bool(ext_call.return_data[0]):
                    require ext_code.size(stor3)
                    call stor3.0x1fc2044c with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(stor3)
                    call stor3.0xa7aba87f with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                    if 1 == bool(ext_call.return_data[0]):
                        balance[stor1] += sub_074128a9
                        call sub_d55d3b26Address with:
                           value sub_074128a9 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        sub_7cf46945 = 4
                        return 3
        else:
            if not ext_call.return_data[0]:
                call stor3.0x1fc2044c with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(stor3)
                call stor3.0xa7aba87f with:
                     gas gas_remaining - 50 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if 1 == bool(ext_call.return_data[0]):
                    require ext_code.size(stor3)
                    call stor3.0x8a054ac2 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    balance[stor0] += 2 * ext_call.return_data[0]
                    require ext_code.size(stor3)
                    call stor3.0x205c9cc7 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    balance[stor1] += ext_call.return_data[0]
                    require ext_code.size(stor3)
                    call stor3.0x8a054ac2 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    call clientAddress with:
                       value 2 * ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(stor3)
                    call stor3.0x205c9cc7 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    call sub_d55d3b26Address with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_7cf46945 = 4
                    return 2
            call stor3.C1() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor3)
            call stor3.0xa7aba87f with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            if 1 == bool(ext_call.return_data[0]):
                require ext_code.size(stor3)
                call stor3.0x1fc2044c with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(stor3)
                call stor3.0xa7aba87f with:
                     gas gas_remaining - 50 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if 1 == bool(ext_call.return_data[0]):
                    balance[stor1] += sub_074128a9
                    call sub_d55d3b26Address with:
                       value sub_074128a9 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_7cf46945 = 4
                    return 3
    else:
        call stor3.0xc19d93fb with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[0] <= 7
        require 4 == ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.0x3e10533c with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0x28e44298 with:
             gas gas_remaining - 50 wei
            args arg1, call.data[4], call.data[36], 0x3e10533c00000000000000000000000000000000000000000000000000000000, 0, call.data[68], call.data[100]
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0xf5a93beb with:
             gas gas_remaining - 50 wei
            args call.data[4], call.data[36], 0x3e10533c00000000000000000000000000000000000000000000000000000000, 0, call.data[164], call.data[196], call.data[228], call.data[260], arg2, arg3
        require ext_call.success
        require ext_code.size(stor3)
        call stor3.C1() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor3)
        call stor3.0xa7aba87f with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        require ext_call.success
        require ext_code.size(stor3)
        if not ext_call.return_data[0]:
            call stor3.0x1fc2044c with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor3)
            call stor3.0xa7aba87f with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            if not ext_call.return_data[0]:
                balance[stor0] += sub_074128a9
                call clientAddress with:
                   value sub_074128a9 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                sub_7cf46945 = 4
                return 1
        call stor3.C1() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor3)
        call stor3.0xa7aba87f with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        require ext_call.success
        require ext_code.size(stor3)
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    call stor3.0x1fc2044c with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(stor3)
                    call stor3.0xa7aba87f with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                call stor3.C1() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(stor3)
                call stor3.0xa7aba87f with:
                     gas gas_remaining - 50 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if 1 == bool(ext_call.return_data[0]):
                    require ext_code.size(stor3)
                    call stor3.0x1fc2044c with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(stor3)
                    call stor3.0xa7aba87f with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
            else:
                if not ext_call.return_data[0]:
                    call stor3.0x1fc2044c with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(stor3)
                    call stor3.0xa7aba87f with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                    if 1 == bool(ext_call.return_data[0]):
                        require ext_code.size(stor3)
                        call stor3.0x8a054ac2 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        balance[stor0] += 2 * ext_call.return_data[0]
                        require ext_code.size(stor3)
                        call stor3.0x205c9cc7 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        balance[stor1] += ext_call.return_data[0]
                        require ext_code.size(stor3)
                        call stor3.0x8a054ac2 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        call clientAddress with:
                           value 2 * ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(stor3)
                        call stor3.0x205c9cc7 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        call sub_d55d3b26Address with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        sub_7cf46945 = 4
                        return 2
                call stor3.C1() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(stor3)
                call stor3.0xa7aba87f with:
                     gas gas_remaining - 50 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if 1 == bool(ext_call.return_data[0]):
                    require ext_code.size(stor3)
                    call stor3.0x1fc2044c with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(stor3)
                    call stor3.0xa7aba87f with:
                         gas gas_remaining - 50 wei
                        args address(ext_call.return_data[0])
                    require ext_call.success
                    if 1 == bool(ext_call.return_data[0]):
                        balance[stor1] += sub_074128a9
                        call sub_d55d3b26Address with:
                           value sub_074128a9 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        sub_7cf46945 = 4
                        return 3
        else:
            if not ext_call.return_data[0]:
                call stor3.0x1fc2044c with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(stor3)
                call stor3.0xa7aba87f with:
                     gas gas_remaining - 50 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if 1 == bool(ext_call.return_data[0]):
                    require ext_code.size(stor3)
                    call stor3.0x8a054ac2 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    balance[stor0] += 2 * ext_call.return_data[0]
                    require ext_code.size(stor3)
                    call stor3.0x205c9cc7 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    balance[stor1] += ext_call.return_data[0]
                    require ext_code.size(stor3)
                    call stor3.0x8a054ac2 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    call clientAddress with:
                       value 2 * ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(stor3)
                    call stor3.0x205c9cc7 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    call sub_d55d3b26Address with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_7cf46945 = 4
                    return 2
            call stor3.C1() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor3)
            call stor3.0xa7aba87f with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            if 1 == bool(ext_call.return_data[0]):
                require ext_code.size(stor3)
                call stor3.0x1fc2044c with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(stor3)
                call stor3.0xa7aba87f with:
                     gas gas_remaining - 50 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if 1 == bool(ext_call.return_data[0]):
                    balance[stor1] += sub_074128a9
                    call sub_d55d3b26Address with:
                       value sub_074128a9 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_7cf46945 = 4
                    return 3
    balance[stor0] = sub_2a916e74[stor0]
    balance[stor1] = sub_2a916e74[stor1]
    call clientAddress with:
       value sub_2a916e74[stor0] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call sub_d55d3b26Address with:
       value sub_2a916e74[stor1] wei
         gas 2300 * is_zero(value) wei
    sub_7cf46945 = 4
    return 4
}



}
