contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
uint256 stor10;

function _fallback() payable {
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor10 = 5 * 10^10
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[138 len 8399]
}



// =====================  Runtime code  =====================


#
#  - query2(uint256 arg1, string arg2, string arg3, string arg4)
#
mapping of uint256 stor0;
address cbAddress;
address stor2;
mapping of uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
array of uint256 stor7;
mapping of uint8 stor8;
uint256 stor9;
uint256 stor10;

function cbAddress() payable {
    return cbAddress
}

function useCoupon(string arg1) payable {
    stor9 = sha3(arg1[all])
}

function setProofType(bytes1 arg1) payable {
    stor3[address(msg.sender)] = uint8(arg1)
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

function deleteCoupon(string arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor8[arg1[all]] = 0
}

function createCoupon(string arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor8[arg1[all]] = 1
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

function setBasePrice(uint256 arg1, bytes arg2) payable {
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

function getPrice(string arg1) payable {
    if stor0[address(msg.sender)]:
        if not stor9:
            return (stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10))
        if stor8[stor9] != 1:
            return (stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10))
        else:
            return 0
    else:
        return 0
}

function addDSource(string arg1, bytes1 arg2, uint256 arg3) payable {
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
    stor7[stor7.length] = sha3(arg1[all], uint8(arg2))
    stor6[arg1[all]][uint8(arg2)] = arg3
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
    stor7[stor7.length] = sha3(arg1[all], 0)
    stor6[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0))] = arg2
}

function getPrice(string arg1, uint256 arg2) payable {
    if arg2 > 200000:
        if not stor9:
            return (stor5[arg1[all]][stor3[address(msg.sender)]] + (arg2 * stor10))
        if stor8[stor9] != 1:
            return (stor5[arg1[all]][stor3[address(msg.sender)]] + (arg2 * stor10))
    else:
        if stor0[address(msg.sender)]:
            if not stor9:
                return (stor5[arg1[all]][stor3[address(msg.sender)]] + (arg2 * stor10))
            if stor8[stor9] != 1:
                return (stor5[arg1[all]][stor3[address(msg.sender)]] + (arg2 * stor10))
    return 0
}

