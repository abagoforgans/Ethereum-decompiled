contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
uint256 stor5;

function _fallback() payable {
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor5 = 2 * 10^10
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[83 len 6307]
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
uint256 stor5;
mapping of uint8 stor6;
mapping of uint256 stor7;
uint256 baseprice;
mapping of uint256 stor9;
mapping of uint256 stor10;
array of uint256 stor11;

function baseprice() payable {
    return baseprice
}

function cbAddress() payable {
    return cbAddress
}

function useCoupon(string arg1) payable {
    stor4 = sha3(arg1[all])
}

function setCustomGasPrice(uint256 arg1) payable {
    stor7[address(msg.sender)] = arg1
}

function setProofType(bytes1 arg1) payable {
    stor6[address(msg.sender)] = uint8(arg1)
}

function _fallback() payable {
    if stor2 == msg.sender:
    require msg.sender == cbAddress
}

function setGasPrice(uint256 arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor5 = arg1
}

function deleteCoupon(string arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor3[arg1[all]] = 0
}

function createCoupon(string arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor3[arg1[all]] = 1
}

function withdrawFunds(address arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    call arg1 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function getPrice(string arg1) payable {
    if 0 == stor0[address(msg.sender)]:
        return 0
    if stor4 != 0:
        if 1 == stor3[stor4]:
            return 0
    if stor7[address(msg.sender)] != 0:
        return ((200000 * stor7[address(msg.sender)]) + stor9[arg1[all]][stor6[address(msg.sender)]])
    return ((200000 * stor5) + stor9[arg1[all]][stor6[address(msg.sender)]])
}

function setBasePrice(uint256 arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    baseprice = arg1
    idx = 0
    while idx < stor11.length:
        mem[0] = stor[code.data[6275 len 32] + idx]
        mem[32] = 9
        stor9[stor[code.data[6275 len 32] + idx]] = arg1 * stor10[stor[code.data[6275 len 32] + idx]]
        idx = idx + 1
        continue 
}

function setBasePrice(uint256 arg1, bytes arg2) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    baseprice = arg1
    idx = 0
    while idx < stor11.length:
        mem[0] = stor[code.data[6275 len 32] + idx]
        mem[32] = 9
        stor9[stor[code.data[6275 len 32] + idx]] = arg1 * stor10[stor[idx + code.data[6275 len 32]]]
        idx = idx + 1
        continue 
}

function getPrice(string arg1, uint256 arg2) payable {
    if arg2 <= 200000:
        if 0 == stor0[address(msg.sender)]:
            return 0
    if stor4 != 0:
        if 1 == stor3[stor4]:
            return 0
    if stor7[address(msg.sender)] != 0:
        return ((stor7[address(msg.sender)] * arg2) + stor9[arg1[all]][stor6[address(msg.sender)]])
    return ((stor5 * arg2) + stor9[arg1[all]][stor6[address(msg.sender)]])
}

function addDSource(string arg1, bytes1 arg2, uint256 arg3) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor11.length++
    if not stor11.length <= stor11.length + 1:
        idx = stor11.length + 1
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    require stor11.length < stor11.length
    stor11[stor11.length] = sha3(arg1[all], uint8(arg2))
    stor10[arg1[all]][uint8(arg2)] = arg3
}

function addDSource(string arg1, uint256 arg2) payable {
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    stor11.length++
    if not stor11.length <= stor11.length + 1:
        idx = stor11.length + 1
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    require stor11.length < stor11.length
    stor11[stor11.length] = sha3(arg1[all], 0)
    stor10[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'stor0', 0))] = arg2
}

function multisetCustomGasPrice(uint256[] arg1, address[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * arg1.length) + (32 * idx) + 172 len 20]
        mem[32] = 7
        stor7[mem[(32 * arg1.length) + (32 * idx) + 172 len 20]] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function multisetProofType(uint256[] arg1, address[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if stor2 != msg.sender:
        require msg.sender == cbAddress
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * arg1.length) + (32 * idx) + 172 len 20]
        mem[32] = 6
        stor6[mem[(32 * arg1.length) + (32 * idx) + 172 len 20]] = mem[(32 * idx) + 159 len 1]
        idx = idx + 1
        continue 
}

