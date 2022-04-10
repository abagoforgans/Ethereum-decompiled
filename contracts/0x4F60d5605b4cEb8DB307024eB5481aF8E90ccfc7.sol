contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
mapping of uint256 stor1;
uint256 stor3;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    stor3 = 100000000 * 10^18
    require not msg.value
    stor1[address(stor0.field_0)] = stor3
    return code.data[113 len 2363]
}



// =====================  Runtime code  =====================


const name = 'Altruism Token'

const decimals = 18

const symbol = 'ALTR'


uint8 stor0; offset 160
address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function purchasingAllowed() {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function enablePurchasing() {
    require address(stor0.field_0) == msg.sender
    uint8(stor0.field_160) = 1
}

function disablePurchasing() {
    require address(stor0.field_0) == msg.sender
    uint8(stor0.field_160) = 0
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] > arg3
    require calldata.size >= 68
    require arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function _fallback() payable {
    require uint8(stor0.field_160)
    require msg.value >= 10^16
    if 4 * 10^16 != msg.value:
        require balanceOf[address(stor0.field_0)] >= 1000 * msg.value
        require balanceOf[address(msg.sender)] + (1000 * msg.value) > balanceOf[address(msg.sender)]
        call address(stor0.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balanceOf[address(stor0.field_0)] += -1000 * msg.value
        balanceOf[msg.sender] += 1000 * msg.value
        emit Transfer((1000 * msg.value), address(stor0.field_0), msg.sender);
    else:
        require balanceOf[address(stor0.field_0)] >= 4000 * 10^18
        require balanceOf[address(msg.sender)] + 4000 * 10^18 > balanceOf[address(msg.sender)]
        call address(stor0.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balanceOf[address(stor0.field_0)] -= 4000 * 10^18
        balanceOf[msg.sender] += 4000 * 10^18
        emit Transfer(4000 * 10^18, address(stor0.field_0), msg.sender);
    if msg.value >= 3 * 10^16:
        if msg.value != 4 * 10^16:
            emit AltruismMode(msg.value, block.timestamp, msg.sender);
}



}
