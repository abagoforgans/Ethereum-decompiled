contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 0
    stor4 = block.timestamp
    stor5 = block.timestamp % stor0
    stor6 = msg.sender or Mask(96, 160, stor6)
    stor3 = 0
    stor2 = 0
    return code.data[66 len 1722]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 lastTimestamp;
uint256 rand_num;
address owner;
uint256 stor6;
array of address stor38971441815954291753963644440956123609054264817261647753096923611481829733349;
array of uint256 stor44851508847536754802816858523428556429728131226063707645725629049383668347877;
array of uint256 stor45756134544703287579563506843808930709831802981264024552283891424445489673189;

function lastTimestamp() payable {
    return lastTimestamp
}

function rand_num() payable {
    return rand_num
}

function owner() payable {
    return address(owner)
}

function collectedFees() payable {
    return stor2.length
}

function payoutIdx() payable {
    return stor1.length
}

function balance() payable {
    return stor3.length
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor6) = arg1 or Mask(96, 160, uint256(stor6))
}

function participants(uint256 arg1) payable {
    require arg1 < stor0
    return address(stor5629[arg1]), uint256(stor[(4 * arg1) + code.data[1690 len 32]]), stor6329[arg1], stor6529[arg1]
}

function collectFees() payable {
    if msg.sender == address(owner):
        if stor2.length != 0:
            call address(owner) with:
               value stor2.length wei
                 gas 0 wei
            stor2.length = 0
}

function enter() payable {
    if msg.value > 5 * 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor2.length += msg.value / 20
        stor3.length = stor3.length + msg.value - (msg.value / 20)
        lastTimestamp = block.timestamp
        rand_num = msg.value + (stor3.length + msg.value - (msg.value / 20) + block.timestamp % stor0 * block.difficulty) % stor0
        s = msg.value + (stor3.length + msg.value - (msg.value / 20) + block.timestamp % stor0 * block.difficulty) % stor0
        idx = 0
        while idx < stor0:
            if stor3.length <= 0:
                stor0++
                if not stor0 <= stor0 + 1:
                    idx = (4 * stor0 + 1) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                    while (4 * stor0) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                        address(stor[idx]) = 0
                        stor1[idx] = 0
                        stor2[idx] = 0
                        stor3[idx] = 0
                        idx = idx + 1
                        continue 
                require stor0 < stor0
                uint256(stor[code.data[1690 len 32] + (4 * stor0)]) = msg.value
                uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
                stor6329[stor0] = 0
                stor6529[stor0] = 0
            require s < stor0
            require s < stor0
            if stor0 - stor6529[s] > 3:
                require s < stor0
                if uint256(stor[code.data[1690 len 32] + (4 * s)]) < stor3.length:
                    call address(stor5629[s]) with:
                       value uint256(stor[code.data[1690 len 32] + (4 * s)]) wei
                         gas 0 wei
                    stor3.length -= uint256(stor[code.data[1690 len 32] + (4 * s)])
                    stor6329[s] += uint256(stor[code.data[1690 len 32] + (4 * s)])
                    mem[0] = 0
                    stor6529[s] = stor0 + 1
                else:
                    call address(stor5629[s]) with:
                       value stor3.length wei
                         gas 0 wei
                    stor6329[s] += stor3.length
                    mem[0] = 0
                    stor6529[s] = stor0 + 1
                    stor3.length = 0
            else:
                mem[0] = 0
                if not stor6529[s]:
                    require s < stor0
                    require s < stor0
                    if uint256(stor[code.data[1690 len 32] + (4 * s)]) < stor3.length:
                        call address(stor5629[s]) with:
                           value uint256(stor[code.data[1690 len 32] + (4 * s)]) wei
                             gas 0 wei
                        stor3.length -= uint256(stor[code.data[1690 len 32] + (4 * s)])
                        stor6329[s] += uint256(stor[code.data[1690 len 32] + (4 * s)])
                        mem[0] = 0
                        stor6529[s] = stor0 + 1
                    else:
                        call address(stor5629[s]) with:
                           value stor3.length wei
                             gas 0 wei
                        stor6329[s] += stor3.length
                        mem[0] = 0
                        stor6529[s] = stor0 + 1
                        stor3.length = 0
            if s + rand_num + 1 <= stor0:
                s = s + rand_num + 1
                idx = idx + 1
                continue 
            s = s + rand_num + 1 % stor0
            idx = idx + 1
            continue 
        stor0++
        if not stor0 <= stor0 + 1:
            idx = (4 * stor0 + 1) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
            while (4 * stor0) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                address(stor[idx]) = 0
                stor1[idx] = 0
                stor2[idx] = 0
                stor3[idx] = 0
                idx = idx + 1
                continue 
        require stor0 < stor0
        uint256(stor[code.data[1690 len 32] + (4 * stor0)]) = msg.value
        uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
        stor6329[stor0] = 0
        stor6529[stor0] = 0
}

