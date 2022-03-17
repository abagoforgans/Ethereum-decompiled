contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor10;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor10 = 5 * 10^10
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[87 len 4497]
}



// =====================  Runtime code  =====================


#
#  - query2(uint256 arg1, string arg2, string arg3, string arg4)
#
uint256 stor0;
address cbAddress;
address stor2;
mapping of uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint256 stor9;
uint256 stor10;

function cbAddress() payable {
    return cbAddress
}

function useCoupon(string arg1) payable {
    stor9 = sha3(arg1[all])
}

function _fallback() payable {
    call msg.sender with:
       value msg.value wei
         gas 0 wei
}

function setGasPrice(uint256 arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor10 = arg1
}

function setBasePrice(uint256 arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor4 = arg1
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 5
        stor5[stor7[idx]] = arg1 * stor6[stor7[idx]]
        idx = idx + 1
        continue 
}

function createCoupon(string arg1) payable {
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
    require stor8.length < stor8.length
    stor8[stor8.length] = sha3(arg1[all])
}

function getPrice(string arg1) payable {
    if 0 == stor3[address(msg.sender)]:
        return 0
    if stor9 != 0:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            if stor8[idx] != stor9:
                idx = idx + 1
                continue 
            else:
                return 0
    return ((200000 * stor10) + stor5[arg1[all]])
}

function getPrice(string arg1, uint256 arg2) payable {
    if arg2 <= 200000:
        if 0 == stor3[address(msg.sender)]:
            return 0
    if stor9 != 0:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            if stor8[idx] != stor9:
                idx = idx + 1
                continue 
            else:
                return 0
    return ((arg2 * stor10) + stor5[arg1[all]])
}

function addDSource(string arg1, uint256 arg2) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 1
        while stor7.length > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    require stor7.length < stor7.length
    stor7[stor7.length] = sha3(arg1[all])
    stor6[arg1[all]] = arg2
}

function query(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                require arg4 <= 3141592
                stor0++
                emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
                return sha3(stor0 + block.timestamp)
        if 0 == (arg4 * stor10) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg4 * stor10) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg4 * stor10) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg4 * stor10) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg4 * stor10) - stor5[arg2[all]] wei
                 gas 0 wei
    else:
        if 0 == stor3[address(msg.sender)]:
            stor3[address(msg.sender)] = 1
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if stor9 != 0:
                idx = 0
                while idx < stor8.length:
                    mem[0] = 8
                    if stor8[idx] != stor9:
                        idx = idx + 1
                        continue 
                    stor3[address(msg.sender)] = 1
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    require arg1 <= block.timestamp + (1440 * 24 * 3600)
                    require arg4 <= 3141592
                    stor0++
                    emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
                    return sha3(stor0 + block.timestamp)
            if 0 == (arg4 * stor10) + stor5[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg4 * stor10) + stor5[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg4 * stor10) + stor5[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg4 * stor10) - stor5[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg4 * stor10) - stor5[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0++
    emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
    return sha3(stor0 + block.timestamp)
}

function query1(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                require arg4 <= 3141592
                stor0++
                emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
                return sha3(stor0 + block.timestamp)
        if 0 == (arg4 * stor10) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg4 * stor10) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg4 * stor10) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg4 * stor10) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg4 * stor10) - stor5[arg2[all]] wei
                 gas 0 wei
    else:
        if 0 == stor3[address(msg.sender)]:
            stor3[address(msg.sender)] = 1
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if stor9 != 0:
                idx = 0
                while idx < stor8.length:
                    mem[0] = 8
                    if stor8[idx] != stor9:
                        idx = idx + 1
                        continue 
                    stor3[address(msg.sender)] = 1
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    require arg1 <= block.timestamp + (1440 * 24 * 3600)
                    require arg4 <= 3141592
                    stor0++
                    emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
                    return sha3(stor0 + block.timestamp)
            if 0 == (arg4 * stor10) + stor5[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg4 * stor10) + stor5[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg4 * stor10) + stor5[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg4 * stor10) - stor5[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg4 * stor10) - stor5[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0++
    emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
    return sha3(stor0 + block.timestamp)
}

