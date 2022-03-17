contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor11;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor11 = 5 * 10^10
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[87 len 4998]
}



// =====================  Runtime code  =====================


#
#  - query2(uint256 arg1, string arg2, string arg3, string arg4)
#
uint256 stor0;
address cbAddress;
address stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
uint256 stor10;
uint256 stor11;

function cbAddress() payable {
    return cbAddress
}

function useCoupon(string arg1) payable {
    stor10 = sha3(arg1[all])
}

function setProofType(bytes1 arg1) payable {
    stor4[address(msg.sender)] = uint8(arg1)
}

function _fallback() payable {
    call msg.sender with:
       value msg.value wei
         gas 0 wei
}

function setGasPrice(uint256 arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor11 = arg1
}

function createCoupon(string arg1) payable {
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    require stor9.length < stor9.length
    stor9[stor9.length] = sha3(arg1[all])
}

function getPrice(string arg1) payable {
    if 0 == stor3[address(msg.sender)]:
        return 0
    if stor10 != 0:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            if stor9[idx] != stor10:
                idx = idx + 1
                continue 
            else:
                return 0
    return ((200000 * stor11) + stor6[arg1[all]])
}

function setBasePrice(uint256 arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor5 = arg1
    idx = 0
    while idx < stor8.length:
        mem[0] = stor[code.data[4966 len 32] + idx]
        mem[32] = 6
        stor6[stor[code.data[4966 len 32] + idx]] = arg1 * stor7[stor[code.data[4966 len 32] + idx]]
        idx = idx + 1
        continue 
}

function setBasePrice(uint256 arg1, bytes arg2) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor5 = arg1
    idx = 0
    while idx < stor8.length:
        mem[0] = stor[code.data[4966 len 32] + idx]
        mem[32] = 6
        stor6[stor[code.data[4966 len 32] + idx]] = arg1 * stor7[stor[idx + code.data[4966 len 32]]]
        idx = idx + 1
        continue 
}

function getPrice(string arg1, uint256 arg2) payable {
    if arg2 <= 200000:
        if 0 == stor3[address(msg.sender)]:
            return 0
    if stor10 != 0:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            if stor9[idx] != stor10:
                idx = idx + 1
                continue 
            else:
                return 0
    return ((arg2 * stor11) + stor6[arg1[all]])
}

function addDSource(string arg1, uint256 arg2) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
    require stor8.length < stor8.length
    stor8[stor8.length] = sha3(arg1[all])
    stor7[arg1[all]] = arg2
}

