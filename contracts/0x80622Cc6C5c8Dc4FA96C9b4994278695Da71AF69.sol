contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 1100
    stor5 = 0
    stor6 = 20
    stor7 = 30
    stor8 = msg.sender or Mask(96, 160, stor8)
    return code.data[75 len 1401]
}



// =====================  Runtime code  =====================


uint256 watchBalance;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor8;
array of struct stor9;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;

function WatchBalance() payable {
    return watchBalance
}

function WatchBalanceInEther() payable {
    return (watchBalance / 10^18)
}

function ChangeOwnership(address arg1) payable {
    if msg.sender == address(stor8):
        uint256(stor8) = arg1 or Mask(96, 160, uint256(stor8))
}

function CollectAllFees() payable {
    if msg.sender == address(stor8):
        require stor5 != 0
        call address(stor8) with:
           value stor5 wei
             gas 0 wei
        stor6--
        stor5 = 0
}

function GetAndReduceFeesByFraction(uint256 arg1) payable {
    if msg.sender == address(stor8):
        if 0 == stor5:
            stor6--
        call address(stor8) with:
           value arg1 * stor5 / 1000 wei
             gas 0 wei
        stor5 += -1 * arg1 * stor5 / 1000
}

function _fallback() payable {
    if msg.value < 5 * 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 20 * 10^18:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = (3 * stor9.length) + 3
            while 3 * stor9.length > idx:
                stor9[idx].field_0 = 0
                stor9[idx].field_256 = 0
                stor9[idx].field_512 = 0
                idx = idx + 1
                continue 
        stor9[stor9.length].field_0 = msg.sender or Mask(96, 160, stor9[stor9.length].field_0)
        if watchBalance >= 10^18:
            if stor9.length % 10 != 0:
                stor9[stor9.length].field_256 = msg.value * stor4 / 1000
                stor9[stor9.length].field_512 = 0
                stor3 += stor7 * msg.value / 1000
                stor5 += stor6 * msg.value / 1000
                watchBalance += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                if msg.value <= 10^18:
                    if watchBalance <= stor6E15[stor1]:
                    require stor1 < stor9.length
                    # nil
                else:
                    require stor1 < stor9.length
                    if msg.value <= stor6E15[stor1]:
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
            else:
                if stor9.length <= 1:
                    stor9[stor9.length].field_256 = msg.value * stor4 / 1000
                    stor9[stor9.length].field_512 = 0
                    stor3 += stor7 * msg.value / 1000
                    stor5 += stor6 * msg.value / 1000
                    watchBalance += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    if msg.value <= 10^18:
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                    else:
                        require stor1 < stor9.length
                        if msg.value <= stor6E15[stor1]:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                else:
                    stor9[stor9.length].field_256 = (100 * msg.value) + (stor4 * msg.value) / 1000
                    stor9[stor9.length].field_512 = 0
                    stor3 += stor7 * msg.value / 1000
                    stor5 += stor6 * msg.value / 1000
                    watchBalance += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    if msg.value <= 10^18:
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                    else:
                        require stor1 < stor9.length
                        if msg.value <= stor6E15[stor1]:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
        else:
            if stor9.length <= 1:
                if stor9.length % 10 != 0:
                    stor9[stor9.length].field_256 = msg.value * stor4 / 1000
                    stor9[stor9.length].field_512 = 0
                    stor3 += stor7 * msg.value / 1000
                    stor5 += stor6 * msg.value / 1000
                    watchBalance += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    if msg.value <= 10^18:
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                    else:
                        require stor1 < stor9.length
                        if msg.value <= stor6E15[stor1]:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                else:
                    if stor9.length <= 1:
                        stor9[stor9.length].field_256 = msg.value * stor4 / 1000
                        stor9[stor9.length].field_512 = 0
                        stor3 += stor7 * msg.value / 1000
                        stor5 += stor6 * msg.value / 1000
                        watchBalance += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                        if msg.value <= 10^18:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            require stor1 < stor9.length
                            if msg.value <= stor6E15[stor1]:
                                if watchBalance <= stor6E15[stor1]:
                                require stor1 < stor9.length
                                # nil
                            else:
                                if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                    call msg.sender with:
                                       value stor3 wei
                                         gas 0 wei
                                    stor3 = 0
                                if watchBalance <= stor6E15[stor1]:
                                require stor1 < stor9.length
                                # nil
                    else:
                        stor9[stor9.length].field_256 = (100 * msg.value) + (stor4 * msg.value) / 1000
                        stor9[stor9.length].field_512 = 0
                        stor3 += stor7 * msg.value / 1000
                        stor5 += stor6 * msg.value / 1000
                        watchBalance += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                        if msg.value <= 10^18:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            require stor1 < stor9.length
                            if msg.value <= stor6E15[stor1]:
                                if watchBalance <= stor6E15[stor1]:
                                require stor1 < stor9.length
                                # nil
                            else:
                                if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                    call msg.sender with:
                                       value stor3 wei
                                         gas 0 wei
                                    stor3 = 0
                                if watchBalance <= stor6E15[stor1]:
                                require stor1 < stor9.length
                                # nil
            else:
                if stor9.length % 10 != 0:
                    stor9[stor9.length].field_256 = (100 * msg.value) + (stor4 * msg.value) / 1000
                    stor9[stor9.length].field_512 = 0
                    stor3 += stor7 * msg.value / 1000
                    stor5 += stor6 * msg.value / 1000
                    watchBalance += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    if msg.value <= 10^18:
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                    else:
                        require stor1 < stor9.length
                        if msg.value <= stor6E15[stor1]:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                else:
                    if stor9.length <= 1:
                        stor9[stor9.length].field_256 = (100 * msg.value) + (stor4 * msg.value) / 1000
                        stor9[stor9.length].field_512 = 0
                        stor3 += stor7 * msg.value / 1000
                        stor5 += stor6 * msg.value / 1000
                        watchBalance += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                        if msg.value <= 10^18:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            require stor1 < stor9.length
                            if msg.value <= stor6E15[stor1]:
                                if watchBalance <= stor6E15[stor1]:
                                require stor1 < stor9.length
                                # nil
                            else:
                                if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                    call msg.sender with:
                                       value stor3 wei
                                         gas 0 wei
                                    stor3 = 0
                                if watchBalance <= stor6E15[stor1]:
                                require stor1 < stor9.length
                                # nil
                    else:
                        stor9[stor9.length].field_256 = (200 * msg.value) + (stor4 * msg.value) / 1000
                        stor9[stor9.length].field_512 = 0
                        stor3 += stor7 * msg.value / 1000
                        stor5 += stor6 * msg.value / 1000
                        watchBalance += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                        if msg.value <= 10^18:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            require stor1 < stor9.length
                            if msg.value <= stor6E15[stor1]:
                                if watchBalance <= stor6E15[stor1]:
                                require stor1 < stor9.length
                                # nil
                            else:
                                if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                    call msg.sender with:
                                       value stor3 wei
                                         gas 0 wei
                                    stor3 = 0
                                if watchBalance <= stor6E15[stor1]:
                                require stor1 < stor9.length
                                # nil
    else:
        call msg.sender with:
           value msg.value - 20 * 10^18 wei
             gas 0 wei
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = (3 * stor9.length) + 3
            while 3 * stor9.length > idx:
                stor9[idx].field_0 = 0
                stor9[idx].field_256 = 0
                stor9[idx].field_512 = 0
                idx = idx + 1
                continue 
        stor9[stor9.length].field_0 = msg.sender or Mask(96, 160, stor9[stor9.length].field_0)
        if watchBalance >= 10^18:
            if stor9.length % 10 != 0:
                stor9[stor9.length].field_256 = 20 * 10^18 * stor4 / 1000
                stor9[stor9.length].field_512 = 0
                stor3 += 20 * 10^18 * stor7 / 1000
                stor5 += 20 * 10^18 * stor6 / 1000
                watchBalance += (-20 * 10^18 * stor7) + (-20 * 10^18 * stor6) + 20000 * 10^18 / 1000
                require stor1 < stor9.length
                if 20 * 10^18 <= stor6E15[stor1]:
                    if watchBalance <= stor6E15[stor1]:
                    require stor1 < stor9.length
                    # nil
                else:
                    if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                        call msg.sender with:
                           value stor3 wei
                             gas 0 wei
                        stor3 = 0
                    if watchBalance <= stor6E15[stor1]:
                    require stor1 < stor9.length
                    # nil
            else:
                if stor9.length <= 1:
                    stor9[stor9.length].field_256 = 20 * 10^18 * stor4 / 1000
                    stor9[stor9.length].field_512 = 0
                    stor3 += 20 * 10^18 * stor7 / 1000
                    stor5 += 20 * 10^18 * stor6 / 1000
                    watchBalance += (-20 * 10^18 * stor7) + (-20 * 10^18 * stor6) + 20000 * 10^18 / 1000
                    require stor1 < stor9.length
                    if 20 * 10^18 <= stor6E15[stor1]:
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                else:
                    stor9[stor9.length].field_256 = (20 * 10^18 * stor4) + 2000 * 10^18 / 1000
                    stor9[stor9.length].field_512 = 0
                    stor3 += 20 * 10^18 * stor7 / 1000
                    stor5 += 20 * 10^18 * stor6 / 1000
                    watchBalance += (-20 * 10^18 * stor7) + (-20 * 10^18 * stor6) + 20000 * 10^18 / 1000
                    require stor1 < stor9.length
                    if 20 * 10^18 <= stor6E15[stor1]:
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
        else:
            if stor9.length <= 1:
                if stor9.length % 10 != 0:
                    stor9[stor9.length].field_256 = 20 * 10^18 * stor4 / 1000
                    stor9[stor9.length].field_512 = 0
                    stor3 += 20 * 10^18 * stor7 / 1000
                    stor5 += 20 * 10^18 * stor6 / 1000
                    watchBalance += (-20 * 10^18 * stor7) + (-20 * 10^18 * stor6) + 20000 * 10^18 / 1000
                    require stor1 < stor9.length
                    if 20 * 10^18 <= stor6E15[stor1]:
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                else:
                    if stor9.length <= 1:
                        stor9[stor9.length].field_256 = 20 * 10^18 * stor4 / 1000
                        stor9[stor9.length].field_512 = 0
                        stor3 += 20 * 10^18 * stor7 / 1000
                        stor5 += 20 * 10^18 * stor6 / 1000
                        watchBalance += (-20 * 10^18 * stor7) + (-20 * 10^18 * stor6) + 20000 * 10^18 / 1000
                        require stor1 < stor9.length
                        if 20 * 10^18 <= stor6E15[stor1]:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                    else:
                        stor9[stor9.length].field_256 = (20 * 10^18 * stor4) + 2000 * 10^18 / 1000
                        stor9[stor9.length].field_512 = 0
                        stor3 += 20 * 10^18 * stor7 / 1000
                        stor5 += 20 * 10^18 * stor6 / 1000
                        watchBalance += (-20 * 10^18 * stor7) + (-20 * 10^18 * stor6) + 20000 * 10^18 / 1000
                        require stor1 < stor9.length
                        if 20 * 10^18 <= stor6E15[stor1]:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
            else:
                if stor9.length % 10 != 0:
                    stor9[stor9.length].field_256 = (20 * 10^18 * stor4) + 2000 * 10^18 / 1000
                    stor9[stor9.length].field_512 = 0
                    stor3 += 20 * 10^18 * stor7 / 1000
                    stor5 += 20 * 10^18 * stor6 / 1000
                    watchBalance += (-20 * 10^18 * stor7) + (-20 * 10^18 * stor6) + 20000 * 10^18 / 1000
                    require stor1 < stor9.length
                    if 20 * 10^18 <= stor6E15[stor1]:
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if watchBalance <= stor6E15[stor1]:
                        require stor1 < stor9.length
                        # nil
                else:
                    if stor9.length <= 1:
                        stor9[stor9.length].field_256 = (20 * 10^18 * stor4) + 2000 * 10^18 / 1000
                        stor9[stor9.length].field_512 = 0
                        stor3 += 20 * 10^18 * stor7 / 1000
                        stor5 += 20 * 10^18 * stor6 / 1000
                        watchBalance += (-20 * 10^18 * stor7) + (-20 * 10^18 * stor6) + 20000 * 10^18 / 1000
                        require stor1 < stor9.length
                        if 20 * 10^18 <= stor6E15[stor1]:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                    else:
                        stor9[stor9.length].field_256 = (20 * 10^18 * stor4) + 4000 * 10^18 / 1000
                        stor9[stor9.length].field_512 = 0
                        stor3 += 20 * 10^18 * stor7 / 1000
                        stor5 += 20 * 10^18 * stor6 / 1000
                        watchBalance += (-20 * 10^18 * stor7) + (-20 * 10^18 * stor6) + 20000 * 10^18 / 1000
                        require stor1 < stor9.length
                        if 20 * 10^18 <= stor6E15[stor1]:
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + stor2) / 100 * block.timestamp / 100 % 100) + 1 % 10:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if watchBalance <= stor6E15[stor1]:
                            require stor1 < stor9.length
                            # nil
}



}
