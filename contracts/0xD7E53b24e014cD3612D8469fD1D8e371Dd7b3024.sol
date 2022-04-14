contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
uint128 stor3; offset 160
address stor3;
mapping of uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor0 = 98 * 10^10
    address(stor3.field_0) = msg.sender
    stor4[address(msg.sender)] = 98 * 10^10
    stor6 = block.timestamp + (336 * 24 * 3600)
    stor7 = stor6 + (168 * 24 * 3600)
    stor8 = stor7 + (168 * 24 * 3600)
    stor9 = stor8 + (168 * 24 * 3600)
    stor2 = 0
    return code.data[339 len 4991]
}



// =====================  Runtime code  =====================


const name = 'DIGI'

const decimals = 4

const symbol = 'DIGI'


uint256 totalSupply;
uint256 stor2;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 deadLine;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function deadLine() {
    return deadLine
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function extendDeadline(uint256 arg1) {
    require owner == msg.sender
    deadLine += 24 * 3600 * arg1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFundToAccount(address arg1) {
    require owner == msg.sender
    require uint8(stor3.field_160)
    require stor2 > 0
    call arg1 with:
       value stor2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor2 = 0
    return stor2
}

function transferLimitedFundToAccount(address arg1, uint256 arg2) {
    require owner == msg.sender
    require uint8(stor3.field_160)
    require stor2 > 0
    require arg2 < stor2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor2 -= arg2
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg1
    require arg2 > 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg1
    require arg2
    require arg3 > 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(arg2)] < arg3:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor3.field_160)
    require msg.sender
    require msg.value >= 1666666666666666
    require block.timestamp < deadLine
    if block.timestamp < stor6:
        require balanceOf[address(stor3.field_0)] >= (10000 * msg.value / 1666666666666666) + (40 * 10000 * msg.value / 1666666666666666 / 100)
        allowance[address(stor3.field_0)][address(msg.sender)] = allowance[address(stor3.field_0)][address(msg.sender)] + (10000 * msg.value / 1666666666666666) + (40 * 10000 * msg.value / 1666666666666666 / 100)
        require not uint8(stor3.field_160)
        require owner
        require msg.sender
        require (10000 * msg.value / 1666666666666666) + (40 * 10000 * msg.value / 1666666666666666 / 100) > 0
        require balanceOf[address(stor3.field_0)] >= (10000 * msg.value / 1666666666666666) + (40 * 10000 * msg.value / 1666666666666666 / 100)
        require allowance[address(stor3.field_0)][address(msg.sender)] >= (10000 * msg.value / 1666666666666666) + (40 * 10000 * msg.value / 1666666666666666 / 100)
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10000 * msg.value / 1666666666666666) + (40 * 10000 * msg.value / 1666666666666666 / 100)
        balanceOf[address(stor3.field_0)] = balanceOf[address(stor3.field_0)] - (10000 * msg.value / 1666666666666666) - (40 * 10000 * msg.value / 1666666666666666 / 100)
        allowance[address(stor3.field_0)][address(msg.sender)] = allowance[address(stor3.field_0)][address(msg.sender)] - (10000 * msg.value / 1666666666666666) - (40 * 10000 * msg.value / 1666666666666666 / 100)
        emit Transfer(((10000 * msg.value / 1666666666666666) + (40 * 10000 * msg.value / 1666666666666666 / 100)), owner, msg.sender);
    else:
        if block.timestamp < stor7:
            require balanceOf[address(stor3.field_0)] >= (10000 * msg.value / 1666666666666666) + (20 * 10000 * msg.value / 1666666666666666 / 100)
            allowance[address(stor3.field_0)][address(msg.sender)] = allowance[address(stor3.field_0)][address(msg.sender)] + (10000 * msg.value / 1666666666666666) + (20 * 10000 * msg.value / 1666666666666666 / 100)
            require not uint8(stor3.field_160)
            require owner
            require msg.sender
            require (10000 * msg.value / 1666666666666666) + (20 * 10000 * msg.value / 1666666666666666 / 100) > 0
            require balanceOf[address(stor3.field_0)] >= (10000 * msg.value / 1666666666666666) + (20 * 10000 * msg.value / 1666666666666666 / 100)
            require allowance[address(stor3.field_0)][address(msg.sender)] >= (10000 * msg.value / 1666666666666666) + (20 * 10000 * msg.value / 1666666666666666 / 100)
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10000 * msg.value / 1666666666666666) + (20 * 10000 * msg.value / 1666666666666666 / 100)
            balanceOf[address(stor3.field_0)] = balanceOf[address(stor3.field_0)] - (10000 * msg.value / 1666666666666666) - (20 * 10000 * msg.value / 1666666666666666 / 100)
            allowance[address(stor3.field_0)][address(msg.sender)] = allowance[address(stor3.field_0)][address(msg.sender)] - (10000 * msg.value / 1666666666666666) - (20 * 10000 * msg.value / 1666666666666666 / 100)
            emit Transfer(((10000 * msg.value / 1666666666666666) + (20 * 10000 * msg.value / 1666666666666666 / 100)), owner, msg.sender);
        else:
            if block.timestamp >= stor8:
                require balanceOf[address(stor3.field_0)] >= 10000 * msg.value / 1666666666666666
                allowance[address(stor3.field_0)][address(msg.sender)] += 10000 * msg.value / 1666666666666666
                require not uint8(stor3.field_160)
                require owner
                require msg.sender
                require 10000 * msg.value / 1666666666666666 > 0
                require balanceOf[address(stor3.field_0)] >= 10000 * msg.value / 1666666666666666
                require allowance[address(stor3.field_0)][address(msg.sender)] >= 10000 * msg.value / 1666666666666666
                balanceOf[address(msg.sender)] += 10000 * msg.value / 1666666666666666
                balanceOf[address(stor3.field_0)] -= 10000 * msg.value / 1666666666666666
                allowance[address(stor3.field_0)][address(msg.sender)] -= 10000 * msg.value / 1666666666666666
                emit Transfer((10000 * msg.value / 1666666666666666), owner, msg.sender);
            else:
                require balanceOf[address(stor3.field_0)] >= (10000 * msg.value / 1666666666666666) + (10 * 10000 * msg.value / 1666666666666666 / 100)
                allowance[address(stor3.field_0)][address(msg.sender)] = allowance[address(stor3.field_0)][address(msg.sender)] + (10000 * msg.value / 1666666666666666) + (10 * 10000 * msg.value / 1666666666666666 / 100)
                require not uint8(stor3.field_160)
                require owner
                require msg.sender
                require (10000 * msg.value / 1666666666666666) + (10 * 10000 * msg.value / 1666666666666666 / 100) > 0
                require balanceOf[address(stor3.field_0)] >= (10000 * msg.value / 1666666666666666) + (10 * 10000 * msg.value / 1666666666666666 / 100)
                require allowance[address(stor3.field_0)][address(msg.sender)] >= (10000 * msg.value / 1666666666666666) + (10 * 10000 * msg.value / 1666666666666666 / 100)
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10000 * msg.value / 1666666666666666) + (10 * 10000 * msg.value / 1666666666666666 / 100)
                balanceOf[address(stor3.field_0)] = balanceOf[address(stor3.field_0)] - (10000 * msg.value / 1666666666666666) - (10 * 10000 * msg.value / 1666666666666666 / 100)
                allowance[address(stor3.field_0)][address(msg.sender)] = allowance[address(stor3.field_0)][address(msg.sender)] - (10000 * msg.value / 1666666666666666) - (10 * 10000 * msg.value / 1666666666666666 / 100)
                emit Transfer(((10000 * msg.value / 1666666666666666) + (10 * 10000 * msg.value / 1666666666666666 / 100)), owner, msg.sender);
    stor2 += msg.value
}



}