function query(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
                return sha3(block.timestamp + stor0)
        if 0 == (arg4 * stor11) + stor6[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg4 * stor11) + stor6[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg4 * stor11) + stor6[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg4 * stor11) - stor6[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg4 * stor11) - stor6[arg2[all]] wei
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
            if stor10 != 0:
                idx = 0
                while idx < stor9.length:
                    mem[0] = 9
                    if stor9[idx] != stor10:
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
                    emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
                    return sha3(block.timestamp + stor0)
            if 0 == (arg4 * stor11) + stor6[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg4 * stor11) + stor6[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg4 * stor11) + stor6[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg4 * stor11) - stor6[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg4 * stor11) - stor6[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0++
    emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
    return sha3(block.timestamp + stor0)
}

function query1(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
                return sha3(block.timestamp + stor0)
        if 0 == (arg4 * stor11) + stor6[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg4 * stor11) + stor6[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg4 * stor11) + stor6[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg4 * stor11) - stor6[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg4 * stor11) - stor6[arg2[all]] wei
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
            if stor10 != 0:
                idx = 0
                while idx < stor9.length:
                    mem[0] = 9
                    if stor9[idx] != stor10:
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
                    emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
                    return sha3(block.timestamp + stor0)
            if 0 == (arg4 * stor11) + stor6[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg4 * stor11) + stor6[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg4 * stor11) + stor6[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg4 * stor11) - stor6[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg4 * stor11) - stor6[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0++
    emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
    return sha3(block.timestamp + stor0)
}

function query_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
                return sha3(block.timestamp + stor0)
        if 0 == (arg4 * stor11) + stor6[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg4 * stor11) + stor6[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg4 * stor11) + stor6[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg4 * stor11) - stor6[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg4 * stor11) - stor6[arg2[all]] wei
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
            if stor10 != 0:
                idx = 0
                while idx < stor9.length:
                    mem[0] = 9
                    if stor9[idx] != stor10:
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
                    emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
                    return sha3(block.timestamp + stor0)
            if 0 == (arg4 * stor11) + stor6[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg4 * stor11) + stor6[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg4 * stor11) + stor6[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg4 * stor11) - stor6[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg4 * stor11) - stor6[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0++
    emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
    return sha3(block.timestamp + stor0)
}

function query1_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
                return sha3(block.timestamp + stor0)
        if 0 == (arg4 * stor11) + stor6[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg4 * stor11) + stor6[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg4 * stor11) + stor6[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg4 * stor11) - stor6[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg4 * stor11) - stor6[arg2[all]] wei
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
            if stor10 != 0:
                idx = 0
                while idx < stor9.length:
                    mem[0] = 9
                    if stor9[idx] != stor10:
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
                    emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
                    return sha3(block.timestamp + stor0)
            if 0 == (arg4 * stor11) + stor6[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg4 * stor11) + stor6[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg4 * stor11) + stor6[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg4 * stor11) - stor6[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg4 * stor11) - stor6[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0++
    emit Log1(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor4[address(msg.sender)]);
    return sha3(block.timestamp + stor0)
}

function query2(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    if arg5 > 200000:
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                    emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg3.length + arg2.length + 320, arg5, stor4[address(msg.sender)]);
                else:
                    emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, floor32(arg3.length) + arg2.length + 352, arg5, stor4[address(msg.sender)]);
                return sha3(block.timestamp + stor0)
        if 0 == (arg5 * stor11) + stor6[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg5 * stor11) + stor6[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg5 * stor11) + stor6[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg5 * stor11) - stor6[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg5 * stor11) - stor6[arg2[all]] wei
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
            if stor10 != 0:
                idx = 0
                while idx < stor9.length:
                    mem[0] = 9
                    if stor9[idx] != stor10:
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
                        emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg3.length + arg2.length + 320, arg5, stor4[address(msg.sender)]);
                    else:
                        emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, floor32(arg3.length) + arg2.length + 352, arg5, stor4[address(msg.sender)]);
                    return sha3(block.timestamp + stor0)
            if 0 == (arg5 * stor11) + stor6[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg5 * stor11) + stor6[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg5 * stor11) + stor6[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg5 * stor11) - stor6[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg5 * stor11) - stor6[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg5 <= 3141592
    stor0++
    if not arg3.length % 32:
        emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg3.length + arg2.length + 320, arg5, stor4[address(msg.sender)]);
    else:
        emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, floor32(arg3.length) + arg2.length + 352, arg5, stor4[address(msg.sender)]);
    return sha3(block.timestamp + stor0)
}