function query_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                require arg4 <= 3141592
                stor0++
                emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
                return sha3(stor0 + block.timestamp)
        if 0 == (arg4 * stor10) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg4 * stor10) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg4 * stor10) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg4 * stor10) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg4 * stor10) - stor5[arg2[all]] wei
                 gas 0 wei
    else:
        if 0 == stor3[address(msg.sender)]:
            stor3[address(msg.sender)] = 1
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if stor9 != 0:
                idx = 0
                while idx < stor8.length:
                    mem[0] = 8
                    if stor8[idx] != stor9:
                        idx = idx + 1
                        continue 
                    stor3[address(msg.sender)] = 1
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    require arg1 <= block.timestamp + (1440 * 24 * 3600)
                    require arg4 <= 3141592
                    stor0++
                    emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
                    return sha3(stor0 + block.timestamp)
            if 0 == (arg4 * stor10) + stor5[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg4 * stor10) + stor5[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg4 * stor10) + stor5[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg4 * stor10) - stor5[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg4 * stor10) - stor5[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0++
    emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
    return sha3(stor0 + block.timestamp)
}

function query1_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                require arg4 <= 3141592
                stor0++
                emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
                return sha3(stor0 + block.timestamp)
        if 0 == (arg4 * stor10) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg4 * stor10) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg4 * stor10) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg4 * stor10) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg4 * stor10) - stor5[arg2[all]] wei
                 gas 0 wei
    else:
        if 0 == stor3[address(msg.sender)]:
            stor3[address(msg.sender)] = 1
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if stor9 != 0:
                idx = 0
                while idx < stor8.length:
                    mem[0] = 8
                    if stor8[idx] != stor9:
                        idx = idx + 1
                        continue 
                    stor3[address(msg.sender)] = 1
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    require arg1 <= block.timestamp + (1440 * 24 * 3600)
                    require arg4 <= 3141592
                    stor0++
                    emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
                    return sha3(stor0 + block.timestamp)
            if 0 == (arg4 * stor10) + stor5[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg4 * stor10) + stor5[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg4 * stor10) + stor5[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg4 * stor10) - stor5[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg4 * stor10) - stor5[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0++
    emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg4
    return sha3(stor0 + block.timestamp)
}

function query2(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    if arg5 > 200000:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                require arg5 <= 3141592
                stor0++
                if not arg3.length % 32:
                    emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, arg3.length + arg2.length + 256, arg5
                else:
                    emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, floor32(arg3.length) + arg2.length + 288, arg5
                return sha3(block.timestamp + stor0)
        if 0 == (arg5 * stor10) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg5 * stor10) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg5 * stor10) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg5 * stor10) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg5 * stor10) - stor5[arg2[all]] wei
                 gas 0 wei
    else:
        if 0 == stor3[address(msg.sender)]:
            stor3[address(msg.sender)] = 1
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if stor9 != 0:
                idx = 0
                while idx < stor8.length:
                    mem[0] = 8
                    if stor8[idx] != stor9:
                        idx = idx + 1
                        continue 
                    stor3[address(msg.sender)] = 1
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    require arg1 <= block.timestamp + (1440 * 24 * 3600)
                    require arg5 <= 3141592
                    stor0++
                    if not arg3.length % 32:
                        emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, arg3.length + arg2.length + 256, arg5
                    else:
                        emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, floor32(arg3.length) + arg2.length + 288, arg5
                    return sha3(block.timestamp + stor0)
            if 0 == (arg5 * stor10) + stor5[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg5 * stor10) + stor5[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg5 * stor10) + stor5[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg5 * stor10) - stor5[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg5 * stor10) - stor5[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg5 <= 3141592
    stor0++
    if not arg3.length % 32:
        emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, arg3.length + arg2.length + 256, arg5
    else:
        emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, floor32(arg3.length) + arg2.length + 288, arg5
    return sha3(block.timestamp + stor0)
}

