contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
mapping of uint256 stor9;

function _fallback() payable {
    stor0 = 35000000 * 10^18
    stor2 = 0x1313d38e988526a43ab79b69d4c94dd16f4c9936
    stor3 = 0x52d4bcf6f328492453fafeff9d6eb73d26766cff
    stor4 = 0xbfe47a096486b564783f261b324e198ad84fb8de
    stor5 = 0x5ad7cdd7cd67fe7eb17768f04425cf35a91587c9
    stor6 = 0xa90ab8b8cfa553cc75f9d2c24ae7148e44cd0aba
    stor7 = 0xd2fde07ee7cb86afbe59f4efb9ffc1528418cc0e
    stor8 = 0x5e948d1c6f7c76853e43dbf1f01dcea5263011c5
    require not msg.value
    stor1 = msg.sender
    stor9[stor2] = 12700000 * 10^18
    stor9[stor3] = 3500000 * 10^18
    stor9[stor4] = 3500000 * 10^18
    stor9[stor5] = 2100000 * 10^18
    stor9[stor6] = 2100000 * 10^18
    stor9[stor7] = 2100000 * 10^18
    stor9[stor8] = 2500 * 10^18 * 3600
    emit code.data[2711 len 32]: stor9[stor2], 0, stor2
    emit code.data[2711 len 32]: stor9[stor3], 0, stor3
    emit code.data[2711 len 32]: stor9[stor4], 0, stor4
    emit code.data[2711 len 32]: stor9[stor5], 0, stor5
    emit code.data[2711 len 32]: stor9[stor6], 0, stor6
    emit code.data[2711 len 32]: stor9[stor7], 0, stor7
    emit code.data[2711 len 32]: stor9[stor8], 0, stor8
    return code.data[847 len 1864]
}



// =====================  Runtime code  =====================


const name = 'MIATOKEN'

const decimals = 18

const symbol = 'MIA'


uint256 _totalsupply;
address owner;
address stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalsupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function _totalsupply() {
    return _totalsupply
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require stor2 == msg.sender
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 >= 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
