contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor6;
address stor7;
address stor8;
uint256 stor9;

function _fallback() payable {
    stor0 = 0
    stor6 = 0
    stor7 = 0
    stor9 = 1
    require not msg.value
    stor1 = msg.sender
    stor1 = msg.sender
    stor8 = msg.sender
    return code.data[143 len 4799]
}



// =====================  Runtime code  =====================


const name = ' network token'

const decimals = 15

const getRate = 1, 1

const symbol = ''

const getCode = ''


uint256 stor0;
address owner;
address newOwner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 isStarted;
address stor6; offset 8
address SUBSCRIPTION_MODULEAddress;
address beneficiaryAddress;
uint256 PLATFORM_FEE_PER_10000;
uint256 totalOnDeposit;
uint256 totalInCirculation;

function totalSupply() {
    return totalSupply
}

function SUBSCRIPTION_MODULE() {
    return SUBSCRIPTION_MODULEAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function isStarted() {
    return bool(isStarted)
}

function totalInCirculation() {
    return totalInCirculation
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalOnDeposit() {
    return totalOnDeposit
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function PLATFORM_FEE_PER_10000() {
    return PLATFORM_FEE_PER_10000
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function max(uint256 arg1, uint256 arg2) {
    if arg1 >= arg2:
        return arg1
    return arg2
}

function min(uint256 arg1, uint256 arg2) {
    if arg1 <= arg2:
        return arg1
    return arg2
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function start() {
    require not isStarted
    require owner == msg.sender
    totalInCirculation = totalSupply
    isStarted = 1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setPlatformFeePer10000(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= 10000
    PLATFORM_FEE_PER_10000 = arg1
}

function mint(uint256 arg1, address arg2) {
    require stor6 == msg.sender
    require not isStarted
    totalSupply += arg1
    balanceOf[address(arg2)] += arg1
}

function approve(address arg1, uint256 arg2) {
    require isStarted
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _mintFromDeposit(address arg1, uint256 arg2) {
    require SUBSCRIPTION_MODULEAddress == msg.sender
    balanceOf[address(arg1)] += arg2
    totalOnDeposit -= arg2
    totalInCirculation += arg2
}

function _burnForDeposit(address arg1, uint256 arg2) {
    require SUBSCRIPTION_MODULEAddress == msg.sender
    if balanceOf[address(arg1)] < arg2:
        return 0
    balanceOf[address(arg1)] -= arg2
    totalOnDeposit += arg2
    totalInCirculation -= arg2
    return 1
}

function attachSubscriptionModule(address arg1) {
    require stor0 <= 0
    stor0 = -1
    require owner == msg.sender
    SUBSCRIPTION_MODULEAddress = arg1
    if arg1 <= 0:
    require ext_code.size(arg1)
    call arg1.attachToken(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require isStarted
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
    require isStarted
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

function _fulfillPayment(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) {
    require SUBSCRIPTION_MODULEAddress == msg.sender
    require arg3 * PLATFORM_FEE_PER_10000 / 10000 <= arg3
    if balanceOf[address(arg1)] < arg3:
        emit 0xef83725a: address(arg1), address(arg2), arg3, arg3 * PLATFORM_FEE_PER_10000 / 10000, arg5, 1, arg4
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        emit 0xef83725a: address(arg1), address(arg2), arg3, arg3 * PLATFORM_FEE_PER_10000 / 10000, arg5, 1, arg4
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] = arg3 - (arg3 * PLATFORM_FEE_PER_10000 / 10000) + balanceOf[arg2]
    balanceOf[stor8] += arg3 * PLATFORM_FEE_PER_10000 / 10000
    emit 0xef83725a: address(arg1), address(arg2), arg3, arg3 * PLATFORM_FEE_PER_10000 / 10000, arg5, 0, arg4
    return 1
}

function _fulfillPreapprovedPayment(address arg1, address arg2, uint256 arg3, address arg4) {
    require SUBSCRIPTION_MODULEAddress == msg.sender
    if arg1 == arg4:
        emit 0xef83725a: address(arg1), address(arg2), arg3, arg3 * PLATFORM_FEE_PER_10000 / 10000, arg4, 2, 0
        return arg1 != arg4
    if allowance[address(arg1)][address(arg4)] < arg3:
        emit 0xef83725a: address(arg1), address(arg2), arg3, arg3 * PLATFORM_FEE_PER_10000 / 10000, arg4, 2, 0
        return allowance[address(arg1)][address(arg4)] >= arg3
    require SUBSCRIPTION_MODULEAddress == msg.sender
    require arg3 * PLATFORM_FEE_PER_10000 / 10000 <= arg3
    if balanceOf[address(arg1)] < arg3:
        emit 0xef83725a: address(arg1), address(arg2), arg3, arg3 * PLATFORM_FEE_PER_10000 / 10000, arg4, 1, 0
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        emit 0xef83725a: address(arg1), address(arg2), arg3, arg3 * PLATFORM_FEE_PER_10000 / 10000, arg4, 1, 0
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] = arg3 - (arg3 * PLATFORM_FEE_PER_10000 / 10000) + balanceOf[arg2]
    balanceOf[stor8] += arg3 * PLATFORM_FEE_PER_10000 / 10000
    emit 0xef83725a: address(arg1), address(arg2), arg3, arg3 * PLATFORM_FEE_PER_10000 / 10000, arg4, 0, 0
    allowance[address(arg1)][address(arg4)] -= arg3
    return 1
}



}