function query2_withGasLimit(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    if arg5 > 200000:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                require arg5 <= 3141592
                stor0++
                if not arg3.length % 32:
                    emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, arg3.length + arg2.length + 256, arg5
                else:
                    emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, floor32(arg3.length) + arg2.length + 288, arg5
                return sha3(block.timestamp + stor0)
        if 0 == (arg5 * stor10) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg5 * stor10) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg5 * stor10) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg5 * stor10) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg5 * stor10) - stor5[arg2[all]] wei
                 gas 0 wei
    else:
        if 0 == stor3[address(msg.sender)]:
            stor3[address(msg.sender)] = 1
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if stor9 != 0:
                idx = 0
                while idx < stor8.length:
                    mem[0] = 8
                    if stor8[idx] != stor9:
                        idx = idx + 1
                        continue 
                    stor3[address(msg.sender)] = 1
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    require arg1 <= block.timestamp + (1440 * 24 * 3600)
                    require arg5 <= 3141592
                    stor0++
                    if not arg3.length % 32:
                        emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, arg3.length + arg2.length + 256, arg5
                    else:
                        emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, floor32(arg3.length) + arg2.length + 288, arg5
                    return sha3(block.timestamp + stor0)
            if 0 == (arg5 * stor10) + stor5[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg5 * stor10) + stor5[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg5 * stor10) + stor5[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg5 * stor10) - stor5[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg5 * stor10) - stor5[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg5 <= 3141592
    stor0++
    if not arg3.length % 32:
        emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, arg3.length + arg2.length + 256, arg5
    else:
        emit 0x4e65aab8: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 224, floor32(arg3.length) + arg2.length + 288, arg5
    return sha3(block.timestamp + stor0)
}

