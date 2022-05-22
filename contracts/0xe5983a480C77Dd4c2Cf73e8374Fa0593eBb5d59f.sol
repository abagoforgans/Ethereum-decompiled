contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function owner() {
    return owner
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ethBalanceOf(address arg1) {
    if not stor2[address(arg1)]:
        return 0
    require stor1[address(arg1)] * stor2[address(arg1)] / stor2[address(arg1)] == stor1[address(arg1)]
    if not stor1[address(arg1)] * stor2[address(arg1)]:
        return 0
    require stor5 * stor1[address(arg1)] * stor2[address(arg1)] / stor1[address(arg1)] * stor2[address(arg1)] == stor5
    return (stor5 * stor1[address(arg1)] * stor2[address(arg1)] / 100000000000000000000000000 * 10^18)
}

function withdrawAll() {
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'user cant call withdraw, when holds nothing'
    require stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor2[address(msg.sender)] == stor1[address(msg.sender)]
    if not stor1[address(msg.sender)] * stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'user cant call withdraw, when holds nothing'
    require stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor1[address(msg.sender)] * stor2[address(msg.sender)] == stor5
    if stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'user cant call withdraw, when holds nothing'
    call msg.sender with:
       value stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[address(msg.sender)] = 0
    require stor5
    stor1[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor5
    emit onWithdraw(stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18, eth.balance(this.address), block.timestamp, msg.sender);
}

function withdraw(uint256 arg1) {
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'user cant spam transactions with 0 value'
    if not stor2[address(msg.sender)]:
        if arg1 > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'user cant withdraw more then he holds '
    else:
        require stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor2[address(msg.sender)] == stor1[address(msg.sender)]
        if not stor1[address(msg.sender)] * stor2[address(msg.sender)]:
            if arg1 > 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'user cant withdraw more then he holds '
        else:
            require stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor1[address(msg.sender)] * stor2[address(msg.sender)] == stor5
            if arg1 > stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'user cant withdraw more then he holds '
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor2[address(msg.sender)]:
        require arg1 <= 0
        stor2[address(msg.sender)] = -arg1
    else:
        require stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor2[address(msg.sender)] == stor1[address(msg.sender)]
        if not stor1[address(msg.sender)] * stor2[address(msg.sender)]:
            require arg1 <= 0
            stor2[address(msg.sender)] = -arg1
        else:
            require stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor1[address(msg.sender)] * stor2[address(msg.sender)] == stor5
            require arg1 <= stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18
            stor2[address(msg.sender)] = (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18) - arg1
    require stor5
    stor1[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor5
    emit onWithdraw(arg1, eth.balance(this.address), block.timestamp, msg.sender);
}

function buy() payable {
    if msg.value < stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'should be more the 0.0001 ether sent'
    require msg.value <= eth.balance(this.address)
    if not eth.balance(this.address) - msg.value:
        if not stor2[address(msg.sender)]:
            require msg.value >= 0
            require 0 <= msg.value
            stor2[address(msg.sender)] = msg.value
        else:
            require stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor2[address(msg.sender)] == stor1[address(msg.sender)]
            if not stor1[address(msg.sender)] * stor2[address(msg.sender)]:
                require msg.value >= 0
                require 0 <= msg.value
                stor2[address(msg.sender)] = msg.value
            else:
                require stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor1[address(msg.sender)] * stor2[address(msg.sender)] == stor5
                require msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18) >= stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18
                require 0 <= msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18)
                stor2[address(msg.sender)] = msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18)
        require stor5
        stor1[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor5
        emit onPurchase(msg.value, eth.balance(this.address), 0, block.timestamp, msg.sender);
    else:
        if not msg.value:
            if stor5:
                require not 0 / stor5
            require eth.balance(this.address) - msg.value
            require (0 / eth.balance(this.address) - msg.value) + stor5 >= stor5
            stor5 += 0 / eth.balance(this.address) - msg.value
            if not stor2[address(msg.sender)]:
                require msg.value >= 0
                require 0 <= msg.value
                stor2[address(msg.sender)] = msg.value
            else:
                require stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor2[address(msg.sender)] == stor1[address(msg.sender)]
                if not stor1[address(msg.sender)] * stor2[address(msg.sender)]:
                    require msg.value >= 0
                    require 0 <= msg.value
                    stor2[address(msg.sender)] = msg.value
                else:
                    require stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor1[address(msg.sender)] * stor2[address(msg.sender)] == stor5
                    require msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18) >= stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18
                    require 0 <= msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18)
                    stor2[address(msg.sender)] = msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18)
            require stor5
            stor1[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor5
            emit onPurchase(msg.value, eth.balance(this.address), 0, block.timestamp, msg.sender);
        else:
            require stor4 * msg.value / msg.value == stor4
            if not stor5:
                require eth.balance(this.address) - msg.value
                require (0 / eth.balance(this.address) - msg.value) + stor5 >= stor5
                stor5 += 0 / eth.balance(this.address) - msg.value
            else:
                require stor4 * msg.value / 100 * stor5 / stor5 == stor4 * msg.value / 100
                require eth.balance(this.address) - msg.value
                require (stor4 * msg.value / 100 * stor5 / eth.balance(this.address) - msg.value) + stor5 >= stor5
                stor5 += stor4 * msg.value / 100 * stor5 / eth.balance(this.address) - msg.value
            if not stor2[address(msg.sender)]:
                require msg.value >= 0
                require stor4 * msg.value / 100 <= msg.value
                stor2[address(msg.sender)] = msg.value - (stor4 * msg.value / 100)
            else:
                require stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor2[address(msg.sender)] == stor1[address(msg.sender)]
                if not stor1[address(msg.sender)] * stor2[address(msg.sender)]:
                    require msg.value >= 0
                    require stor4 * msg.value / 100 <= msg.value
                    stor2[address(msg.sender)] = msg.value - (stor4 * msg.value / 100)
                else:
                    require stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor1[address(msg.sender)] * stor2[address(msg.sender)] == stor5
                    require msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18) >= stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18
                    require stor4 * msg.value / 100 <= msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18)
                    stor2[address(msg.sender)] = msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18) - (stor4 * msg.value / 100)
            require stor5
            stor1[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor5
            emit onPurchase(msg.value, eth.balance(this.address), stor4 * msg.value / 100, block.timestamp, msg.sender);
}

