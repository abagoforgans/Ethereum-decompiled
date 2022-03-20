contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor0 = 140
    stor1 = 10^15
    stor2 = 10^18
    stor3 = 2
    stor4 = 0
    stor5 = 10^17
    stor8 = 0
    stor9 = 0
    stor6 = msg.sender or Mask(96, 160, stor6)
    return code.data[96 len 1162]
}



// =====================  Runtime code  =====================


#
#  - outstandingBalance()
#
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor6;
array of struct stor7;
uint256 payoutOrder;
uint256 balance;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;

function payoutOrder() payable {
    return payoutOrder
}

function totalParticipants() payable {
    return stor7.length
}

function balance() payable {
    return balance
}

function awaitingParticipants() payable {
    return (stor7.length - payoutOrder)
}

function participants(uint256 arg1) payable {
    require arg1 < stor7.length
    return stor7[arg1].field_0, storA66C[arg1]
}

function setOwner(address arg1) payable {
    if msg.sender == address(stor6):
        uint256(stor6) = arg1 or Mask(96, 160, uint256(stor6))
}

function enter() payable {
    if msg.value < stor1:
        stor4 += msg.value
    else:
        if msg.value <= stor2:
            stor7.length++
            if not stor7.length > stor7.length + 1:
                stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                stor7[stor7.length].field_256 = msg.value * stor0 / 100
                balance += (100 * msg.value) - (stor3 * msg.value) / 100
                stor4 += msg.value * stor3 / 100
                if balance > storA66C[stor8]:
                    require payoutOrder < stor7.length
                    call stor7[stor8].field_0 with:
                       value storA66C[stor8] wei
                         gas 0 wei
                    balance -= storA66C[stor8]
                    payoutOrder++
                    s = var16001
                    while balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        mem[0] = 7
                        s = storA66C[stor8]
                        continue 
            else:
                idx = 2 * stor7.length + 1
                while 2 * stor7.length > idx:
                    stor7[idx].field_0 = 0
                    stor7[idx].field_256 = 0
                    idx = idx + 1
                    continue 
                stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                stor7[stor7.length].field_256 = msg.value * stor0 / 100
                balance += (100 * msg.value) - (stor3 * msg.value) / 100
                stor4 += msg.value * stor3 / 100
                if balance > storA66C[stor8]:
                    require payoutOrder < stor7.length
                    call stor7[stor8].field_0 with:
                       value storA66C[stor8] wei
                         gas 0 wei
                    balance -= storA66C[stor8]
                    payoutOrder++
                    s = var20001
                    while balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        mem[0] = 7
                        s = storA66C[stor8]
                        continue 
        else:
            if msg.value - stor2 < stor1:
                stor7.length++
                if not stor7.length > stor7.length + 1:
                    stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                    stor7[stor7.length].field_256 = stor2 * stor0 / 100
                    balance += (100 * stor2) - (stor3 * stor2) / 100
                    stor4 += stor2 * stor3 / 100
                    if balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        s = var17001
                        while balance > storA66C[stor8]:
                            require payoutOrder < stor7.length
                            call stor7[stor8].field_0 with:
                               value storA66C[stor8] wei
                                 gas 0 wei
                            balance -= storA66C[stor8]
                            payoutOrder++
                            mem[0] = 7
                            s = storA66C[stor8]
                            continue 
                else:
                    idx = 2 * stor7.length + 1
                    while 2 * stor7.length > idx:
                        stor7[idx].field_0 = 0
                        stor7[idx].field_256 = 0
                        idx = idx + 1
                        continue 
                    stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                    stor7[stor7.length].field_256 = stor2 * stor0 / 100
                    balance += (100 * stor2) - (stor3 * stor2) / 100
                    stor4 += stor2 * stor3 / 100
                    if balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        s = var21001
                        while balance > storA66C[stor8]:
                            require payoutOrder < stor7.length
                            call stor7[stor8].field_0 with:
                               value storA66C[stor8] wei
                                 gas 0 wei
                            balance -= storA66C[stor8]
                            payoutOrder++
                            mem[0] = 7
                            s = storA66C[stor8]
                            continue 
            else:
                call msg.sender with:
                   value msg.value - stor2 wei
                     gas 0 wei
                require ext_call.success
                stor7.length++
                if not stor7.length > stor7.length + 1:
                    stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                    stor7[stor7.length].field_256 = stor2 * stor0 / 100
                    balance += (100 * stor2) - (stor3 * stor2) / 100
                    stor4 += stor2 * stor3 / 100
                    if balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        s = var18001
                        while balance > storA66C[stor8]:
                            require payoutOrder < stor7.length
                            call stor7[stor8].field_0 with:
                               value storA66C[stor8] wei
                                 gas 0 wei
                            balance -= storA66C[stor8]
                            payoutOrder++
                            mem[0] = 7
                            s = storA66C[stor8]
                            continue 
                else:
                    idx = 2 * stor7.length + 1
                    while 2 * stor7.length > idx:
                        stor7[idx].field_0 = 0
                        stor7[idx].field_256 = 0
                        idx = idx + 1
                        continue 
                    stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                    stor7[stor7.length].field_256 = stor2 * stor0 / 100
                    balance += (100 * stor2) - (stor3 * stor2) / 100
                    stor4 += stor2 * stor3 / 100
                    if balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        s = var22001
                        while balance > storA66C[stor8]:
                            require payoutOrder < stor7.length
                            call stor7[stor8].field_0 with:
                               value storA66C[stor8] wei
                                 gas 0 wei
                            balance -= storA66C[stor8]
                            payoutOrder++
                            mem[0] = 7
                            s = storA66C[stor8]
                            continue 
        if stor4 >= stor5:
            call address(stor6) with:
               value stor4 wei
                 gas 0 wei
            if ext_call.success:
                stor4 = 0
            else:
                call address(stor6) with:
                   value stor4 wei
                     gas gas_remaining wei
}