function query(string arg1, string arg2) payable {
    if 0 == stor3[address(msg.sender)]:
        stor3[address(msg.sender)] = 1
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require 0 <= block.timestamp + (1440 * 24 * 3600)
                stor0++
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length] = arg1[all]
                if not arg1.length % 32:
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, arg1.length + 192, 200000, arg1.length, arg1[all], arg2.length, arg2[all]
                    else:
                        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, arg1.length + 192, 200000, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 384 len -(arg2.length % 32) + 32]
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 384 len arg1.length % 32]
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, floor32(arg1.length) + 224, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len -(arg1.length % 32) + 32], arg2.length, arg2[all]
                    else:
                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, floor32(arg1.length) + 224, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 416 len -(arg2.length % 32) + 32]
                return sha3(stor0 + block.timestamp)
        if 0 == (200000 * stor10) + stor5[arg1[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor10) + stor5[arg1[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor10) + stor5[arg1[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor10) - stor5[arg1[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor10) - stor5[arg1[all]] wei
                 gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    stor0++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, arg1.length + 192, 200000, arg1.length, arg1[all], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
            emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, arg1.length + 192, 200000, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 384 len -(arg2.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 384 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, floor32(arg1.length) + 224, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len -(arg1.length % 32) + 32], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
            emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, floor32(arg1.length) + 224, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 416 len -(arg2.length % 32) + 32]
    return sha3(stor0 + block.timestamp)
}

function query1(string arg1, string arg2) payable {
    if 0 == stor3[address(msg.sender)]:
        stor3[address(msg.sender)] = 1
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require 0 <= block.timestamp + (1440 * 24 * 3600)
                stor0++
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length] = arg1[all]
                if not arg1.length % 32:
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, arg1.length + 192, 200000, arg1.length, arg1[all], arg2.length, arg2[all]
                    else:
                        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, arg1.length + 192, 200000, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 384 len -(arg2.length % 32) + 32]
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 384 len arg1.length % 32]
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, floor32(arg1.length) + 224, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len -(arg1.length % 32) + 32], arg2.length, arg2[all]
                    else:
                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, floor32(arg1.length) + 224, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 416 len -(arg2.length % 32) + 32]
                return sha3(stor0 + block.timestamp)
        if 0 == (200000 * stor10) + stor5[arg1[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor10) + stor5[arg1[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor10) + stor5[arg1[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor10) - stor5[arg1[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor10) - stor5[arg1[all]] wei
                 gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    stor0++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, arg1.length + 192, 200000, arg1.length, arg1[all], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
            emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, arg1.length + 192, 200000, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 384 len -(arg2.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 384 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, floor32(arg1.length) + 224, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len -(arg1.length % 32) + 32], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
            emit 0x1f28d876: sha3(stor0 + block.timestamp), 0, 160, floor32(arg1.length) + 224, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 416 len -(arg2.length % 32) + 32]
    return sha3(stor0 + block.timestamp)
}

function query(uint256 arg1, string arg2, string arg3) payable {
    if 0 == stor3[address(msg.sender)]:
        stor3[address(msg.sender)] = 1
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                stor0++
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384 len arg3.length] = arg3[all]
                    if not arg3.length % 32:
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, arg2.length + 192, 200000, arg2.length, arg2[all], arg3.length, arg3[all]
                    else:
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, arg2.length + 192, 200000, arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 384 len -(arg3.length % 32) + 32]
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg3.length] = arg3[all]
                    if not arg3.length % 32:
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, floor32(arg2.length) + 224, 200000, arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 352 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
                    else:
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, floor32(arg2.length) + 224, 200000, arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 352 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 416 len -(arg3.length % 32) + 32]
                return sha3(stor0 + block.timestamp)
        if 0 == (200000 * stor10) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor10) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor10) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor10) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor10) - stor5[arg2[all]] wei
                 gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    stor0++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, arg2.length + 192, 200000, arg2.length, arg2[all], arg3.length, arg3[all]
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
            emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, arg2.length + 192, 200000, arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 384 len -(arg3.length % 32) + 32]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, floor32(arg2.length) + 224, 200000, arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 352 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
            emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, floor32(arg2.length) + 224, 200000, arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 352 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 416 len -(arg3.length % 32) + 32]
    return sha3(stor0 + block.timestamp)
}

function query1(uint256 arg1, string arg2, string arg3) payable {
    if 0 == stor3[address(msg.sender)]:
        stor3[address(msg.sender)] = 1
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                stor0++
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384 len arg3.length] = arg3[all]
                    if not arg3.length % 32:
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, arg2.length + 192, 200000, arg2.length, arg2[all], arg3.length, arg3[all]
                    else:
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, arg2.length + 192, 200000, arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 384 len -(arg3.length % 32) + 32]
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg3.length] = arg3[all]
                    if not arg3.length % 32:
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, floor32(arg2.length) + 224, 200000, arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 352 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
                    else:
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
                        emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, floor32(arg2.length) + 224, 200000, arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 352 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 416 len -(arg3.length % 32) + 32]
                return sha3(stor0 + block.timestamp)
        if 0 == (200000 * stor10) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor10) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor10) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor10) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor10) - stor5[arg2[all]] wei
                 gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    stor0++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, arg2.length + 192, 200000, arg2.length, arg2[all], arg3.length, arg3[all]
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
            emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, arg2.length + 192, 200000, arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 384 len -(arg3.length % 32) + 32]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, floor32(arg2.length) + 224, 200000, arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 352 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
            emit 0x1f28d876: sha3(stor0 + block.timestamp), arg1, 160, floor32(arg2.length) + 224, 200000, arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 352 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 416 len -(arg3.length % 32) + 32]
    return sha3(stor0 + block.timestamp)
}

