contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor2;
mapping of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint8 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor0 = msg.sender
    stor8 = 417840 * 24 * 3600
    stor9 = 456
    require not msg.value
    stor5 = block.timestamp
    stor4 = 314159265300 * 10^6
    if stor4:
        require stor4
        require 32 * stor4 / stor4 == 32
    require 32 * stor4 == (100 * 32 * stor4 / 100) + (32 * stor4 % 100)
    stor6 = 32 * stor4 / 100
    stor2[0xffffffffffffffffffffffffffffffffffffffff] = stor6
    require stor6 <= stor4
    stor2[0x1111111111111111111111111111111111111111] = stor4 - stor6
    stor3[0x1111111111111111111111111111111111111111][stor0] = stor2[0x1111111111111111111111111111111111111111]
    stor7[1] = 31
    stor7[2] = 28
    stor7[3] = 31
    stor7[4] = 30
    stor7[5] = 31
    stor7[6] = 30
    stor7[7] = 31
    stor7[8] = 31
    stor7[9] = 30
    stor7[10] = 31
    stor7[11] = 30
    stor7[12] = 31
    return code.data[1592 len 6953]
}



// =====================  Runtime code  =====================


#
#  - withdrawFromReserve(uint256 arg1)
#  - availableReserve()
#  - allowance(address arg1, address arg2)
#
const name = 'Po.et'

const decimals = 8

const icoAllocation = 0x1111111111111111111111111111111111111111

const foundationReserve = 0xffffffffffffffffffffffffffffffffffffffff

const symbol = 'POE'


address owner;
address potentialOwner;
mapping of uint256 balanceOf;
mapping of uint256 stor3;
uint256 totalSupply;
uint256 creationTime;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function potentialOwner() {
    return potentialOwner
}

function owner() {
    return owner
}

function creationTime() {
    return creationTime
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    emit NewPotentialOwner(owner, arg1);
    potentialOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    stor3[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function confirmOwnership() {
    require msg.sender == potentialOwner
    stor3[0x1111111111111111111111111111111111111111][stor1] = balanceOf[0x1111111111111111111111111111111111111111]
    stor3[0x1111111111111111111111111111111111111111][stor0] = 0
    stor3[0xffffffffffffffffffffffffffffffffffffffff][stor0] = 0
    emit NewOwner(owner, potentialOwner);
    owner = potentialOwner
    potentialOwner = 0
}

function transferERC20Token(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if stor3[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    stor3[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function distribute(address arg1, uint256 arg2) {
    require msg.sender == owner
    if balanceOf[0x1111111111111111111111111111111111111111] >= arg2:
        if stor3[0x1111111111111111111111111111111111111111][address(msg.sender)] >= arg2:
            if balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]:
                balanceOf[address(arg1)] += arg2
                balanceOf[0x1111111111111111111111111111111111111111] -= arg2
                stor3[0x1111111111111111111111111111111111111111][address(msg.sender)] -= arg2
                emit Transfer(arg2, 0x1111111111111111111111111111111111111111, arg1);
}



}
