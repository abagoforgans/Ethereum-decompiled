contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
uint8 stor3;
address stor3; offset 8
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    uint8(stor3.field_0) = 1
    stor9 = 0
    require not msg.value
    address(stor3.field_8) = code.data[3636 len 20]
    stor4 = code.data[3668 len 20]
    stor2 = 200000000000 * 10^18
    stor7 = 150000000000 * 10^18
    stor0[code.data[3636 len 20]] = 30000000000 * 10^18
    stor5 = 10000000000 * 10^18
    stor6 = 5000000000 * 10^18
    stor0[stor4] = 5000000000 * 10^18
    stor8 = stor0[code.data[3636 len 20]]
    return code.data[259 len 3365]
}



// =====================  Runtime code  =====================


const name = 'W3C'

const decimals = 18

const symbol = 'W3C'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3;
address founderMultiSigAddress; offset 8
uint256 stor3;
address crowdFundAddress;
uint256 reserveFund;
uint256 sub_226135c1;
uint256 sub_d527af07;
uint256 totalAllocatedTokens;
uint8 isPublicTokenReleased;

function totalAllocatedTokens() {
    return totalAllocatedTokens
}

function totalSupply() {
    return totalSupply
}

function sub_226135c1(?) {
    return sub_226135c1
}

function isActive() {
    return bool(uint8(stor3.field_0))
}

function founderMultiSigAddress() {
    return founderMultiSigAddress
}

function crowdFundAddress() {
    return crowdFundAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isPublicTokenReleased() {
    return bool(isPublicTokenReleased)
}

function reserveFund() {
    return reserveFund
}

function sub_d527af07(?) {
    return sub_d527af07
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function sub_08edd8e6(?) {
    require crowdFundAddress == msg.sender
    totalAllocatedTokens += arg1
}

function changeState() {
    require founderMultiSigAddress == msg.sender
    uint256(stor3.field_0) = not uint8(stor3.field_0) or Mask(248, 8, uint256(stor3.field_0))
}

function setFounderMultiSigAddress(address arg1) {
    require founderMultiSigAddress == msg.sender
    require arg1
    founderMultiSigAddress = arg1
    emit 0xa8bb77ad: 0, arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_04f90db0(?) {
    require crowdFundAddress == msg.sender
    if isPublicTokenReleased:
        return 0
    isPublicTokenReleased = 1
    balanceOf[stor4] += sub_d527af07
    sub_d527af07 = 0
    emit 0x71368a36: block.timestamp
    return 1
}

function sub_06a048c8(?) {
    require founderMultiSigAddress == msg.sender
    require arg1
    if reserveFund < arg2:
        return 0
    reserveFund -= arg2
    balanceOf[address(arg1)] += arg2
    totalAllocatedTokens += arg2
    emit 0x83a3f5f3: block.timestamp, arg2
    return 1
}

function sub_e8f543a3(?) {
    require founderMultiSigAddress == msg.sender
    require arg1
    if sub_226135c1 < arg2:
        return 0
    sub_226135c1 -= arg2
    balanceOf[address(arg1)] += arg2
    totalAllocatedTokens += arg2
    emit 0x95f69d1f: block.timestamp, arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if crowdFundAddress != msg.sender:
        if not uint8(stor3.field_0):
            return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if crowdFundAddress != msg.sender:
        if not uint8(stor3.field_0):
            return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