function query2(string arg1, string arg2, string arg3) payable {
    if 0 == stor3[address(msg.sender)]:
        stor3[address(msg.sender)] = 1
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if stor9 != 0:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if stor8[idx] != stor9:
                    idx = idx + 1
                    continue 
                stor3[address(msg.sender)] = 1
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                require 0 <= block.timestamp + (1440 * 24 * 3600)
                stor0++
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg1.length] = arg1[all]
                if not arg1.length % 32:
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length] = arg3[all]
                        if not arg3.length % 32:
                            emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, arg1.length + 224, arg2.length + arg1.length + 256, 200000, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all]
                        else:
                            mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
                            emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, arg1.length + 224, arg2.length + arg1.length + 256, 200000, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + arg3.length + 480 len -(arg3.length % 32) + 32]
                    else:
                        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
                        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length] = arg3[all]
                        if not arg3.length % 32:
                            emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, arg1.length + 224, floor32(arg2.length) + arg1.length + 288, 200000, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 448 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
                        else:
                            mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
                            emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, arg1.length + 224, floor32(arg2.length) + arg1.length + 288, 200000, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 448 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + floor32(arg2.length) + arg3.length + 512 len -(arg3.length % 32) + 32]
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 448 len arg1.length % 32]
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length] = arg3[all]
                        if not arg3.length % 32:
                            emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, floor32(arg1.length) + 256, arg2.length + floor32(arg1.length) + 288, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 416 len -(arg1.length % 32) + 32], arg2.length, arg2[all], arg3.length, arg3[all]
                        else:
                            mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
                            emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, floor32(arg1.length) + 256, arg2.length + floor32(arg1.length) + 288, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 416 len -(arg1.length % 32) + 32], arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + arg3.length + 512 len -(arg3.length % 32) + 32]
                    else:
                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len arg3.length] = arg3[all]
                        if not arg3.length % 32:
                            emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, floor32(arg1.length) + 256, floor32(arg2.length) + floor32(arg1.length) + 320, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 416 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 480 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
                        else:
                            mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                            emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, floor32(arg1.length) + 256, floor32(arg2.length) + floor32(arg1.length) + 320, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 416 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 480 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + arg3.length + 544 len -(arg3.length % 32) + 32]
                return sha3(block.timestamp + stor0)
        if 0 == (200000 * stor10) + stor5[arg1[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor10) + stor5[arg1[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor10) + stor5[arg1[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor10) - stor5[arg1[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor10) - stor5[arg1[all]] wei
                 gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    stor0++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, arg1.length + 224, arg2.length + arg1.length + 256, 200000, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
                emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, arg1.length + 224, arg2.length + arg1.length + 256, 200000, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + arg3.length + 480 len -(arg3.length % 32) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, arg1.length + 224, floor32(arg2.length) + arg1.length + 288, 200000, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 448 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
                emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, arg1.length + 224, floor32(arg2.length) + arg1.length + 288, 200000, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 448 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + floor32(arg2.length) + arg3.length + 512 len -(arg3.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 448 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, floor32(arg1.length) + 256, arg2.length + floor32(arg1.length) + 288, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 416 len -(arg1.length % 32) + 32], arg2.length, arg2[all], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
                emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, floor32(arg1.length) + 256, arg2.length + floor32(arg1.length) + 288, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 416 len -(arg1.length % 32) + 32], arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + arg3.length + 512 len -(arg3.length % 32) + 32]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, floor32(arg1.length) + 256, floor32(arg2.length) + floor32(arg1.length) + 320, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 416 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 480 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                emit 0x4e65aab8: sha3(block.timestamp + stor0), 0, 192, floor32(arg1.length) + 256, floor32(arg2.length) + floor32(arg1.length) + 320, 200000, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 416 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 480 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + arg3.length + 544 len -(arg3.length % 32) + 32]
    return sha3(block.timestamp + stor0)
}



}