function query(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if not stor9:
            require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    else:
        if not stor0[address(msg.sender)]:
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if not stor9:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                         gas 0 wei
            else:
                if stor8[stor9] != 1:
                    require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                       value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                         gas 0 wei
                    if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                        call msg.sender with:
                           value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                             gas 0 wei
                else:
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0[address(msg.sender)]++
    emit Log1(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor3[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query1(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if not stor9:
            require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    else:
        if not stor0[address(msg.sender)]:
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if not stor9:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                         gas 0 wei
            else:
                if stor8[stor9] != 1:
                    require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                       value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                         gas 0 wei
                    if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                        call msg.sender with:
                           value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                             gas 0 wei
                else:
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0[address(msg.sender)]++
    emit Log1(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor3[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if not stor9:
            require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    else:
        if not stor0[address(msg.sender)]:
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if not stor9:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                         gas 0 wei
            else:
                if stor8[stor9] != 1:
                    require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                       value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                         gas 0 wei
                    if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                        call msg.sender with:
                           value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                             gas 0 wei
                else:
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0[address(msg.sender)]++
    emit Log1(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor3[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query1_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if not stor9:
            require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    else:
        if not stor0[address(msg.sender)]:
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if not stor9:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                         gas 0 wei
            else:
                if stor8[stor9] != 1:
                    require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10)
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                       value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg4 * stor10) wei
                         gas 0 wei
                    if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) > 0:
                        call msg.sender with:
                           value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg4 * stor10) wei
                             gas 0 wei
                else:
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= 3141592
    stor0[address(msg.sender)]++
    emit Log1(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 256, arg4, stor3[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query2(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    if arg5 > 200000:
        if not stor9:
            require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    else:
        if not stor0[address(msg.sender)]:
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if not stor9:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) wei
                         gas 0 wei
            else:
                if stor8[stor9] != 1:
                    require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10)
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                       value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10) wei
                         gas 0 wei
                    if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) > 0:
                        call msg.sender with:
                           value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) wei
                             gas 0 wei
                else:
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg5 <= 3141592
    stor0[address(msg.sender)]++
    if not arg3.length % 32:
        emit Log2(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg3.length + arg2.length + 320, arg5, stor3[address(msg.sender)]);
    else:
        emit Log2(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, floor32(arg3.length) + arg2.length + 352, arg5, stor3[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query2_withGasLimit(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    if arg5 > 200000:
        if not stor9:
            require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    else:
        if not stor0[address(msg.sender)]:
            require msg.value >= 0
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                 gas 0 wei
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if not stor9:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) wei
                         gas 0 wei
            else:
                if stor8[stor9] != 1:
                    require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10)
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                       value stor5[arg2[all]][stor3[address(msg.sender)]] + (arg5 * stor10) wei
                         gas 0 wei
                    if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) > 0:
                        call msg.sender with:
                           value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (arg5 * stor10) wei
                             gas 0 wei
                else:
                    require msg.value >= 0
                    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                         gas 0 wei
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg5 <= 3141592
    stor0[address(msg.sender)]++
    if not arg3.length % 32:
        emit Log2(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg3.length + arg2.length + 320, arg5, stor3[address(msg.sender)]);
    else:
        emit Log2(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, floor32(arg3.length) + arg2.length + 352, arg5, stor3[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query(string arg1, string arg2) payable {
    if not stor0[address(msg.sender)]:
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if not stor9:
            require msg.value >= stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    stor0[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      224,
                      arg1.length + 256,
                      200000,
                      stor3[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      224,
                      arg1.length + 256,
                      200000,
                      stor3[address(msg.sender)],
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
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      224,
                      floor32(arg1.length) + 288,
                      200000,
                      stor3[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      224,
                      floor32(arg1.length) + 288,
                      200000,
                      stor3[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 480 len -(arg2.length % 32) + 32],
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query1(string arg1, string arg2) payable {
    if not stor0[address(msg.sender)]:
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if not stor9:
            require msg.value >= stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    stor0[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      224,
                      arg1.length + 256,
                      200000,
                      stor3[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      224,
                      arg1.length + 256,
                      200000,
                      stor3[address(msg.sender)],
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
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      224,
                      floor32(arg1.length) + 288,
                      200000,
                      stor3[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      224,
                      floor32(arg1.length) + 288,
                      200000,
                      stor3[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 480 len -(arg2.length % 32) + 32],
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query(uint256 arg1, string arg2, string arg3) payable {
    if not stor0[address(msg.sender)]:
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if not stor9:
            require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (200000 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg2[all]][stor3[address(msg.sender)]] + (200000 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (200000 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (200000 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (200000 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (200000 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (200000 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (200000 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      224,
                      arg2.length + 256,
                      200000,
                      stor3[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      224,
                      arg2.length + 256,
                      200000,
                      stor3[address(msg.sender)],
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
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      224,
                      floor32(arg2.length) + 288,
                      200000,
                      stor3[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      224,
                      floor32(arg2.length) + 288,
                      200000,
                      stor3[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 480 len -(arg3.length % 32) + 32],
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query1(uint256 arg1, string arg2, string arg3) payable {
    if not stor0[address(msg.sender)]:
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if not stor9:
            require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (200000 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg2[all]][stor3[address(msg.sender)]] + (200000 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (200000 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (200000 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg2[all]][stor3[address(msg.sender)]] + (200000 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg2[all]][stor3[address(msg.sender)]] + (200000 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (200000 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg2[all]][stor3[address(msg.sender)]] - (200000 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      224,
                      arg2.length + 256,
                      200000,
                      stor3[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      224,
                      arg2.length + 256,
                      200000,
                      stor3[address(msg.sender)],
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
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      224,
                      floor32(arg2.length) + 288,
                      200000,
                      stor3[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      224,
                      floor32(arg2.length) + 288,
                      200000,
                      stor3[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 416 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 480 len -(arg3.length % 32) + 32],
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query2(string arg1, string arg2, string arg3) payable {
    if not stor0[address(msg.sender)]:
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if not stor9:
            require msg.value >= stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10)
            call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
               value stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10) wei
                 gas 0 wei
            if msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) > 0:
                call msg.sender with:
                   value msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) wei
                     gas 0 wei
        else:
            if stor8[stor9] != 1:
                require msg.value >= stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10)
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                   value stor5[arg1[all]][stor3[address(msg.sender)]] + (200000 * stor10) wei
                     gas 0 wei
                if msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) > 0:
                    call msg.sender with:
                       value msg.value - stor5[arg1[all]][stor3[address(msg.sender)]] - (200000 * stor10) wei
                         gas 0 wei
            else:
                require msg.value >= 0
                call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
                     gas 0 wei
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    stor0[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8):
                          msg.sender,
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          256,
                          arg1.length + 288,
                          arg2.length + arg1.length + 320,
                          200000,
                          stor3[address(msg.sender)],
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
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          256,
                          arg1.length + 288,
                          arg2.length + arg1.length + 320,
                          200000,
                          stor3[address(msg.sender)],
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
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          256,
                          arg1.length + 288,
                          floor32(arg2.length) + arg1.length + 352,
                          200000,
                          stor3[address(msg.sender)],
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
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          256,
                          arg1.length + 288,
                          floor32(arg2.length) + arg1.length + 352,
                          200000,
                          stor3[address(msg.sender)],
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
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          arg2.length + floor32(arg1.length) + 352,
                          200000,
                          stor3[address(msg.sender)],
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
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          arg2.length + floor32(arg1.length) + 352,
                          200000,
                          stor3[address(msg.sender)],
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
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          floor32(arg2.length) + floor32(arg1.length) + 384,
                          200000,
                          stor3[address(msg.sender)],
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
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          floor32(arg2.length) + floor32(arg1.length) + 384,
                          200000,
                          stor3[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 480 len -(arg1.length % 32) + 32],
                          arg2.length,
                          arg2[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 544 len -(arg2.length % 32) + 32],
                          arg3.length,
                          arg3[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + arg3.length + 608 len -(arg3.length % 32) + 32],
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}



}