function _fallback() payable {
    if msg.value < stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'should be more the 0.0001 ether sent'
    require msg.value <= eth.balance(this.address)
    if not eth.balance(this.address) - msg.value:
        if not stor2[address(msg.sender)]:
            require msg.value >= 0
            require 0 <= msg.value
            stor2[address(msg.sender)] = msg.value
        else:
            require stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor2[address(msg.sender)] == stor1[address(msg.sender)]
            if not stor1[address(msg.sender)] * stor2[address(msg.sender)]:
                require msg.value >= 0
                require 0 <= msg.value
                stor2[address(msg.sender)] = msg.value
            else:
                require stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor1[address(msg.sender)] * stor2[address(msg.sender)] == stor5
                require msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18) >= stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18
                require 0 <= msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18)
                stor2[address(msg.sender)] = msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18)
        require stor5
        stor1[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor5
        emit onPurchase(msg.value, eth.balance(this.address), 0, block.timestamp, msg.sender);
    else:
        if not msg.value:
            if stor5:
                require not 0 / stor5
            require eth.balance(this.address) - msg.value
            require (0 / eth.balance(this.address) - msg.value) + stor5 >= stor5
            stor5 += 0 / eth.balance(this.address) - msg.value
            if not stor2[address(msg.sender)]:
                require msg.value >= 0
                require 0 <= msg.value
                stor2[address(msg.sender)] = msg.value
            else:
                require stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor2[address(msg.sender)] == stor1[address(msg.sender)]
                if not stor1[address(msg.sender)] * stor2[address(msg.sender)]:
                    require msg.value >= 0
                    require 0 <= msg.value
                    stor2[address(msg.sender)] = msg.value
                else:
                    require stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor1[address(msg.sender)] * stor2[address(msg.sender)] == stor5
                    require msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18) >= stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18
                    require 0 <= msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18)
                    stor2[address(msg.sender)] = msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18)
            require stor5
            stor1[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor5
            emit onPurchase(msg.value, eth.balance(this.address), 0, block.timestamp, msg.sender);
        else:
            require stor4 * msg.value / msg.value == stor4
            if not stor5:
                require eth.balance(this.address) - msg.value
                require (0 / eth.balance(this.address) - msg.value) + stor5 >= stor5
                stor5 += 0 / eth.balance(this.address) - msg.value
            else:
                require stor4 * msg.value / 100 * stor5 / stor5 == stor4 * msg.value / 100
                require eth.balance(this.address) - msg.value
                require (stor4 * msg.value / 100 * stor5 / eth.balance(this.address) - msg.value) + stor5 >= stor5
                stor5 += stor4 * msg.value / 100 * stor5 / eth.balance(this.address) - msg.value
            if not stor2[address(msg.sender)]:
                require msg.value >= 0
                require stor4 * msg.value / 100 <= msg.value
                stor2[address(msg.sender)] = msg.value - (stor4 * msg.value / 100)
            else:
                require stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor2[address(msg.sender)] == stor1[address(msg.sender)]
                if not stor1[address(msg.sender)] * stor2[address(msg.sender)]:
                    require msg.value >= 0
                    require stor4 * msg.value / 100 <= msg.value
                    stor2[address(msg.sender)] = msg.value - (stor4 * msg.value / 100)
                else:
                    require stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / stor1[address(msg.sender)] * stor2[address(msg.sender)] == stor5
                    require msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18) >= stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18
                    require stor4 * msg.value / 100 <= msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18)
                    stor2[address(msg.sender)] = msg.value + (stor5 * stor1[address(msg.sender)] * stor2[address(msg.sender)] / 100000000000000000000000000 * 10^18) - (stor4 * msg.value / 100)
            require stor5
            stor1[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor5
            emit onPurchase(msg.value, eth.balance(this.address), stor4 * msg.value / 100, block.timestamp, msg.sender);
}



}