function query2_withGasLimit(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    if arg5 > 200000:
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                    emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg3.length + arg2.length + 320, arg5, stor4[address(msg.sender)]);
                else:
                    emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, floor32(arg3.length) + arg2.length + 352, arg5, stor4[address(msg.sender)]);
                return sha3(block.timestamp + stor0)
        if 0 == (arg5 * stor11) + stor6[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (arg5 * stor11) + stor6[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (arg5 * stor11) + stor6[arg2[all]] wei
             gas 0 wei
        if msg.value - (arg5 * stor11) - stor6[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (arg5 * stor11) - stor6[arg2[all]] wei
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
            if stor10 != 0:
                idx = 0
                while idx < stor9.length:
                    mem[0] = 9
                    if stor9[idx] != stor10:
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
                        emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg3.length + arg2.length + 320, arg5, stor4[address(msg.sender)]);
                    else:
                        emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, floor32(arg3.length) + arg2.length + 352, arg5, stor4[address(msg.sender)]);
                    return sha3(block.timestamp + stor0)
            if 0 == (arg5 * stor11) + stor6[arg2[all]]:
                stor3[address(msg.sender)] = 1
            require msg.value >= (arg5 * stor11) + stor6[arg2[all]]
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value (arg5 * stor11) + stor6[arg2[all]] wei
                 gas 0 wei
            if msg.value - (arg5 * stor11) - stor6[arg2[all]] > 0:
                call msg.sender with:
                   value msg.value - (arg5 * stor11) - stor6[arg2[all]] wei
                     gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg5 <= 3141592
    stor0++
    if not arg3.length % 32:
        emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg3.length + arg2.length + 320, arg5, stor4[address(msg.sender)]);
    else:
        emit Log2(msg.sender, sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, floor32(arg3.length) + arg2.length + 352, arg5, stor4[address(msg.sender)]);
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
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 416 len arg1.length] = arg1[all]
                if not arg1.length % 32:
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  0,
                                  224,
                                  arg1.length + 256,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg1.length,
                                  arg1[all],
                                  arg2.length,
                                  arg2[all],
                    else:
                        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  0,
                                  224,
                                  arg1.length + 256,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg1.length,
                                  arg1[all],
                                  arg2.length,
                                  arg2[all],
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 448 len -(arg2.length % 32) + 32],
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 448 len arg1.length % 32]
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  0,
                                  224,
                                  floor32(arg1.length) + 288,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg1.length,
                                  arg1[all],
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                                  arg2.length,
                                  arg2[all],
                    else:
                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  0,
                                  224,
                                  floor32(arg1.length) + 288,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg1.length,
                                  arg1[all],
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                                  arg2.length,
                                  arg2[all],
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 480 len -(arg2.length % 32) + 32],
                return sha3(block.timestamp + stor0)
        if 0 == (200000 * stor11) + stor6[arg1[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor11) + stor6[arg1[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor11) + stor6[arg1[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor11) - stor6[arg1[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor11) - stor6[arg1[all]] wei
                 gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    stor0++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      0,
                      224,
                      arg1.length + 256,
                      200000,
                      stor4[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      0,
                      224,
                      arg1.length + 256,
                      200000,
                      stor4[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 448 len -(arg2.length % 32) + 32],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 448 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      0,
                      224,
                      floor32(arg1.length) + 288,
                      200000,
                      stor4[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      0,
                      224,
                      floor32(arg1.length) + 288,
                      200000,
                      stor4[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 480 len -(arg2.length % 32) + 32],
    return sha3(block.timestamp + stor0)
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
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 416 len arg1.length] = arg1[all]
                if not arg1.length % 32:
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  0,
                                  224,
                                  arg1.length + 256,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg1.length,
                                  arg1[all],
                                  arg2.length,
                                  arg2[all],
                    else:
                        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  0,
                                  224,
                                  arg1.length + 256,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg1.length,
                                  arg1[all],
                                  arg2.length,
                                  arg2[all],
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 448 len -(arg2.length % 32) + 32],
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 448 len arg1.length % 32]
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  0,
                                  224,
                                  floor32(arg1.length) + 288,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg1.length,
                                  arg1[all],
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                                  arg2.length,
                                  arg2[all],
                    else:
                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  0,
                                  224,
                                  floor32(arg1.length) + 288,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg1.length,
                                  arg1[all],
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                                  arg2.length,
                                  arg2[all],
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 480 len -(arg2.length % 32) + 32],
                return sha3(block.timestamp + stor0)
        if 0 == (200000 * stor11) + stor6[arg1[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor11) + stor6[arg1[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor11) + stor6[arg1[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor11) - stor6[arg1[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor11) - stor6[arg1[all]] wei
                 gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    stor0++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      0,
                      224,
                      arg1.length + 256,
                      200000,
                      stor4[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      0,
                      224,
                      arg1.length + 256,
                      200000,
                      stor4[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 448 len -(arg2.length % 32) + 32],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 448 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      0,
                      224,
                      floor32(arg1.length) + 288,
                      200000,
                      stor4[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      0,
                      224,
                      floor32(arg1.length) + 288,
                      200000,
                      stor4[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 480 len -(arg2.length % 32) + 32],
    return sha3(block.timestamp + stor0)
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
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg3.length] = arg3[all]
                    if not arg3.length % 32:
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  arg1,
                                  224,
                                  arg2.length + 256,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg2.length,
                                  arg2[all],
                                  arg3.length,
                                  arg3[all],
                    else:
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  arg1,
                                  224,
                                  arg2.length + 256,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg2.length,
                                  arg2[all],
                                  arg3.length,
                                  arg3[all],
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 448 len -(arg3.length % 32) + 32],
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length] = arg3[all]
                    if not arg3.length % 32:
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  arg1,
                                  224,
                                  floor32(arg2.length) + 288,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg2.length,
                                  arg2[all],
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                                  arg3.length,
                                  arg3[all],
                    else:
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  arg1,
                                  224,
                                  floor32(arg2.length) + 288,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg2.length,
                                  arg2[all],
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                                  arg3.length,
                                  arg3[all],
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 480 len -(arg3.length % 32) + 32],
                return sha3(block.timestamp + stor0)
        if 0 == (200000 * stor11) + stor6[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor11) + stor6[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor11) + stor6[arg2[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor11) - stor6[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor11) - stor6[arg2[all]] wei
                 gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    stor0++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      arg1,
                      224,
                      arg2.length + 256,
                      200000,
                      stor4[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      arg1,
                      224,
                      arg2.length + 256,
                      200000,
                      stor4[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      arg3.length,
                      arg3[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 448 len -(arg3.length % 32) + 32],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      arg1,
                      224,
                      floor32(arg2.length) + 288,
                      200000,
                      stor4[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      arg1,
                      224,
                      floor32(arg2.length) + 288,
                      200000,
                      stor4[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 480 len -(arg3.length % 32) + 32],
    return sha3(block.timestamp + stor0)
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
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg3.length] = arg3[all]
                    if not arg3.length % 32:
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  arg1,
                                  224,
                                  arg2.length + 256,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg2.length,
                                  arg2[all],
                                  arg3.length,
                                  arg3[all],
                    else:
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  arg1,
                                  224,
                                  arg2.length + 256,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg2.length,
                                  arg2[all],
                                  arg3.length,
                                  arg3[all],
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 448 len -(arg3.length % 32) + 32],
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length] = arg3[all]
                    if not arg3.length % 32:
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  arg1,
                                  224,
                                  floor32(arg2.length) + 288,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg2.length,
                                  arg2[all],
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                                  arg3.length,
                                  arg3[all],
                    else:
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
                        emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                                  msg.sender,
                                  sha3(block.timestamp + stor0),
                                  arg1,
                                  224,
                                  floor32(arg2.length) + 288,
                                  200000,
                                  stor4[address(msg.sender)],
                                  arg2.length,
                                  arg2[all],
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                                  arg3.length,
                                  arg3[all],
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 480 len -(arg3.length % 32) + 32],
                return sha3(block.timestamp + stor0)
        if 0 == (200000 * stor11) + stor6[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor11) + stor6[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor11) + stor6[arg2[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor11) - stor6[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor11) - stor6[arg2[all]] wei
                 gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    stor0++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      arg1,
                      224,
                      arg2.length + 256,
                      200000,
                      stor4[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      arg1,
                      224,
                      arg2.length + 256,
                      200000,
                      stor4[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      arg3.length,
                      arg3[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 448 len -(arg3.length % 32) + 32],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      arg1,
                      224,
                      floor32(arg2.length) + 288,
                      200000,
                      stor4[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(block.timestamp + stor0),
                      arg1,
                      224,
                      floor32(arg2.length) + 288,
                      200000,
                      stor4[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 480 len -(arg3.length % 32) + 32],
    return sha3(block.timestamp + stor0)
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
        if stor10 != 0:
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if stor9[idx] != stor10:
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
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg1.length] = arg1[all]
                if not arg1.length % 32:
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len arg3.length] = arg3[all]
                        if not arg3.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                                      msg.sender,
                                      sha3(block.timestamp + stor0),
                                      0,
                                      256,
                                      arg1.length + 288,
                                      arg2.length + arg1.length + 320,
                                      200000,
                                      stor4[address(msg.sender)],
                                      arg1.length,
                                      arg1[all],
                                      arg2.length,
                                      arg2[all],
                                      arg3.length,
                                      arg3[all],
                        else:
                            mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                                      msg.sender,
                                      sha3(block.timestamp + stor0),
                                      0,
                                      256,
                                      arg1.length + 288,
                                      arg2.length + arg1.length + 320,
                                      200000,
                                      stor4[address(msg.sender)],
                                      arg1.length,
                                      arg1[all],
                                      arg2.length,
                                      arg2[all],
                                      arg3.length,
                                      arg3[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + arg3.length + 544 len -(arg3.length % 32) + 32],
                    else:
                        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len arg3.length] = arg3[all]
                        if not arg3.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                                      msg.sender,
                                      sha3(block.timestamp + stor0),
                                      0,
                                      256,
                                      arg1.length + 288,
                                      floor32(arg2.length) + arg1.length + 352,
                                      200000,
                                      stor4[address(msg.sender)],
                                      arg1.length,
                                      arg1[all],
                                      arg2.length,
                                      arg2[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 512 len -(arg2.length % 32) + 32],
                                      arg3.length,
                                      arg3[all],
                        else:
                            mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                                      msg.sender,
                                      sha3(block.timestamp + stor0),
                                      0,
                                      256,
                                      arg1.length + 288,
                                      floor32(arg2.length) + arg1.length + 352,
                                      200000,
                                      stor4[address(msg.sender)],
                                      arg1.length,
                                      arg1[all],
                                      arg2.length,
                                      arg2[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 512 len -(arg2.length % 32) + 32],
                                      arg3.length,
                                      arg3[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + floor32(arg2.length) + arg3.length + 576 len -(arg3.length % 32) + 32],
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 512 len arg1.length % 32]
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len arg3.length] = arg3[all]
                        if not arg3.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                                      msg.sender,
                                      sha3(block.timestamp + stor0),
                                      0,
                                      256,
                                      floor32(arg1.length) + 320,
                                      arg2.length + floor32(arg1.length) + 352,
                                      200000,
                                      stor4[address(msg.sender)],
                                      arg1.length,
                                      arg1[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 480 len -(arg1.length % 32) + 32],
                                      arg2.length,
                                      arg2[all],
                                      arg3.length,
                                      arg3[all],
                        else:
                            mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                                      msg.sender,
                                      sha3(block.timestamp + stor0),
                                      0,
                                      256,
                                      floor32(arg1.length) + 320,
                                      arg2.length + floor32(arg1.length) + 352,
                                      200000,
                                      stor4[address(msg.sender)],
                                      arg1.length,
                                      arg1[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 480 len -(arg1.length % 32) + 32],
                                      arg2.length,
                                      arg2[all],
                                      arg3.length,
                                      arg3[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + arg3.length + 576 len -(arg3.length % 32) + 32],
                    else:
                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length] = arg3[all]
                        if not arg3.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                                      msg.sender,
                                      sha3(block.timestamp + stor0),
                                      0,
                                      256,
                                      floor32(arg1.length) + 320,
                                      floor32(arg2.length) + floor32(arg1.length) + 384,
                                      200000,
                                      stor4[address(msg.sender)],
                                      arg1.length,
                                      arg1[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 480 len -(arg1.length % 32) + 32],
                                      arg2.length,
                                      arg2[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 544 len -(arg2.length % 32) + 32],
                                      arg3.length,
                                      arg3[all],
                        else:
                            mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                                      msg.sender,
                                      sha3(block.timestamp + stor0),
                                      0,
                                      256,
                                      floor32(arg1.length) + 320,
                                      floor32(arg2.length) + floor32(arg1.length) + 384,
                                      200000,
                                      stor4[address(msg.sender)],
                                      arg1.length,
                                      arg1[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 480 len -(arg1.length % 32) + 32],
                                      arg2.length,
                                      arg2[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 544 len -(arg2.length % 32) + 32],
                                      arg3.length,
                                      arg3[all],
                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + arg3.length + 608 len -(arg3.length % 32) + 32],
                return sha3(block.timestamp + stor0)
        if 0 == (200000 * stor11) + stor6[arg1[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor11) + stor6[arg1[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor11) + stor6[arg1[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor11) - stor6[arg1[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor11) - stor6[arg1[all]] wei
                 gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    stor0++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                          msg.sender,
                          sha3(block.timestamp + stor0),
                          0,
                          256,
                          arg1.length + 288,
                          arg2.length + arg1.length + 320,
                          200000,
                          stor4[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          arg2.length,
                          arg2[all],
                          arg3.length,
                          arg3[all],
            else:
                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                          msg.sender,
                          sha3(block.timestamp + stor0),
                          0,
                          256,
                          arg1.length + 288,
                          arg2.length + arg1.length + 320,
                          200000,
                          stor4[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          arg2.length,
                          arg2[all],
                          arg3.length,
                          arg3[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + arg3.length + 544 len -(arg3.length % 32) + 32],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                          msg.sender,
                          sha3(block.timestamp + stor0),
                          0,
                          256,
                          arg1.length + 288,
                          floor32(arg2.length) + arg1.length + 352,
                          200000,
                          stor4[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          arg2.length,
                          arg2[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 512 len -(arg2.length % 32) + 32],
                          arg3.length,
                          arg3[all],
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                          msg.sender,
                          sha3(block.timestamp + stor0),
                          0,
                          256,
                          arg1.length + 288,
                          floor32(arg2.length) + arg1.length + 352,
                          200000,
                          stor4[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          arg2.length,
                          arg2[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 512 len -(arg2.length % 32) + 32],
                          arg3.length,
                          arg3[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + floor32(arg2.length) + arg3.length + 576 len -(arg3.length % 32) + 32],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 512 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                          msg.sender,
                          sha3(block.timestamp + stor0),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          arg2.length + floor32(arg1.length) + 352,
                          200000,
                          stor4[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 480 len -(arg1.length % 32) + 32],
                          arg2.length,
                          arg2[all],
                          arg3.length,
                          arg3[all],
            else:
                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                          msg.sender,
                          sha3(block.timestamp + stor0),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          arg2.length + floor32(arg1.length) + 352,
                          200000,
                          stor4[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 480 len -(arg1.length % 32) + 32],
                          arg2.length,
                          arg2[all],
                          arg3.length,
                          arg3[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + arg3.length + 576 len -(arg3.length % 32) + 32],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                          msg.sender,
                          sha3(block.timestamp + stor0),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          floor32(arg2.length) + floor32(arg1.length) + 384,
                          200000,
                          stor4[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 480 len -(arg1.length % 32) + 32],
                          arg2.length,
                          arg2[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 544 len -(arg2.length % 32) + 32],
                          arg3.length,
                          arg3[all],
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                          msg.sender,
                          sha3(block.timestamp + stor0),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          floor32(arg2.length) + floor32(arg1.length) + 384,
                          200000,
                          stor4[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 480 len -(arg1.length % 32) + 32],
                          arg2.length,
                          arg2[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 544 len -(arg2.length % 32) + 32],
                          arg3.length,
                          arg3[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + arg3.length + 608 len -(arg3.length % 32) + 32],
    return sha3(block.timestamp + stor0)
}



}
