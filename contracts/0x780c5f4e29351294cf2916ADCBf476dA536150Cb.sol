contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[46 len 1155]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 stor1;
uint256 collectedFees;
uint256 balance;
address owner;
uint256 stor4;
array of address stor38971441815954291753963644440956123609054264817261647753096923611481829733349;

function owner() payable {
    return address(owner)
}

function collectedFees() payable {
    return collectedFees
}

function payoutIdx() payable {
    return stor1.length
}

function balance() payable {
    return balance
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function participants(uint256 arg1) payable {
    require arg1 < stor0
    return address(stor5629[arg1]), uint256(stor[(2 * arg1) + code.data[1123 len 32]])
}

function collectFees() payable {
    if msg.sender == address(owner):
        if collectedFees != 0:
            call address(owner) with:
               value collectedFees wei
                 gas 0 wei
            collectedFees = 0
}

function enter() payable {
    if msg.value < 5 * 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 21 * 10^18:
        stor0++
        if not stor0 > stor0 + 1:
            require stor0 < stor0
            uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
            uint256(stor[code.data[1123 len 32] + (2 * stor0)]) = msg.value
            if not stor0:
                collectedFees += msg.value
            else:
                collectedFees += msg.value / 50
                balance += msg.value
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var25003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var37003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var49003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            # nil
        else:
            idx = (2 * stor0 + 1) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
            while (2 * stor0) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                address(stor[idx]) = 0
                stor1[idx] = 0
                idx = idx + 1
                continue 
            require stor0 < stor0
            uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
            uint256(stor[code.data[1123 len 32] + (2 * stor0)]) = msg.value
            if not stor0:
                collectedFees += msg.value
            else:
                collectedFees += msg.value / 50
                balance += msg.value
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var29003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var41003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var53003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            # nil
    else:
        call msg.sender with:
           value msg.value - 21 * 10^18 wei
             gas 0 wei
        stor0++
        if not stor0 > stor0 + 1:
            require stor0 < stor0
            uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
            uint256(stor[code.data[1123 len 32] + (2 * stor0)]) = 21 * 10^18
            if not stor0:
                collectedFees += 21 * 10^18
            else:
                collectedFees += 42 * 10^16
                balance += 21 * 10^18
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var25003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var37003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var49003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            # nil
        else:
            idx = (2 * stor0 + 1) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
            while (2 * stor0) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                address(stor[idx]) = 0
                stor1[idx] = 0
                idx = idx + 1
                continue 
            require stor0 < stor0
            uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
            uint256(stor[code.data[1123 len 32] + (2 * stor0)]) = 21 * 10^18
            if not stor0:
                collectedFees += 21 * 10^18
            else:
                collectedFees += 42 * 10^16
                balance += 21 * 10^18
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var29003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var41003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var53003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            # nil
}

function _fallback() payable {
    if msg.value < 5 * 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 21 * 10^18:
        stor0++
        if not stor0 > stor0 + 1:
            require stor0 < stor0
            uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
            uint256(stor[code.data[1123 len 32] + (2 * stor0)]) = msg.value
            if not stor0:
                collectedFees += msg.value
            else:
                collectedFees += msg.value / 50
                balance += msg.value
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var25003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var37003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var49003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            # nil
        else:
            idx = (2 * stor0 + 1) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
            while (2 * stor0) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                address(stor[idx]) = 0
                stor1[idx] = 0
                idx = idx + 1
                continue 
            require stor0 < stor0
            uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
            uint256(stor[code.data[1123 len 32] + (2 * stor0)]) = msg.value
            if not stor0:
                collectedFees += msg.value
            else:
                collectedFees += msg.value / 50
                balance += msg.value
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var29003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var41003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var53003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            # nil
    else:
        call msg.sender with:
           value msg.value - 21 * 10^18 wei
             gas 0 wei
        stor0++
        if not stor0 > stor0 + 1:
            require stor0 < stor0
            uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
            uint256(stor[code.data[1123 len 32] + (2 * stor0)]) = 21 * 10^18
            if not stor0:
                collectedFees += 21 * 10^18
            else:
                collectedFees += 42 * 10^16
                balance += 21 * 10^18
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var25003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var37003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var49003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            # nil
        else:
            idx = (2 * stor0 + 1) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
            while (2 * stor0) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                address(stor[idx]) = 0
                stor1[idx] = 0
                idx = idx + 1
                continue 
            require stor0 < stor0
            uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
            uint256(stor[code.data[1123 len 32] + (2 * stor0)]) = 21 * 10^18
            if not stor0:
                collectedFees += 21 * 10^18
            else:
                collectedFees += 42 * 10^16
                balance += 21 * 10^18
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var29003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var41003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            if balance <= 155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100:
            require stor1.length < stor0
            call address(stor5629[stor1.length]) with:
               value var53003 wei
                 gas 0 wei
            balance += -155 * uint256(stor[code.data[1123 len 32] + (2 * stor1.length)]) / 100
            stor1.length++
            # nil
}



}
