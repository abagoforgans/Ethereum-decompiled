contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
address stor1;
mapping of uint256 stor5;
uint8 stor7;
uint8 stor10;

function _fallback() payable {
    stor0 = 1000000000 * 10^18
    Mask(96, 0, stor1.field_160) = 1
    stor10 = 0
    require not msg.value
    address(stor1.field_0) = msg.sender
    stor5[address(stor1.field_0)] = stor0
    stor7 = 0
    emit Transfer(stor5[address(stor1.field_0)], 0, address(stor1.field_0));
    return code.data[515 len 5793]
}



// =====================  Runtime code  =====================


const name = 'AdBank'

const decimals = 18

const symbol = 'ADB'


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
uint256 eth_received;
uint256 stor3;
uint256 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stage;
uint256 stor8;
uint256 stor9;
uint8 stor10;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function eth_received() {
    return eth_received
}

function owner() {
    return owner
}

function stage() {
    require stage <= 3
    return stage
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function EmergencyStop() {
    require msg.sender == owner
    require stage <= 3
    require stage == 1
    Mask(96, 0, stor1.field_160) = 1
    stage = 2
}

function ResumeEmergencyStop() {
    require msg.sender == owner
    require stage <= 3
    require stage == 2
    Mask(96, 0, stor1.field_160) = 0
    stage = 1
}

function end_ICO() {
    require msg.sender == owner
    require stage <= 3
    require stage == 1
    require block.timestamp > stor4
    stor10 = 1
    stage = 3
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function StartICO() {
    require msg.sender == owner
    require stage <= 3
    require not stage
    stage = 1
    Mask(96, 0, stor1.field_160) = 0
    stor3 = block.timestamp
    require block.timestamp + (936 * 24 * 3600) >= block.timestamp
    stor4 = block.timestamp + (936 * 24 * 3600)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require balanceOf[address(arg1)] + balanceOf[address(stor1.field_0)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[address(stor1.field_0)]
    balanceOf[address(stor1.field_0)] = 0
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 >= 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require stage <= 3
    require stage == 1
    require stor8 < 44000 * 10^18
    require not stor10
    require not uint8(stor1.field_160)
    require block.timestamp <= stor4
    require eth_received + msg.value >= eth_received
    stor8 = eth_received + msg.value
    if stor8 <= 44000 * 10^18:
        require eth_received + msg.value >= eth_received
        eth_received += msg.value
    else:
        require 44000 * 10^18 <= stor8
        stor9 = stor8 - 44000 * 10^18
        call msg.sender with:
           value stor9 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        eth_received = 44000 * 10^18
}



}
