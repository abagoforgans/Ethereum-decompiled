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
    return code.data[75 len 1724]
}



// =====================  Runtime code  =====================


const WatchFees = 0


uint256 stor0;
uint256 stor1;
uint256 watchLastPayout;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor8;
array of struct stor9;
array of uint256 stor39093404819829864468292343131590815320662225775372752596829896823087410673095;

function WatchLastPayout() payable {
    return watchLastPayout
}

function Total_of_Players() payable {
    return stor9.length
}

function recycle() payable {
    if address(stor8) != msg.sender:
    if stor0 > 0:
        require 0 < stor9.length
        call address(stor[code.data[1692 len 32]]) with:
           value stor0 wei
             gas 0 wei
    selfdestruct(address(stor8))
}

function WatchBalance() payable {
    return (stor0 / 10^16)
}

function WatchWinningPot() payable {
    return (stor3 / 10^15)
}

function PayoutQueueSize() payable {
    return (stor9.length - stor1)
}

function NextPayout() payable {
    require stor1 < stor9.length
    return (stor566E[stor1] / 10^15)
}

function ChangeOwnership(address arg1) payable {
    if msg.sender == address(stor8):
        uint256(stor8) = arg1 or Mask(96, 160, uint256(stor8))
}

function PlayerInfo(uint256 arg1) payable {
    if arg1 > stor9.length:
        return 0
    require arg1 < stor9.length
    return address(stor[code.data[1692 len 32] + (2 * arg1)]), stor566E[arg1] / 10^15
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

function sub_8316ee0f(?) payable {
    if msg.sender == address(stor8):
        if 0 == stor5:
            stor6--
        call address(stor8) with:
           value arg1 * stor5 / 1000 wei
             gas 0 wei
        stor5 += -1 * arg1 * stor5 / 1000
}

function _fallback() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 2 * 10^16:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = 2 * stor9.length + 1
            while 2 * stor9.length > idx:
                address(stor9[idx].field_0) = 0
                uint256(stor9[idx].field_256) = 0
                idx = idx + 1
                continue 
        uint256(stor9[stor9.length].field_0) = msg.sender or Mask(96, 160, uint256(stor9[stor9.length].field_0))
        if stor0 >= 10^15:
            if stor9.length % 10 != 0:
                uint256(stor9[stor9.length].field_256) = msg.value * stor4 / 1000
                stor3 += msg.value * stor7 / 1000
                stor5 += msg.value * stor6 / 1000
                stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                if msg.value <= 2 * 10^15:
                    if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                    require stor1 < stor9.length
                    # nil
                else:
                    require stor1 < stor9.length
                    if msg.value <= stor566E[stor1]:
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
            else:
                if stor9.length <= 1:
                    uint256(stor9[stor9.length].field_256) = msg.value * stor4 / 1000
                    stor3 += msg.value * stor7 / 1000
                    stor5 += msg.value * stor6 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    if msg.value <= 2 * 10^15:
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                    else:
                        require stor1 < stor9.length
                        if msg.value <= stor566E[stor1]:
                            if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                            require stor1 < stor9.length
                            # nil
                else:
                    uint256(stor9[stor9.length].field_256) = (100 * msg.value) + (stor4 * msg.value) / 1000
                    stor3 += msg.value * stor7 / 1000
                    stor5 += msg.value * stor6 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    if msg.value <= 2 * 10^15:
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                    else:
                        require stor1 < stor9.length
                        if msg.value <= stor566E[stor1]:
                            if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                            require stor1 < stor9.length
                            # nil
        else:
            if stor9.length % 10 != 0:
                uint256(stor9[stor9.length].field_256) = (100 * msg.value) + (stor4 * msg.value) / 1000
                stor3 += msg.value * stor7 / 1000
                stor5 += msg.value * stor6 / 1000
                stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                if msg.value <= 2 * 10^15:
                    if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                    require stor1 < stor9.length
                    # nil
                else:
                    require stor1 < stor9.length
                    if msg.value <= stor566E[stor1]:
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
            else:
                if stor9.length <= 1:
                    uint256(stor9[stor9.length].field_256) = (100 * msg.value) + (stor4 * msg.value) / 1000
                    stor3 += msg.value * stor7 / 1000
                    stor5 += msg.value * stor6 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    if msg.value <= 2 * 10^15:
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                    else:
                        require stor1 < stor9.length
                        if msg.value <= stor566E[stor1]:
                            if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                            require stor1 < stor9.length
                            # nil
                else:
                    uint256(stor9[stor9.length].field_256) = (200 * msg.value) + (stor4 * msg.value) / 1000
                    stor3 += msg.value * stor7 / 1000
                    stor5 += msg.value * stor6 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    if msg.value <= 2 * 10^15:
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                    else:
                        require stor1 < stor9.length
                        if msg.value <= stor566E[stor1]:
                            if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                            require stor1 < stor9.length
                            # nil
                        else:
                            if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                                call msg.sender with:
                                   value stor3 wei
                                     gas 0 wei
                                stor3 = 0
                            if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                            require stor1 < stor9.length
                            # nil
    else:
        call msg.sender with:
           value msg.value - 2 * 10^16 wei
             gas 0 wei
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = 2 * stor9.length + 1
            while 2 * stor9.length > idx:
                address(stor9[idx].field_0) = 0
                uint256(stor9[idx].field_256) = 0
                idx = idx + 1
                continue 
        uint256(stor9[stor9.length].field_0) = msg.sender or Mask(96, 160, uint256(stor9[stor9.length].field_0))
        if stor0 >= 10^15:
            if stor9.length % 10 != 0:
                uint256(stor9[stor9.length].field_256) = msg.value * stor4 / 1000
                stor3 += msg.value * stor7 / 1000
                stor5 += msg.value * stor6 / 1000
                stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                require stor1 < stor9.length
                if 2 * 10^16 <= stor566E[stor1]:
                    if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                    require stor1 < stor9.length
                    # nil
                else:
                    if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                        call msg.sender with:
                           value stor3 wei
                             gas 0 wei
                        stor3 = 0
                    if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                    require stor1 < stor9.length
                    # nil
            else:
                if stor9.length <= 1:
                    uint256(stor9[stor9.length].field_256) = msg.value * stor4 / 1000
                    stor3 += msg.value * stor7 / 1000
                    stor5 += msg.value * stor6 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    require stor1 < stor9.length
                    if 2 * 10^16 <= stor566E[stor1]:
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                else:
                    uint256(stor9[stor9.length].field_256) = (100 * msg.value) + (stor4 * msg.value) / 1000
                    stor3 += msg.value * stor7 / 1000
                    stor5 += msg.value * stor6 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    require stor1 < stor9.length
                    if 2 * 10^16 <= stor566E[stor1]:
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
        else:
            if stor9.length % 10 != 0:
                uint256(stor9[stor9.length].field_256) = (100 * msg.value) + (stor4 * msg.value) / 1000
                stor3 += msg.value * stor7 / 1000
                stor5 += msg.value * stor6 / 1000
                stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                require stor1 < stor9.length
                if 2 * 10^16 <= stor566E[stor1]:
                    if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                    require stor1 < stor9.length
                    # nil
                else:
                    if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                        call msg.sender with:
                           value stor3 wei
                             gas 0 wei
                        stor3 = 0
                    if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                    require stor1 < stor9.length
                    # nil
            else:
                if stor9.length <= 1:
                    uint256(stor9[stor9.length].field_256) = (100 * msg.value) + (stor4 * msg.value) / 1000
                    stor3 += msg.value * stor7 / 1000
                    stor5 += msg.value * stor6 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    require stor1 < stor9.length
                    if 2 * 10^16 <= stor566E[stor1]:
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                else:
                    uint256(stor9[stor9.length].field_256) = (200 * msg.value) + (stor4 * msg.value) / 1000
                    stor3 += msg.value * stor7 / 1000
                    stor5 += msg.value * stor6 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor6 * msg.value) / 1000
                    require stor1 < stor9.length
                    if 2 * 10^16 <= stor566E[stor1]:
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
                    else:
                        if 0 == (block.hash((block.timestamp * block.number / block.timestamp % 5) + (block.timestamp % 300) + (block.number / 3) + watchLastPayout) / 100 * block.timestamp / 100 % 100) + 1 % 20:
                            call msg.sender with:
                               value stor3 wei
                                 gas 0 wei
                            stor3 = 0
                        if stor0 <= uint256(stor[code.data[1692 len 32] + (2 * stor1) + 1]):
                        require stor1 < stor9.length
                        # nil
}



}
