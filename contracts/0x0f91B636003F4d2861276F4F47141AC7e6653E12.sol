contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    stor2 = 0
    return code.data[69 len 2940]
}



// =====================  Runtime code  =====================


const name = ''

const symbol = ''

const AUTHOR = 0x8e9342eb769c4039aaf33da739fb2fc8af9afdc1


address owner;
uint256 starttime;
uint256 inCirculation;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return inCirculation
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function starttime() {
    return starttime
}

function owner() {
    return owner
}

function oxen(address arg1) {
    return balanceOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function inCirculation() {
    return inCirculation
}

function closedown() {
    require owner == msg.sender
    selfdestruct(owner)
}

function saleOn() {
    return (block.timestamp - starttime < 744 * 24 * 3600)
}

function div(uint256 arg1, uint256 arg2) {
    require arg2
    return (arg1 / arg2)
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function mul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function approve(address arg1, uint256 arg2) {
    if block.timestamp - starttime < 744 * 24 * 3600:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    if arg1 > eth.balance(this.address):
        return 0
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function startSale() {
    require owner == msg.sender
    if not starttime:
        starttime = block.timestamp
        inCirculation = 500 * 10^6
        balanceOf[stor0] = 500 * 10^6
        emit Transfer(500 * 10^6, this.address, owner);
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(msg.sender)]:
        return 0
    if block.timestamp - starttime < 744 * 24 * 3600:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function bonus() {
    if block.timestamp - starttime < 24 * 3600:
        return 25
    if block.timestamp - starttime < 168 * 24 * 3600:
        return 20
    if block.timestamp - starttime < 336 * 24 * 3600:
        return 15
    if block.timestamp - starttime < 504 * 24 * 3600:
        return 10
    if block.timestamp - starttime >= 672 * 24 * 3600:
        return 0
    return 5
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyOx() payable {
    require block.timestamp - starttime < 744 * 24 * 3600
    require msg.value >= 10^17
    if msg.value:
        require msg.value
        require 3 * msg.value / msg.value == 3
    if block.timestamp - starttime < 24 * 3600:
        if 3 * msg.value:
            require 3 * msg.value
            require 375 * msg.value / 3 * msg.value == 125
        require inCirculation + (375 * msg.value / 10^17) <= 10^9
        inCirculation += 375 * msg.value / 10^17
        balanceOf[address(msg.sender)] += 375 * msg.value / 10^17
        emit Receipt(375 * msg.value / 10^17, msg.value, msg.sender);
    else:
        if block.timestamp - starttime < 168 * 24 * 3600:
            if 3 * msg.value:
                require 3 * msg.value
                require 360 * msg.value / 3 * msg.value == 120
            require inCirculation + (360 * msg.value / 10^17) <= 10^9
            inCirculation += 360 * msg.value / 10^17
            balanceOf[address(msg.sender)] += 360 * msg.value / 10^17
            emit Receipt(360 * msg.value / 10^17, msg.value, msg.sender);
        else:
            if block.timestamp - starttime < 336 * 24 * 3600:
                if 3 * msg.value:
                    require 3 * msg.value
                    require 345 * msg.value / 3 * msg.value == 115
                require inCirculation + (345 * msg.value / 10^17) <= 10^9
                inCirculation += 345 * msg.value / 10^17
                balanceOf[address(msg.sender)] += 345 * msg.value / 10^17
                emit Receipt(345 * msg.value / 10^17, msg.value, msg.sender);
            else:
                if block.timestamp - starttime < 504 * 24 * 3600:
                    if 3 * msg.value:
                        require 3 * msg.value
                        require 330 * msg.value / 3 * msg.value == 110
                    require inCirculation + (330 * msg.value / 10^17) <= 10^9
                    inCirculation += 330 * msg.value / 10^17
                    balanceOf[address(msg.sender)] += 330 * msg.value / 10^17
                    emit Receipt(330 * msg.value / 10^17, msg.value, msg.sender);
                else:
                    if block.timestamp - starttime >= 672 * 24 * 3600:
                        if 3 * msg.value:
                            require 3 * msg.value
                            require 300 * msg.value / 3 * msg.value == 100
                        require inCirculation + (300 * msg.value / 10^17) <= 10^9
                        inCirculation += 300 * msg.value / 10^17
                        balanceOf[address(msg.sender)] += 300 * msg.value / 10^17
                        emit Receipt(300 * msg.value / 10^17, msg.value, msg.sender);
                    else:
                        if 3 * msg.value:
                            require 3 * msg.value
                            require 315 * msg.value / 3 * msg.value == 105
                        require inCirculation + (315 * msg.value / 10^17) <= 10^9
                        inCirculation += 315 * msg.value / 10^17
                        balanceOf[address(msg.sender)] += 315 * msg.value / 10^17
                        emit Receipt(315 * msg.value / 10^17, msg.value, msg.sender);
}

function _fallback() payable {
    require block.timestamp - starttime < 744 * 24 * 3600
    require msg.value >= 10^17
    if msg.value:
        require msg.value
        require 3 * msg.value / msg.value == 3
    if block.timestamp - starttime < 24 * 3600:
        if 3 * msg.value:
            require 3 * msg.value
            require 375 * msg.value / 3 * msg.value == 125
        require inCirculation + (375 * msg.value / 10^17) <= 10^9
        inCirculation += 375 * msg.value / 10^17
        balanceOf[address(msg.sender)] += 375 * msg.value / 10^17
        emit Receipt(375 * msg.value / 10^17, msg.value, msg.sender);
    else:
        if block.timestamp - starttime < 168 * 24 * 3600:
            if 3 * msg.value:
                require 3 * msg.value
                require 360 * msg.value / 3 * msg.value == 120
            require inCirculation + (360 * msg.value / 10^17) <= 10^9
            inCirculation += 360 * msg.value / 10^17
            balanceOf[address(msg.sender)] += 360 * msg.value / 10^17
            emit Receipt(360 * msg.value / 10^17, msg.value, msg.sender);
        else:
            if block.timestamp - starttime < 336 * 24 * 3600:
                if 3 * msg.value:
                    require 3 * msg.value
                    require 345 * msg.value / 3 * msg.value == 115
                require inCirculation + (345 * msg.value / 10^17) <= 10^9
                inCirculation += 345 * msg.value / 10^17
                balanceOf[address(msg.sender)] += 345 * msg.value / 10^17
                emit Receipt(345 * msg.value / 10^17, msg.value, msg.sender);
            else:
                if block.timestamp - starttime < 504 * 24 * 3600:
                    if 3 * msg.value:
                        require 3 * msg.value
                        require 330 * msg.value / 3 * msg.value == 110
                    require inCirculation + (330 * msg.value / 10^17) <= 10^9
                    inCirculation += 330 * msg.value / 10^17
                    balanceOf[address(msg.sender)] += 330 * msg.value / 10^17
                    emit Receipt(330 * msg.value / 10^17, msg.value, msg.sender);
                else:
                    if block.timestamp - starttime >= 672 * 24 * 3600:
                        if 3 * msg.value:
                            require 3 * msg.value
                            require 300 * msg.value / 3 * msg.value == 100
                        require inCirculation + (300 * msg.value / 10^17) <= 10^9
                        inCirculation += 300 * msg.value / 10^17
                        balanceOf[address(msg.sender)] += 300 * msg.value / 10^17
                        emit Receipt(300 * msg.value / 10^17, msg.value, msg.sender);
                    else:
                        if 3 * msg.value:
                            require 3 * msg.value
                            require 315 * msg.value / 3 * msg.value == 105
                        require inCirculation + (315 * msg.value / 10^17) <= 10^9
                        inCirculation += 315 * msg.value / 10^17
                        balanceOf[address(msg.sender)] += 315 * msg.value / 10^17
                        emit Receipt(315 * msg.value / 10^17, msg.value, msg.sender);
}



}
