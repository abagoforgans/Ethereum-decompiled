contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = 1
    stor5 = 200
    stor6 = msg.sender or Mask(96, 160, stor6)
    return code.data[57 len 1822]
}



// =====================  Runtime code  =====================


#
#  - Infos()
#
array of struct stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

function participantDetails(uint256 arg1) payable {
    if arg1 >= stor0.length:
        mem[352] = mem[380 len 4]
        return 0, 0, 0, 128, 4, mem[352]
    if arg1 >= stor1:
        mem[416] = mem[446 len 2]
        return address(stor0[arg1].field_0), 
               stor290D[arg1] / 10^15,
               stor[code.data[1790 len 32] + (3 * arg1)] / 10^15,
               Array(len=2, data=mem[416])
    mem[480] = mem[509 len 3]
    return address(stor0[arg1].field_0), 
           stor290D[arg1] / 10^15,
           stor[code.data[1790 len 32] + (3 * arg1)] / 10^15,
           Array(len=3, data=mem[480])
}

function _fallback() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value > 1000 * 10^18:
            call msg.sender with:
               value msg.value - 1000 * 10^18 wei
                 gas 0 wei
            stor0.length++
            if not stor0.length > stor0.length + 1:
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor0[stor0.length].field_256 = 1000 * 10^18
                stor5 = 300
                stor5 = 200
                stor5 = 180
                stor5 = 150
                stor5 = 125
                stor5 = 110
                stor5 = 105
                require stor0.length < stor0.length
                stor0[stor0.length].field_512 = 1000 * 10^18 * stor5 / 100
                stor2 += 1000 * 10^18 * stor4 / 100
                stor3 = stor3 + -(1000 * 10^18 * stor4 / 100) + 1000 * 10^18
                if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                    require stor1 < stor0.length
                    call address(stor0[stor1].field_0) with:
                       value stor[code.data[1790 len 32] + (3 * stor1)] wei
                         gas 0 wei
                    stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                    stor1++
                    s = var32001
                    while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                        require stor1 < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value stor[code.data[1790 len 32] + (3 * stor1)] wei
                             gas 0 wei
                        stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                        stor1++
                        mem[0] = 0
                        s = stor[code.data[1790 len 32] + (3 * stor1)]
                        continue 
            else:
                idx = (3 * stor0.length) + 3
                while 3 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    stor0[idx].field_256 = 0
                    stor0[idx].field_512 = 0
                    idx = idx + 1
                    continue 
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor0[stor0.length].field_256 = 1000 * 10^18
                stor5 = 300
                stor5 = 200
                stor5 = 180
                stor5 = 150
                stor5 = 125
                stor5 = 110
                stor5 = 105
                require stor0.length < stor0.length
                stor0[stor0.length].field_512 = 1000 * 10^18 * stor5 / 100
                stor2 += 1000 * 10^18 * stor4 / 100
                stor3 = stor3 + -(1000 * 10^18 * stor4 / 100) + 1000 * 10^18
                if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                    require stor1 < stor0.length
                    call address(stor0[stor1].field_0) with:
                       value stor[code.data[1790 len 32] + (3 * stor1)] wei
                         gas 0 wei
                    stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                    stor1++
                    s = var36001
                    while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                        require stor1 < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value stor[code.data[1790 len 32] + (3 * stor1)] wei
                             gas 0 wei
                        stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                        stor1++
                        mem[0] = 0
                        s = stor[code.data[1790 len 32] + (3 * stor1)]
                        continue 
        else:
            stor0.length++
            if not stor0.length > stor0.length + 1:
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor0[stor0.length].field_256 = msg.value
                if msg.value < 10^15:
                    require stor0.length < stor0.length
                    stor0[stor0.length].field_512 = msg.value * stor5 / 100
                    stor2 += msg.value * stor4 / 100
                    stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                    if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                        require stor1 < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value stor[code.data[1790 len 32] + (3 * stor1)] wei
                             gas 0 wei
                        stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                        stor1++
                        s = var25001
                        while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                            require stor1 < stor0.length
                            call address(stor0[stor1].field_0) with:
                               value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                 gas 0 wei
                            stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                            stor1++
                            mem[0] = 0
                            s = stor[code.data[1790 len 32] + (3 * stor1)]
                            continue 
                else:
                    stor5 = 300
                    if msg.value < 10^16:
                        require stor0.length < stor0.length
                        stor0[stor0.length].field_512 = msg.value * stor5 / 100
                        stor2 += msg.value * stor4 / 100
                        stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                        if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                            require stor1 < stor0.length
                            call address(stor0[stor1].field_0) with:
                               value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                 gas 0 wei
                            stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                            stor1++
                            s = var26001
                            while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                require stor1 < stor0.length
                                call address(stor0[stor1].field_0) with:
                                   value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                     gas 0 wei
                                stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                stor1++
                                mem[0] = 0
                                s = stor[code.data[1790 len 32] + (3 * stor1)]
                                continue 
                    else:
                        stor5 = 200
                        if msg.value < 10^17:
                            require stor0.length < stor0.length
                            stor0[stor0.length].field_512 = msg.value * stor5 / 100
                            stor2 += msg.value * stor4 / 100
                            stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                            if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                require stor1 < stor0.length
                                call address(stor0[stor1].field_0) with:
                                   value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                     gas 0 wei
                                stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                stor1++
                                s = var27001
                                while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                    require stor1 < stor0.length
                                    call address(stor0[stor1].field_0) with:
                                       value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                         gas 0 wei
                                    stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                    stor1++
                                    mem[0] = 0
                                    s = stor[code.data[1790 len 32] + (3 * stor1)]
                                    continue 
                        else:
                            stor5 = 180
                            if msg.value < 10^18:
                                require stor0.length < stor0.length
                                stor0[stor0.length].field_512 = msg.value * stor5 / 100
                                stor2 += msg.value * stor4 / 100
                                stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                                if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                    require stor1 < stor0.length
                                    call address(stor0[stor1].field_0) with:
                                       value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                         gas 0 wei
                                    stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                    stor1++
                                    s = var28001
                                    while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                        require stor1 < stor0.length
                                        call address(stor0[stor1].field_0) with:
                                           value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                             gas 0 wei
                                        stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                        stor1++
                                        mem[0] = 0
                                        s = stor[code.data[1790 len 32] + (3 * stor1)]
                                        continue 
                            else:
                                stor5 = 150
                                if msg.value < 10 * 10^18:
                                    require stor0.length < stor0.length
                                    stor0[stor0.length].field_512 = msg.value * stor5 / 100
                                    stor2 += msg.value * stor4 / 100
                                    stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                                    if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                        require stor1 < stor0.length
                                        call address(stor0[stor1].field_0) with:
                                           value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                             gas 0 wei
                                        stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                        stor1++
                                        s = var29001
                                        while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                            require stor1 < stor0.length
                                            call address(stor0[stor1].field_0) with:
                                               value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                 gas 0 wei
                                            stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                            stor1++
                                            mem[0] = 0
                                            s = stor[code.data[1790 len 32] + (3 * stor1)]
                                            continue 
                                else:
                                    stor5 = 125
                                    if msg.value < 100 * 10^18:
                                        require stor0.length < stor0.length
                                        stor0[stor0.length].field_512 = msg.value * stor5 / 100
                                        stor2 += msg.value * stor4 / 100
                                        stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                                        if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                            require stor1 < stor0.length
                                            call address(stor0[stor1].field_0) with:
                                               value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                 gas 0 wei
                                            stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                            stor1++
                                            s = var30001
                                            while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                                require stor1 < stor0.length
                                                call address(stor0[stor1].field_0) with:
                                                   value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                     gas 0 wei
                                                stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                                stor1++
                                                mem[0] = 0
                                                s = stor[code.data[1790 len 32] + (3 * stor1)]
                                                continue 
                                    else:
                                        stor5 = 110
                                        if msg.value < 500 * 10^18:
                                            require stor0.length < stor0.length
                                            stor0[stor0.length].field_512 = msg.value * stor5 / 100
                                            stor2 += msg.value * stor4 / 100
                                            stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                                            if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                                require stor1 < stor0.length
                                                call address(stor0[stor1].field_0) with:
                                                   value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                     gas 0 wei
                                                stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                                stor1++
                                                s = var31001
                                                while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                                    require stor1 < stor0.length
                                                    call address(stor0[stor1].field_0) with:
                                                       value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                         gas 0 wei
                                                    stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                                    stor1++
                                                    mem[0] = 0
                                                    s = stor[code.data[1790 len 32] + (3 * stor1)]
                                                    continue 
                                        else:
                                            stor5 = 105
                                            require stor0.length < stor0.length
                                            stor0[stor0.length].field_512 = msg.value * stor5 / 100
                                            stor2 += msg.value * stor4 / 100
                                            stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                                            if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                                require stor1 < stor0.length
                                                call address(stor0[stor1].field_0) with:
                                                   value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                     gas 0 wei
                                                stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                                stor1++
                                                s = var32001
                                                while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                                    require stor1 < stor0.length
                                                    call address(stor0[stor1].field_0) with:
                                                       value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                         gas 0 wei
                                                    stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                                    stor1++
                                                    mem[0] = 0
                                                    s = stor[code.data[1790 len 32] + (3 * stor1)]
                                                    continue 
            else:
                idx = (3 * stor0.length) + 3
                while 3 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    stor0[idx].field_256 = 0
                    stor0[idx].field_512 = 0
                    idx = idx + 1
                    continue 
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor0[stor0.length].field_256 = msg.value
                if msg.value < 10^15:
                    require stor0.length < stor0.length
                    stor0[stor0.length].field_512 = msg.value * stor5 / 100
                    stor2 += msg.value * stor4 / 100
                    stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                    if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                        require stor1 < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value stor[code.data[1790 len 32] + (3 * stor1)] wei
                             gas 0 wei
                        stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                        stor1++
                        s = var29001
                        while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                            require stor1 < stor0.length
                            call address(stor0[stor1].field_0) with:
                               value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                 gas 0 wei
                            stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                            stor1++
                            mem[0] = 0
                            s = stor[code.data[1790 len 32] + (3 * stor1)]
                            continue 
                else:
                    stor5 = 300
                    if msg.value < 10^16:
                        require stor0.length < stor0.length
                        stor0[stor0.length].field_512 = msg.value * stor5 / 100
                        stor2 += msg.value * stor4 / 100
                        stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                        if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                            require stor1 < stor0.length
                            call address(stor0[stor1].field_0) with:
                               value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                 gas 0 wei
                            stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                            stor1++
                            s = var30001
                            while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                require stor1 < stor0.length
                                call address(stor0[stor1].field_0) with:
                                   value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                     gas 0 wei
                                stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                stor1++
                                mem[0] = 0
                                s = stor[code.data[1790 len 32] + (3 * stor1)]
                                continue 
                    else:
                        stor5 = 200
                        if msg.value < 10^17:
                            require stor0.length < stor0.length
                            stor0[stor0.length].field_512 = msg.value * stor5 / 100
                            stor2 += msg.value * stor4 / 100
                            stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                            if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                require stor1 < stor0.length
                                call address(stor0[stor1].field_0) with:
                                   value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                     gas 0 wei
                                stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                stor1++
                                s = var31001
                                while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                    require stor1 < stor0.length
                                    call address(stor0[stor1].field_0) with:
                                       value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                         gas 0 wei
                                    stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                    stor1++
                                    mem[0] = 0
                                    s = stor[code.data[1790 len 32] + (3 * stor1)]
                                    continue 
                        else:
                            stor5 = 180
                            if msg.value < 10^18:
                                require stor0.length < stor0.length
                                stor0[stor0.length].field_512 = msg.value * stor5 / 100
                                stor2 += msg.value * stor4 / 100
                                stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                                if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                    require stor1 < stor0.length
                                    call address(stor0[stor1].field_0) with:
                                       value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                         gas 0 wei
                                    stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                    stor1++
                                    s = var32001
                                    while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                        require stor1 < stor0.length
                                        call address(stor0[stor1].field_0) with:
                                           value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                             gas 0 wei
                                        stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                        stor1++
                                        mem[0] = 0
                                        s = stor[code.data[1790 len 32] + (3 * stor1)]
                                        continue 
                            else:
                                stor5 = 150
                                if msg.value < 10 * 10^18:
                                    require stor0.length < stor0.length
                                    stor0[stor0.length].field_512 = msg.value * stor5 / 100
                                    stor2 += msg.value * stor4 / 100
                                    stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                                    if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                        require stor1 < stor0.length
                                        call address(stor0[stor1].field_0) with:
                                           value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                             gas 0 wei
                                        stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                        stor1++
                                        s = var33001
                                        while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                            require stor1 < stor0.length
                                            call address(stor0[stor1].field_0) with:
                                               value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                 gas 0 wei
                                            stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                            stor1++
                                            mem[0] = 0
                                            s = stor[code.data[1790 len 32] + (3 * stor1)]
                                            continue 
                                else:
                                    stor5 = 125
                                    if msg.value < 100 * 10^18:
                                        require stor0.length < stor0.length
                                        stor0[stor0.length].field_512 = msg.value * stor5 / 100
                                        stor2 += msg.value * stor4 / 100
                                        stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                                        if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                            require stor1 < stor0.length
                                            call address(stor0[stor1].field_0) with:
                                               value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                 gas 0 wei
                                            stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                            stor1++
                                            s = var34001
                                            while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                                require stor1 < stor0.length
                                                call address(stor0[stor1].field_0) with:
                                                   value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                     gas 0 wei
                                                stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                                stor1++
                                                mem[0] = 0
                                                s = stor[code.data[1790 len 32] + (3 * stor1)]
                                                continue 
                                    else:
                                        stor5 = 110
                                        if msg.value < 500 * 10^18:
                                            require stor0.length < stor0.length
                                            stor0[stor0.length].field_512 = msg.value * stor5 / 100
                                            stor2 += msg.value * stor4 / 100
                                            stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                                            if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                                require stor1 < stor0.length
                                                call address(stor0[stor1].field_0) with:
                                                   value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                     gas 0 wei
                                                stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                                stor1++
                                                s = var35001
                                                while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                                    require stor1 < stor0.length
                                                    call address(stor0[stor1].field_0) with:
                                                       value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                         gas 0 wei
                                                    stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                                    stor1++
                                                    mem[0] = 0
                                                    s = stor[code.data[1790 len 32] + (3 * stor1)]
                                                    continue 
                                        else:
                                            stor5 = 105
                                            require stor0.length < stor0.length
                                            stor0[stor0.length].field_512 = msg.value * stor5 / 100
                                            stor2 += msg.value * stor4 / 100
                                            stor3 = stor3 + msg.value - (msg.value * stor4 / 100)
                                            if stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                                require stor1 < stor0.length
                                                call address(stor0[stor1].field_0) with:
                                                   value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                     gas 0 wei
                                                stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                                stor1++
                                                s = var36001
                                                while stor3 > stor[code.data[1790 len 32] + (3 * stor1)]:
                                                    require stor1 < stor0.length
                                                    call address(stor0[stor1].field_0) with:
                                                       value stor[code.data[1790 len 32] + (3 * stor1)] wei
                                                         gas 0 wei
                                                    stor3 -= stor[code.data[1790 len 32] + (3 * stor1)]
                                                    stor1++
                                                    mem[0] = 0
                                                    s = stor[code.data[1790 len 32] + (3 * stor1)]
                                                    continue 
        if stor2 > 10^18:
            call stor6 with:
               value stor2 wei
                 gas 0 wei
            stor2 = 0
}



}
