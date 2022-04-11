contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
array of address stor4;
array of uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor6 = 100 * 10^6
    require not msg.value
    idx = 0
    while uint8(idx) < 10:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            s = stor4.length + sha3(4) + 1
            while sha3(4) + stor4.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor4[stor4.length] = 0
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            s = stor5.length + sha3(5) + 1
            while sha3(5) + stor5.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 5
        stor5[stor5.length] = 0
        idx = idx + 1
        continue 
    stor0 = 5 * 10^9 * stor6
    stor3 = msg.sender
    stor1[address(msg.sender)] = 5 * 10^9 * stor6
    return code.data[339 len 2697]
}



// =====================  Runtime code  =====================


const name = 'LeviusDAO'

const decimals = 8

const symbol = 'LeviusDAO'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
array of address getBestWallet;
array of uint256 getBestTokenCount;

function GetBestWalletAddress(uint8 arg1) {
    require stor3 == msg.sender
    require arg1 < 10
    require arg1 < getBestWallet.length
    emit BestWallet(getBestWallet[arg1]);
    return getBestWallet[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function GetBestTokenCount(uint8 arg1) {
    require arg1 < 10
    require arg1 < getBestTokenCount.length
    emit BestCountTokens(getBestTokenCount[arg1]);
    return getBestTokenCount[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferWithoutChangeBest(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function CheckBest(uint256 arg1, address arg2) {
    idx = 0
    while uint8(idx) < 10:
        require uint8(idx) < getBestTokenCount.length
        mem[0] = 5
        if getBestTokenCount[uint8(idx)] >= arg1:
            idx = idx + 1
            continue 
        s = 9
        while uint8(s) > uint8(idx):
            require uint8(s - 1) < getBestTokenCount.length
            require uint8(s) < getBestTokenCount.length
            getBestTokenCount[uint8(s)] = getBestTokenCount[uint8(s - 1)]
            require uint8(s - 1) < getBestWallet.length
            require uint8(s) < getBestWallet.length
            mem[0] = 4
            getBestWallet[uint8(s)] = getBestWallet[uint8(s - 1)]
            s = s - 1
            continue 
        require uint8(idx) < getBestTokenCount.length
        getBestTokenCount[uint8(idx)] = arg1
        require uint8(idx) < getBestWallet.length
        getBestWallet[uint8(idx)] = arg2
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    idx = 0
    while uint8(idx) < 10:
        require uint8(idx) < getBestTokenCount.length
        mem[0] = 5
        if getBestTokenCount[uint8(idx)] >= arg2 + balanceOf[arg1]:
            idx = idx + 1
            continue 
        s = 9
        while uint8(s) > uint8(idx):
            require uint8(s - 1) < getBestTokenCount.length
            require uint8(s) < getBestTokenCount.length
            getBestTokenCount[uint8(s)] = getBestTokenCount[uint8(s - 1)]
            require uint8(s - 1) < getBestWallet.length
            require uint8(s) < getBestWallet.length
            mem[0] = 4
            getBestWallet[uint8(s)] = getBestWallet[uint8(s - 1)]
            s = s - 1
            continue 
        require uint8(idx) < getBestTokenCount.length
        getBestTokenCount[uint8(idx)] = arg2 + balanceOf[arg1]
        require uint8(idx) < getBestWallet.length
        getBestWallet[uint8(idx)] = arg1
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    idx = 0
    while uint8(idx) < 10:
        require uint8(idx) < getBestTokenCount.length
        mem[0] = 5
        if getBestTokenCount[uint8(idx)] >= arg3 + balanceOf[arg2]:
            idx = idx + 1
            continue 
        s = 9
        while uint8(s) > uint8(idx):
            require uint8(s - 1) < getBestTokenCount.length
            require uint8(s) < getBestTokenCount.length
            getBestTokenCount[uint8(s)] = getBestTokenCount[uint8(s - 1)]
            require uint8(s - 1) < getBestWallet.length
            require uint8(s) < getBestWallet.length
            mem[0] = 4
            getBestWallet[uint8(s)] = getBestWallet[uint8(s - 1)]
            s = s - 1
            continue 
        require uint8(idx) < getBestTokenCount.length
        getBestTokenCount[uint8(idx)] = arg3 + balanceOf[arg2]
        require uint8(idx) < getBestWallet.length
        getBestWallet[uint8(idx)] = arg2
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        return 1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