function query(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    else:
        if 0 == stor0[address(msg.sender)]:
            require msg.value >= 0
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if 0 == stor4:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
            else:
                if 1 == stor3[stor4]:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    if stor7[address(msg.sender)] != 0:
                        require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
                    else:
                        require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= block.gas_limit
    stor0[address(msg.sender)]++
    emit Log1(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg4, stor6[address(msg.sender)], stor7[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query1(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    else:
        if 0 == stor0[address(msg.sender)]:
            require msg.value >= 0
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if 0 == stor4:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
            else:
                if 1 == stor3[stor4]:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    if stor7[address(msg.sender)] != 0:
                        require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
                    else:
                        require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= block.gas_limit
    stor0[address(msg.sender)]++
    emit Log1(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg4, stor6[address(msg.sender)], stor7[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    else:
        if 0 == stor0[address(msg.sender)]:
            require msg.value >= 0
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if 0 == stor4:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
            else:
                if 1 == stor3[stor4]:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    if stor7[address(msg.sender)] != 0:
                        require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
                    else:
                        require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= block.gas_limit
    stor0[address(msg.sender)]++
    emit Log1(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg4, stor6[address(msg.sender)], stor7[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query1_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if arg4 > 200000:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    else:
        if 0 == stor0[address(msg.sender)]:
            require msg.value >= 0
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if 0 == stor4:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
            else:
                if 1 == stor3[stor4]:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    if stor7[address(msg.sender)] != 0:
                        require msg.value >= (stor7[address(msg.sender)] * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
                    else:
                        require msg.value >= (stor5 * arg4) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= block.gas_limit
    stor0[address(msg.sender)]++
    emit Log1(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 288, arg4, stor6[address(msg.sender)], stor7[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query2(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    if arg5 > 200000:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (stor7[address(msg.sender)] * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (stor5 * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    else:
        if 0 == stor0[address(msg.sender)]:
            require msg.value >= 0
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if 0 == stor4:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
            else:
                if 1 == stor3[stor4]:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    if stor7[address(msg.sender)] != 0:
                        require msg.value >= (stor7[address(msg.sender)] * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
                    else:
                        require msg.value >= (stor5 * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg5 <= block.gas_limit
    stor0[address(msg.sender)]++
    if not arg3.length % 32:
        emit Log2(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, stor6[address(msg.sender)], stor7[address(msg.sender)]);
    else:
        emit Log2(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, stor6[address(msg.sender)], stor7[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query2_withGasLimit(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    if arg5 > 200000:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (stor7[address(msg.sender)] * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (stor5 * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    else:
        if 0 == stor0[address(msg.sender)]:
            require msg.value >= 0
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if 0 == stor4:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (stor7[address(msg.sender)] * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (stor5 * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
            else:
                if 1 == stor3[stor4]:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    if stor7[address(msg.sender)] != 0:
                        require msg.value >= (stor7[address(msg.sender)] * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
                    else:
                        require msg.value >= (stor5 * arg5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                        if msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                            call msg.sender with:
                               value msg.value - (stor5 * arg5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                                 gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg5 <= block.gas_limit
    stor0[address(msg.sender)]++
    if not arg3.length % 32:
        emit Log2(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, stor6[address(msg.sender)], stor7[address(msg.sender)]);
    else:
        emit Log2(msg.sender, sha3(this.address + msg.sender + stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, stor6[address(msg.sender)], stor7[address(msg.sender)]);
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query(string arg1, string arg2) payable {
    if 0 == stor0[address(msg.sender)]:
        require msg.value >= 0
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (200000 * stor7[address(msg.sender)]) + stor9[arg1[all]][stor6[address(msg.sender)]]
                if msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (200000 * stor5) + stor9[arg1[all]][stor6[address(msg.sender)]]
                if msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (200000 * stor7[address(msg.sender)]) + stor9[arg1[all]][stor6[address(msg.sender)]]
                    if msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (200000 * stor5) + stor9[arg1[all]][stor6[address(msg.sender)]]
                    if msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 480 len -(arg2.length % 32) + 32],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 448 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 448 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 512 len -(arg2.length % 32) + 32],
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query1(string arg1, string arg2) payable {
    if 0 == stor0[address(msg.sender)]:
        require msg.value >= 0
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (200000 * stor7[address(msg.sender)]) + stor9[arg1[all]][stor6[address(msg.sender)]]
                if msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (200000 * stor5) + stor9[arg1[all]][stor6[address(msg.sender)]]
                if msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (200000 * stor7[address(msg.sender)]) + stor9[arg1[all]][stor6[address(msg.sender)]]
                    if msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (200000 * stor5) + stor9[arg1[all]][stor6[address(msg.sender)]]
                    if msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 480 len -(arg2.length % 32) + 32],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 448 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg1.length,
                      arg1[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 448 len -(arg1.length % 32) + 32],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 512 len -(arg2.length % 32) + 32],
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query(uint256 arg1, string arg2, string arg3) payable {
    if 0 == stor0[address(msg.sender)]:
        require msg.value >= 0
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (200000 * stor7[address(msg.sender)]) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (200000 * stor5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (200000 * stor5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (200000 * stor5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (200000 * stor7[address(msg.sender)]) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (200000 * stor5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (200000 * stor5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      arg3.length,
                      arg3[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 480 len -(arg3.length % 32) + 32],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 448 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 448 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 512 len -(arg3.length % 32) + 32],
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query1(uint256 arg1, string arg2, string arg3) payable {
    if 0 == stor0[address(msg.sender)]:
        require msg.value >= 0
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (200000 * stor7[address(msg.sender)]) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (200000 * stor5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                if msg.value - (200000 * stor5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (200000 * stor5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (200000 * stor7[address(msg.sender)]) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (200000 * stor5) + stor9[arg2[all]][stor6[address(msg.sender)]]
                    if msg.value - (200000 * stor5) - stor9[arg2[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[arg2[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      arg3.length,
                      arg3[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 480 len -(arg3.length % 32) + 32],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 448 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      stor6[address(msg.sender)],
                      stor7[address(msg.sender)],
                      arg2.length,
                      arg2[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 448 len -(arg2.length % 32) + 32],
                      arg3.length,
                      arg3[all],
                      mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 512 len -(arg3.length % 32) + 32],
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}

function query2(string arg1, string arg2, string arg3) payable {
    if 0 == stor0[address(msg.sender)]:
        require msg.value >= 0
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == stor4:
            if stor7[address(msg.sender)] != 0:
                require msg.value >= (200000 * stor7[address(msg.sender)]) + stor9[arg1[all]][stor6[address(msg.sender)]]
                if msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
            else:
                require msg.value >= (200000 * stor5) + stor9[arg1[all]][stor6[address(msg.sender)]]
                if msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                    call msg.sender with:
                       value msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                         gas 0 wei
        else:
            if 1 == stor3[stor4]:
                require msg.value >= 0
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if stor7[address(msg.sender)] != 0:
                    require msg.value >= (200000 * stor7[address(msg.sender)]) + stor9[arg1[all]][stor6[address(msg.sender)]]
                    if msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
                else:
                    require msg.value >= (200000 * stor5) + stor9[arg1[all]][stor6[address(msg.sender)]]
                    if msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] > 0:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[arg1[all]][stor6[address(msg.sender)]] wei
                             gas 0 wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                          msg.sender,
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          288,
                          arg1.length + 320,
                          arg2.length + arg1.length + 352,
                          200000,
                          stor6[address(msg.sender)],
                          stor7[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          arg2.length,
                          arg2[all],
                          arg3.length,
                          arg3[all],
            else:
                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                          msg.sender,
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          288,
                          arg1.length + 320,
                          arg2.length + arg1.length + 352,
                          200000,
                          stor6[address(msg.sender)],
                          stor7[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          arg2.length,
                          arg2[all],
                          arg3.length,
                          arg3[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + arg3.length + 576 len -(arg3.length % 32) + 32],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                          msg.sender,
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          288,
                          arg1.length + 320,
                          floor32(arg2.length) + arg1.length + 384,
                          200000,
                          stor6[address(msg.sender)],
                          stor7[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          arg2.length,
                          arg2[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 544 len -(arg2.length % 32) + 32],
                          arg3.length,
                          arg3[all],
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                          msg.sender,
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          288,
                          arg1.length + 320,
                          floor32(arg2.length) + arg1.length + 384,
                          200000,
                          stor6[address(msg.sender)],
                          stor7[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          arg2.length,
                          arg2[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 544 len -(arg2.length % 32) + 32],
                          arg3.length,
                          arg3[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + floor32(arg2.length) + arg3.length + 608 len -(arg3.length % 32) + 32],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 544 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                          msg.sender,
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          288,
                          floor32(arg1.length) + 352,
                          arg2.length + floor32(arg1.length) + 384,
                          200000,
                          stor6[address(msg.sender)],
                          stor7[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 512 len -(arg1.length % 32) + 32],
                          arg2.length,
                          arg2[all],
                          arg3.length,
                          arg3[all],
            else:
                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                          msg.sender,
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          288,
                          floor32(arg1.length) + 352,
                          arg2.length + floor32(arg1.length) + 384,
                          200000,
                          stor6[address(msg.sender)],
                          stor7[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 512 len -(arg1.length % 32) + 32],
                          arg2.length,
                          arg2[all],
                          arg3.length,
                          arg3[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + arg3.length + 608 len -(arg3.length % 32) + 32],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                          msg.sender,
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          288,
                          floor32(arg1.length) + 352,
                          floor32(arg2.length) + floor32(arg1.length) + 416,
                          200000,
                          stor6[address(msg.sender)],
                          stor7[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 512 len -(arg1.length % 32) + 32],
                          arg2.length,
                          arg2[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 576 len -(arg2.length % 32) + 32],
                          arg3.length,
                          arg3[all],
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 672 len arg3.length % 32]
                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                          msg.sender,
                          sha3(this.address + msg.sender + stor0[address(msg.sender)]),
                          0,
                          288,
                          floor32(arg1.length) + 352,
                          floor32(arg2.length) + floor32(arg1.length) + 416,
                          200000,
                          stor6[address(msg.sender)],
                          stor7[address(msg.sender)],
                          arg1.length,
                          arg1[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 512 len -(arg1.length % 32) + 32],
                          arg2.length,
                          arg2[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 576 len -(arg2.length % 32) + 32],
                          arg3.length,
                          arg3[all],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + arg3.length + 640 len -(arg3.length % 32) + 32],
    return sha3(this.address + msg.sender + stor0[address(msg.sender)])
}



}
