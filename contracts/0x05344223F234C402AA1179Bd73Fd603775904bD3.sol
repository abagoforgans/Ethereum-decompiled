contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
address stor4;
address stor5;
uint256 stor6;
mapping of uint256 stor80881070157825347319611974785187970081753258396907232038517217065733455163542;

function _fallback() payable {
    stor4 = 0xfaf1371682d162c822a17baf47be74b1e52b083c
    stor5 = 0xb7512be68d8802ac36269e2dd732a9104b90676e
    require not msg.value
    stor4 = code.data[4028 len 20]
    stor[code.data[3984 len 32]] = 13103828600 * 10^6
    stor[code.data[3984 len 32]] = 3182031400 * 10^6
    storB2D1[stor4] = 3182031400 * 10^6
    stor0[stor5] = 2133181400 * 10^6
    require stor0[stor5] + 13103828600 * 10^6 >= 13103828600 * 10^6
    stor2 = stor0[stor5] + 13103828600 * 10^6
    stor2 = stor0[stor5] + (1256625000 * 24 * 3600 * 24 * 3600)
    if stor0[stor5] + (1256625000 * 24 * 3600 * 24 * 3600):
        require stor0[stor5] + (1256625000 * 24 * 3600 * 24 * 3600)
        require (5 * stor0[stor5]) + (6283125000 * 24 * 3600 * 24 * 3600) / stor0[stor5] + (1256625000 * 24 * 3600 * 24 * 3600) == 5
    stor6 = (5 * stor0[stor5]) + (6283125000 * 24 * 3600 * 24 * 3600)
    return code.data[943 len 3041]
}



// =====================  Runtime code  =====================


const preICOSupply = 3182031400 * 10^6

const name = ''

const allocationAddressPreICO = 0xfaf1371682d162c822a17baf47be74b1e52b083c

const ICOSupply = 13103828600 * 10^6

const decimals = 8

const allocationAddressICO = 0xfaf1371682d162c822a17baf47be74b1e52b083c

const symbol = ''


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address minterAddress;
address founderAddress;
address multisigAddress;
uint256 maxTotalSupply;
mapping of uint256 stor315941680304005262967234276504640508131848665612918875150457879163021309232;

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function maxTotalSupply() {
    return maxTotalSupply
}

function multisig() {
    return multisigAddress
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeFounder(address arg1) {
    require founderAddress == msg.sender
    founderAddress = arg1
    return 0
}

function changeMultisig(address arg1) {
    require founderAddress == msg.sender
    multisigAddress = arg1
    return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeMinter(address arg1) {
    require founderAddress == msg.sender
    storB2D1[stor3] = 0
    minterAddress = arg1
    storB2D1[stor3] = balanceOf[0xfaf1371682d162c822a17baf47be74b1e52b083c]
    return 0
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit 0x96ddf252: arg2, msg.sender, arg1
    return 1
}

function issueTokens(address arg1, uint256 arg2) payable {
    require minterAddress == msg.sender
    if not arg2:
        return 0
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= maxTotalSupply
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Issuance(arg2, arg1);
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
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x96ddf252: arg3, arg1, arg2
    return 1
}



}
