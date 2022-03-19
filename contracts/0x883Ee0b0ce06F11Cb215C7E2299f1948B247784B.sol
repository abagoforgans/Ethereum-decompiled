contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[46 len 1288]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 number;
uint256 fees;
uint256 balance;
address owner;
uint256 stor4;
array of address stor38971441815954291753963644440956123609054264817261647753096923611481829733349;

function number() payable {
    return number
}

function owner() payable {
    return address(owner)
}

function fees() payable {
    return fees
}

function balance() payable {
    return balance
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function investors(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor5629[arg1]), stor[code.data[1256 len 32] + (2 * arg1)]
}

function enter() payable {
    if msg.value < 4 * 10^16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
            stor[code.data[1256 len 32] + (2 * stor0.length)] = msg.value
            fees += msg.value / 25
            balance = balance + msg.value - (msg.value / 25)
            if (msg.value / 25) + fees != 0:
                call address(owner) with:
                   value fees wei
                     gas 0 wei
                fees = 0
                if balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                    require number < stor0.length
                    if number % 20 != 0:
                        call address(stor5629[stor1]) with:
                           value var31003 wei
                             gas 0 wei
                        if not var25001:
                            balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        else:
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        number++
                        s = var33004
                        while balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                            require number < stor0.length
                            if number % 20 != 0:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            require number < stor0.length
                            if balance <= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            call address(stor5629[stor1]) with:
                               value 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                 gas 0 wei
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            number++
                            mem[0] = 0
                            s = 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            continue 
                    else:
                        require number < stor0.length
                        call address(stor5629[stor1]) with:
                           value var35003 wei
                             gas 0 wei
                        if not var29001:
                            balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        else:
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        number++
                        s = var37004
                        while balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                            require number < stor0.length
                            if number % 20 != 0:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            require number < stor0.length
                            if balance <= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            call address(stor5629[stor1]) with:
                               value 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                 gas 0 wei
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            number++
                            mem[0] = 0
                            s = 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            continue 
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
            stor[code.data[1256 len 32] + (2 * stor0.length)] = msg.value
            fees += msg.value / 25
            balance = balance + msg.value - (msg.value / 25)
            if (msg.value / 25) + fees != 0:
                call address(owner) with:
                   value fees wei
                     gas 0 wei
                fees = 0
                if balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                    require number < stor0.length
                    if number % 20 != 0:
                        call address(stor5629[stor1]) with:
                           value var35003 wei
                             gas 0 wei
                        if not var29001:
                            balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        else:
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        number++
                        s = var37004
                        while balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                            require number < stor0.length
                            if number % 20 != 0:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            require number < stor0.length
                            if balance <= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            call address(stor5629[stor1]) with:
                               value 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                 gas 0 wei
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            number++
                            mem[0] = 0
                            s = 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            continue 
                    else:
                        require number < stor0.length
                        call address(stor5629[stor1]) with:
                           value var39003 wei
                             gas 0 wei
                        if not var33001:
                            balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        else:
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        number++
                        s = var41004
                        while balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                            require number < stor0.length
                            if number % 20 != 0:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            require number < stor0.length
                            if balance <= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            call address(stor5629[stor1]) with:
                               value 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                 gas 0 wei
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            number++
                            mem[0] = 0
                            s = 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            continue 
}

function _fallback() payable {
    if msg.value < 4 * 10^16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
            stor[code.data[1256 len 32] + (2 * stor0.length)] = msg.value
            fees += msg.value / 25
            balance = balance + msg.value - (msg.value / 25)
            if (msg.value / 25) + fees != 0:
                call address(owner) with:
                   value fees wei
                     gas 0 wei
                fees = 0
                if balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                    require number < stor0.length
                    if number % 20 != 0:
                        call address(stor5629[stor1]) with:
                           value var31003 wei
                             gas 0 wei
                        if not var25001:
                            balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        else:
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        number++
                        s = var33004
                        while balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                            require number < stor0.length
                            if number % 20 != 0:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            require number < stor0.length
                            if balance <= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            call address(stor5629[stor1]) with:
                               value 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                 gas 0 wei
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            number++
                            mem[0] = 0
                            s = 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            continue 
                    else:
                        require number < stor0.length
                        call address(stor5629[stor1]) with:
                           value var35003 wei
                             gas 0 wei
                        if not var29001:
                            balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        else:
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        number++
                        s = var37004
                        while balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                            require number < stor0.length
                            if number % 20 != 0:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            require number < stor0.length
                            if balance <= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            call address(stor5629[stor1]) with:
                               value 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                 gas 0 wei
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            number++
                            mem[0] = 0
                            s = 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            continue 
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
            stor[code.data[1256 len 32] + (2 * stor0.length)] = msg.value
            fees += msg.value / 25
            balance = balance + msg.value - (msg.value / 25)
            if (msg.value / 25) + fees != 0:
                call address(owner) with:
                   value fees wei
                     gas 0 wei
                fees = 0
                if balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                    require number < stor0.length
                    if number % 20 != 0:
                        call address(stor5629[stor1]) with:
                           value var35003 wei
                             gas 0 wei
                        if not var29001:
                            balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        else:
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        number++
                        s = var37004
                        while balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                            require number < stor0.length
                            if number % 20 != 0:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            require number < stor0.length
                            if balance <= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            call address(stor5629[stor1]) with:
                               value 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                 gas 0 wei
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            number++
                            mem[0] = 0
                            s = 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            continue 
                    else:
                        require number < stor0.length
                        call address(stor5629[stor1]) with:
                           value var39003 wei
                             gas 0 wei
                        if not var33001:
                            balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        else:
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                        number++
                        s = var41004
                        while balance > 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                            require number < stor0.length
                            if number % 20 != 0:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            require number < stor0.length
                            if balance <= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100:
                                call address(stor5629[stor1]) with:
                                   value 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                     gas 0 wei
                                balance -= 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                number++
                                mem[0] = 0
                                s = 104 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                                continue 
                            call address(stor5629[stor1]) with:
                               value 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100 wei
                                 gas 0 wei
                            balance -= 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            number++
                            mem[0] = 0
                            s = 120 * stor[code.data[1256 len 32] + (2 * stor1)] / 100
                            continue 
}



}
