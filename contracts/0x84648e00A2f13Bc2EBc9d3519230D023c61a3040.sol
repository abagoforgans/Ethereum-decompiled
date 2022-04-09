contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
address stor4;
address stor5;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor5 = 0x1111111111111111111111111111111111111111
    stor6 = 0xc6957b6dfb3cbfc0c95ec82c13f9d5912526f230
    stor7 = 0xf4c672e1029013ead002a0c03909cddfdb2c18ae
    stor8 = 100500000 * 10^18
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor4 = code.data[7585 len 20]
    stor0[stor5] = 4000000 * 10^18
    stor0[stor6] = 17000000 * 10^18
    require stor0[stor5] + stor0[stor6] >= stor0[stor5]
    stor9 = stor0[stor5] + stor0[stor6]
    stor2 = stor8
    stor10 = block.timestamp
    return code.data[966 len 6607]
}



// =====================  Runtime code  =====================


const name = 'Minutemen Reserve'

const decimals = 18

const symbol = 'MMR'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address minterAddress;
address founderAddress;
address allocationAddressICO;
address adminWalletAddress;
address rewardsWalletAddress;
uint256 maxTotalSupply;
uint256 sub_0e0ea30b;
uint256 lastMint;

function minter() {
    return minterAddress
}

function sub_0e0ea30b(?) {
    return sub_0e0ea30b
}

function totalSupply() {
    return totalSupply
}

function maxTotalSupply() {
    return maxTotalSupply
}

function adminWallet() {
    return adminWalletAddress
}

function founder() {
    return founderAddress
}

function lastMint() {
    return lastMint
}

function rewardsWallet() {
    return rewardsWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allocationAddressICO() {
    return allocationAddressICO
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeFounder(address arg1) {
    require msg.sender == founderAddress
    founderAddress = arg1
    return 0
}

function changeReward(address arg1) {
    require msg.sender == founderAddress
    rewardsWalletAddress = arg1
    return 1
}

function sub_296fb521(?) {
    require balanceOf[stor5] >= arg2
    balanceOf[stor5] -= arg2
    balanceOf[address(arg1)] += arg2
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeMinter(address arg1) {
    require msg.sender == founderAddress
    allowance[stor5][stor3] = 0
    minterAddress = arg1
    allowance[stor5][stor3] = balanceOf[stor5]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mintTokens() {
    require msg.sender == founderAddress
    require block.timestamp - lastMint >= 2629743
    require sub_0e0ea30b < maxTotalSupply
    balanceOf[stor6] += 300000 * 10^18
    balanceOf[stor7] += 200000 * 10^18
    balanceOf[stor5] += 100000 * 10^18
    sub_0e0ea30b += 600000 * 10^18
    lastMint = block.timestamp
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function issueTokens(address arg1, uint256 arg2) {
    require msg.sender == minterAddress
    require balanceOf[stor5] >= arg2
    if balanceOf[stor5] >= arg2:
        if allowance[stor5][address(msg.sender)] >= arg2:
            if balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]:
                balanceOf[address(arg1)] += arg2
                balanceOf[stor5] -= arg2
                allowance[stor5][address(msg.sender)] -= arg2
                emit Transfer(arg2, allocationAddressICO, arg1);
    return 1
}



}
