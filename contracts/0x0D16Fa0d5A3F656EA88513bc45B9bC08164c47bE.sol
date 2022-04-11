contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint16 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
address stor8;
address stor9;

function _fallback() {
    stor0 = 10^18 * code.data[3188 len 32]
    stor1 = 10^18 * code.data[3220 len 32]
    stor2 = 0
    stor3 = 0
    stor4 = block.timestamp + 300
    stor5 = block.timestamp + 600
    stor6 = block.timestamp + 300
    stor7 = msg.sender
    stor8 = code.data[3264 len 20]
    stor9 = code.data[3264 len 20]
    return code.data[185 len 3003]
}



// =====================  Runtime code  =====================


uint256 minimumTarget;
uint256 sub_6fc0a2aa;
uint256 totalRaised;
uint8 stor3;
uint8 stor3; offset 8
uint16 stor3;
uint256 sub_1bc3a01c;
uint256 expirationDate;
uint256 stor6;
address sub_94a988ecAddress;
address projectOwner;
address initialOwner;
mapping of uint256 stor10;

function sub_1bc3a01c(?) {
    return sub_1bc3a01c
}

function initialOwner() {
    return initialOwner
}

function isRefundable() {
    return bool(uint8(stor3.field_0))
}

function minimumTarget() {
    return minimumTarget
}

function isWithdrawable() {
    return bool(uint8(stor3.field_8))
}

function sub_6fc0a2aa(?) {
    return sub_6fc0a2aa
}

function expirationDate() {
    return expirationDate
}

function sub_94a988ec(?) {
    return sub_94a988ecAddress
}

function projectOwner() {
    return projectOwner
}

function totalRaised() {
    return totalRaised
}

function withdrawFunds() {
    require sub_94a988ecAddress != projectOwner
    require block.timestamp > stor6
    require totalRaised >= minimumTarget
    require uint8(stor3.field_8)
    emit 0x51bbf2d2: Array(len=56, data='All funds have been raised and s', 'ent to the project owner')
    selfdestruct(projectOwner)
}

function sub_a584a9b5(?) {
    require sub_94a988ecAddress == msg.sender
    stor6 = 0
    uint16(stor3.field_0) = 0
    emit 0x4051e961 
}

function sub_f4917dd3(?) {
    require sub_94a988ecAddress == msg.sender
    stor6 = sub_1bc3a01c
    uint16(stor3.field_0) = 0
    emit 0x2d128672 
}

function _fallback() payable {
    require block.timestamp <= stor6
    stor10[address(msg.sender)] += msg.value
    totalRaised += msg.value
    emit 0xa26ab80e: msg.value, msg.sender
}

function sub_8ab5bb5a(?) {
    require sub_94a988ecAddress == msg.sender
    stor6 = 0
    uint8(stor3.field_0) = 1
    emit 0xf900c64d: Array(len=26, data='Refunds can now be claimed')
}

function claimOwnership() {
    require sub_94a988ecAddress == msg.sender
    projectOwner = sub_94a988ecAddress
    emit 0xc7088bc5: Array(len=44, data='ChipInToo now own this crowdfund', 'ing contract')
}

function sub_792cd29b(?) {
    require sub_94a988ecAddress == msg.sender
    require block.timestamp > stor6
    require totalRaised >= minimumTarget
    uint8(stor3.field_8) = 1
    emit 0x2a982f09: Array(len=26, data='Funds can now be withdrawn')
}

function sub_9293a4a7(?) {
    require sub_94a988ecAddress == msg.sender
    require sub_94a988ecAddress == projectOwner
    projectOwner = initialOwner
    emit 0x3f4e34dc: Array(len=48, data='The initial project owner now ow', 'ns this contract')
}

function getRefund() {
    require stor10[address(msg.sender)]
    require block.timestamp >= stor6
    require uint8(stor3.field_0)
    stor10[address(msg.sender)] = 0
    call msg.sender with:
       value stor10[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xd86f3d2d: stor10[address(msg.sender)], msg.sender
}

function sub_0616c76b(?) {
    require sub_94a988ecAddress == msg.sender
    require not uint8(stor3.field_0)
    require 10^18 * arg1 <= eth.balance(this.address)
    require block.timestamp > stor6
    require totalRaised >= minimumTarget
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xd0e3f030: arg1, arg2
}

function sub_133ce8a1(?) {
    require sub_94a988ecAddress == msg.sender
    require stor10[address(arg1)]
    require block.timestamp >= stor6
    require uint8(stor3.field_0)
    stor10[address(arg1)] = 0
    call arg1 with:
       value stor10[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x4f982990: stor10[address(arg1)], msg.sender
}



}
