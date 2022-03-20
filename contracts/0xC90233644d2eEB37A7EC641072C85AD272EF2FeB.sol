contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor10 = 0
    stor11 = 0
    stor8 = msg.sender or Mask(96, 160, stor8)
    return code.data[81 len 3602]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor2;
uint256 stor3;
uint256 contributorsIndex;
uint256 totalContributorsContribution;
uint256 totalContributorsProfit;
uint256 stor7;
address betaAddress;
address nextInputProfitAddress;
uint256 stor9;
uint256 stor10;
uint256 stor11;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702951;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702952;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702953;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702954;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702955;
array of address stor38971441815954291753963644440956123609054264817261647753096923611481829733349;
array of uint256 stor44851508847536754802816858523428556429728131226063707645725629049383668347877;

function totalContributorsProfit() payable {
    return totalContributorsProfit
}

function totalContributorsContribution() payable {
    return totalContributorsContribution
}

function contributorsIndex() payable {
    return contributorsIndex
}

function beta() payable {
    return betaAddress
}

function nextInputProfit() payable {
    return address(nextInputProfitAddress)
}

function cashAllOut() payable {
    # nil
}

function cashOutProfit() payable {
    # nil
}

function giveAllBack() payable {
    if betaAddress != msg.sender:
    # nil
}

function giveContributionsBackProfitBugged() payable {
    if betaAddress != msg.sender:
    # nil
}

function Fokitol() payable {
    if msg.sender == betaAddress:
        call betaAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function insertProfitHere() payable {
    stor7 = totalContributorsProfit + totalContributorsContribution
    stor10 = stor0
    s = 0
    s = stor11
    while stor10 >= 0:
        require stor10 < stor0
        mem[0] = 0
        stor2 = stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10]
        stor3 = stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7
        if s - (stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11) <= 0:
            stor10 = 0
        else:
            require stor10 < stor0
            mem[0] = 0
            stor[code.data[3570 len 32] + (10 * stor10)] += stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11
            totalContributorsProfit += stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11
            stor290D[stor10] = stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11
        stor10--
        s = stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11
        s = s - (stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11)
        continue 
}

function contributors(uint256 arg1) payable {
    require arg1 < stor0
    mem[448] = stor[sha3((10 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56c)]
    idx = 448
    s = 0
    while stor[(10 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56c].length + 448 > idx + 32:
        mem[idx + 32] = stor[s + sha3((10 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56c) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return stor5629[arg1], 
           stor290D[arg1],
           stor6329[arg1],
           stor[(10 * arg1) + code.data[3570 len 32]],
           stor290D[arg1],
           stor290D[arg1],
           stor290D[arg1],
           stor290D[arg1],
           stor290D[arg1],
           Array(len=stor[(10 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56c].length, data=mem[448 len stor[(10 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56c].length + (floor32(stor[(10 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56c].length - 1) + -stor[(10 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56c].length + 32 % 32)])
}

function _fallback() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        revert 
    if 10^15 == msg.value:
        uint256(stor9) = msg.sender or Mask(96, 160, uint256(stor9))
        revert 
    if address(nextInputProfitAddress) != msg.sender:
        # nil
    else:
        address(nextInputProfitAddress) = 0
        stor11 = msg.value + 10^15
        stor7 = totalContributorsProfit + totalContributorsContribution
        stor10 = stor0
        s = 0
        s = stor11
        while stor10 >= 0:
            require stor10 < stor0
            mem[0] = 0
            stor2 = stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10]
            stor3 = stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7
            if s - (stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11) <= 0:
                stor10 = 0
            else:
                require stor10 < stor0
                mem[0] = 0
                stor[code.data[3570 len 32] + (10 * stor10)] += stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11
                totalContributorsProfit += stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11
                stor290D[stor10] = stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11
            stor10--
            s = stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11
            s = s - (stor[code.data[3570 len 32] + (10 * stor10)] + stor6329[stor10] / stor7 / stor11)
            continue 
}



}
