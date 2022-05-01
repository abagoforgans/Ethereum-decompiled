contract main {


// =======================  Init code  ======================


uint128 stor3; offset 160
address stor3;
uint256 stor4;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    stor4 = 500 * 10^18
    address(stor3.field_0) = msg.sender
    return code.data[124 len 8432]
}



// =====================  Runtime code  =====================


const DECIMALS = 18

const NAME = 'Stefan'

const SYMBOL = 'STF'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 yearlyFee;
mapping of struct retainers;

function totalSupply() {
    return totalSupply
}

function available() {
    return bool(uint8(stor3.field_160))
}

function retainers(address arg1) {
    return retainers[arg1].field_0, retainers[arg1].field_256
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function yearlyFee() {
    return yearlyFee
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function changeFee(uint256 arg1) {
    require msg.sender == owner
    yearlyFee = arg1
}

function setAvailable(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require uint8(stor3.field_160)
    require msg.value >= yearlyFee
    require retainers[address(msg.sender)].field_0 < block.timestamp - (8760 * 24 * 3600)
    retainers[address(msg.sender)].field_0 = block.timestamp
    retainers[address(msg.sender)].field_256 = msg.value
    emit Retained(msg.sender);
    require totalSupply + msg.value >= totalSupply
    totalSupply += msg.value
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    emit Transfer(msg.value, 0, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createRetainer() payable {
    require uint8(stor3.field_160)
    require msg.value >= yearlyFee
    require retainers[address(msg.sender)].field_0 < block.timestamp - (8760 * 24 * 3600)
    retainers[address(msg.sender)].field_0 = block.timestamp
    retainers[address(msg.sender)].field_256 = msg.value
    emit Retained(msg.sender);
    require totalSupply + msg.value >= totalSupply
    totalSupply += msg.value
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    emit Transfer(msg.value, 0, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg1 != this.address
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return 1
}

function increaseApproval(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg1 != this.address
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    mem[ceil32(arg3.length) + 128] = allowance[address(msg.sender)][address(arg1)]
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg1 != this.address
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Transfer(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return 1
}

function decreaseApproval(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg1 != this.address
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    mem[ceil32(arg3.length) + 128] = allowance[address(msg.sender)][address(arg1)]
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require arg2 != this.address
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    mem[ceil32(arg4.length) + 128] = arg3
    emit Transfer(arg3, arg1, arg2);
    mem[ceil32(arg4.length) + 128 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg4.length) + 132 len arg4.length - 4]
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 128] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
        call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg4.length) + 132 len floor32(arg4.length) + 28]
    require ext_call.success
    return 1
}



}