function _fallback() payable {
    if msg.value < stor1:
        stor4 += msg.value
    else:
        if msg.value <= stor2:
            stor7.length++
            if not stor7.length > stor7.length + 1:
                stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                stor7[stor7.length].field_256 = msg.value * stor0 / 100
                balance += (100 * msg.value) - (stor3 * msg.value) / 100
                stor4 += msg.value * stor3 / 100
                if balance > storA66C[stor8]:
                    require payoutOrder < stor7.length
                    call stor7[stor8].field_0 with:
                       value storA66C[stor8] wei
                         gas 0 wei
                    balance -= storA66C[stor8]
                    payoutOrder++
                    s = var16001
                    while balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        mem[0] = 7
                        s = storA66C[stor8]
                        continue 
            else:
                idx = 2 * stor7.length + 1
                while 2 * stor7.length > idx:
                    stor7[idx].field_0 = 0
                    stor7[idx].field_256 = 0
                    idx = idx + 1
                    continue 
                stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                stor7[stor7.length].field_256 = msg.value * stor0 / 100
                balance += (100 * msg.value) - (stor3 * msg.value) / 100
                stor4 += msg.value * stor3 / 100
                if balance > storA66C[stor8]:
                    require payoutOrder < stor7.length
                    call stor7[stor8].field_0 with:
                       value storA66C[stor8] wei
                         gas 0 wei
                    balance -= storA66C[stor8]
                    payoutOrder++
                    s = var20001
                    while balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        mem[0] = 7
                        s = storA66C[stor8]
                        continue 
        else:
            if msg.value - stor2 < stor1:
                stor7.length++
                if not stor7.length > stor7.length + 1:
                    stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                    stor7[stor7.length].field_256 = stor2 * stor0 / 100
                    balance += (100 * stor2) - (stor3 * stor2) / 100
                    stor4 += stor2 * stor3 / 100
                    if balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        s = var17001
                        while balance > storA66C[stor8]:
                            require payoutOrder < stor7.length
                            call stor7[stor8].field_0 with:
                               value storA66C[stor8] wei
                                 gas 0 wei
                            balance -= storA66C[stor8]
                            payoutOrder++
                            mem[0] = 7
                            s = storA66C[stor8]
                            continue 
                else:
                    idx = 2 * stor7.length + 1
                    while 2 * stor7.length > idx:
                        stor7[idx].field_0 = 0
                        stor7[idx].field_256 = 0
                        idx = idx + 1
                        continue 
                    stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                    stor7[stor7.length].field_256 = stor2 * stor0 / 100
                    balance += (100 * stor2) - (stor3 * stor2) / 100
                    stor4 += stor2 * stor3 / 100
                    if balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        s = var21001
                        while balance > storA66C[stor8]:
                            require payoutOrder < stor7.length
                            call stor7[stor8].field_0 with:
                               value storA66C[stor8] wei
                                 gas 0 wei
                            balance -= storA66C[stor8]
                            payoutOrder++
                            mem[0] = 7
                            s = storA66C[stor8]
                            continue 
            else:
                call msg.sender with:
                   value msg.value - stor2 wei
                     gas 0 wei
                require ext_call.success
                stor7.length++
                if not stor7.length > stor7.length + 1:
                    stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                    stor7[stor7.length].field_256 = stor2 * stor0 / 100
                    balance += (100 * stor2) - (stor3 * stor2) / 100
                    stor4 += stor2 * stor3 / 100
                    if balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        s = var18001
                        while balance > storA66C[stor8]:
                            require payoutOrder < stor7.length
                            call stor7[stor8].field_0 with:
                               value storA66C[stor8] wei
                                 gas 0 wei
                            balance -= storA66C[stor8]
                            payoutOrder++
                            mem[0] = 7
                            s = storA66C[stor8]
                            continue 
                else:
                    idx = 2 * stor7.length + 1
                    while 2 * stor7.length > idx:
                        stor7[idx].field_0 = 0
                        stor7[idx].field_256 = 0
                        idx = idx + 1
                        continue 
                    stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
                    stor7[stor7.length].field_256 = stor2 * stor0 / 100
                    balance += (100 * stor2) - (stor3 * stor2) / 100
                    stor4 += stor2 * stor3 / 100
                    if balance > storA66C[stor8]:
                        require payoutOrder < stor7.length
                        call stor7[stor8].field_0 with:
                           value storA66C[stor8] wei
                             gas 0 wei
                        balance -= storA66C[stor8]
                        payoutOrder++
                        s = var22001
                        while balance > storA66C[stor8]:
                            require payoutOrder < stor7.length
                            call stor7[stor8].field_0 with:
                               value storA66C[stor8] wei
                                 gas 0 wei
                            balance -= storA66C[stor8]
                            payoutOrder++
                            mem[0] = 7
                            s = storA66C[stor8]
                            continue 
        if stor4 >= stor5:
            call address(stor6) with:
               value stor4 wei
                 gas 0 wei
            if ext_call.success:
                stor4 = 0
            else:
                call address(stor6) with:
                   value stor4 wei
                     gas gas_remaining wei
}



}