function _fallback() payable {
    if msg.value > 5 * 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor2.length += msg.value / 20
        stor3.length = stor3.length + msg.value - (msg.value / 20)
        lastTimestamp = block.timestamp
        rand_num = msg.value + (stor3.length + msg.value - (msg.value / 20) + block.timestamp % stor0 * block.difficulty) % stor0
        s = msg.value + (stor3.length + msg.value - (msg.value / 20) + block.timestamp % stor0 * block.difficulty) % stor0
        idx = 0
        while idx < stor0:
            if stor3.length <= 0:
                stor0++
                if not stor0 <= stor0 + 1:
                    idx = (4 * stor0 + 1) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                    while (4 * stor0) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                        address(stor[idx]) = 0
                        stor1[idx] = 0
                        stor2[idx] = 0
                        stor3[idx] = 0
                        idx = idx + 1
                        continue 
                require stor0 < stor0
                uint256(stor[code.data[1690 len 32] + (4 * stor0)]) = msg.value
                uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
                stor6329[stor0] = 0
                stor6529[stor0] = 0
            require s < stor0
            require s < stor0
            if stor0 - stor6529[s] > 3:
                require s < stor0
                if uint256(stor[code.data[1690 len 32] + (4 * s)]) < stor3.length:
                    call address(stor5629[s]) with:
                       value uint256(stor[code.data[1690 len 32] + (4 * s)]) wei
                         gas 0 wei
                    stor3.length -= uint256(stor[code.data[1690 len 32] + (4 * s)])
                    stor6329[s] += uint256(stor[code.data[1690 len 32] + (4 * s)])
                    mem[0] = 0
                    stor6529[s] = stor0 + 1
                else:
                    call address(stor5629[s]) with:
                       value stor3.length wei
                         gas 0 wei
                    stor6329[s] += stor3.length
                    mem[0] = 0
                    stor6529[s] = stor0 + 1
                    stor3.length = 0
            else:
                mem[0] = 0
                if not stor6529[s]:
                    require s < stor0
                    require s < stor0
                    if uint256(stor[code.data[1690 len 32] + (4 * s)]) < stor3.length:
                        call address(stor5629[s]) with:
                           value uint256(stor[code.data[1690 len 32] + (4 * s)]) wei
                             gas 0 wei
                        stor3.length -= uint256(stor[code.data[1690 len 32] + (4 * s)])
                        stor6329[s] += uint256(stor[code.data[1690 len 32] + (4 * s)])
                        mem[0] = 0
                        stor6529[s] = stor0 + 1
                    else:
                        call address(stor5629[s]) with:
                           value stor3.length wei
                             gas 0 wei
                        stor6329[s] += stor3.length
                        mem[0] = 0
                        stor6529[s] = stor0 + 1
                        stor3.length = 0
            if s + rand_num + 1 <= stor0:
                s = s + rand_num + 1
                idx = idx + 1
                continue 
            s = s + rand_num + 1 % stor0
            idx = idx + 1
            continue 
        stor0++
        if not stor0 <= stor0 + 1:
            idx = (4 * stor0 + 1) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
            while (4 * stor0) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                address(stor[idx]) = 0
                stor1[idx] = 0
                stor2[idx] = 0
                stor3[idx] = 0
                idx = idx + 1
                continue 
        require stor0 < stor0
        uint256(stor[code.data[1690 len 32] + (4 * stor0)]) = msg.value
        uint256(stor5629[stor0]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0]))
        stor6329[stor0] = 0
        stor6529[stor0] = 0
}



}
