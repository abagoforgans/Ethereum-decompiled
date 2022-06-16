contract main {




// =====================  Runtime code  =====================


const name = 'SocialToken'

const decimals = 12

const symbol = 'SDT'

const INITIAL_SUPPLY = 3000000 * 10^18


address owner;
uint256 sub_5fd05355;
uint256 freeTokens;
uint256 stor3;
uint256 sub_4b8e287d;
uint256 sub_608f854c;
uint256 sub_a79dbf6e;
mapping of uint8 stor7;
address priceAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function sub_4b8e287d(?) {
    return sub_4b8e287d
}

function sub_5fd05355(?) {
    return sub_5fd05355
}

function sub_608f854c(?) {
    return sub_608f854c
}

function freeTokens() {
    return freeTokens
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function price() {
    return priceAddress
}

function sub_a79dbf6e(?) {
    return sub_a79dbf6e
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_25689e1f(?) {
    require msg.sender == owner
    require sub_a79dbf6e + 1 >= sub_a79dbf6e
    sub_a79dbf6e++
    require sub_5fd05355 + 10^12 >= sub_5fd05355
    sub_5fd05355 += 10^12
    emit 0xddc6f10b: sub_5fd05355
    emit 0x109b9ddd: sub_a79dbf6e, msg.sender
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_1153d668(?) {
    require ext_code.size(priceAddress)
    call priceAddress.EUR(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function getPrice() {
    require ext_code.size(priceAddress)
    call priceAddress.EUR(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_5fd05355:
        return 0
    require sub_5fd05355
    require sub_5fd05355 * ext_call.return_data[0] / sub_5fd05355 == ext_call.return_data[0]
    return (sub_5fd05355 * ext_call.return_data[0] / 10^16)
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    if bool(stor7[address(arg1)]) == 1:
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require sub_608f854c + arg2 >= sub_608f854c
        sub_608f854c += arg2
        if sub_608f854c >= 1000000 * 10^18:
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            require 1000000 * 10^18 <= sub_608f854c
            sub_608f854c -= 1000000 * 10^18
            require sub_4b8e287d + 1 >= sub_4b8e287d
            sub_4b8e287d++
        emit 0x48a66cf2: arg2, sub_608f854c, sub_4b8e287d, msg.sender, arg1
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require stor3 + 1 >= stor3
        stor3++
        require sub_5fd05355 + 10^12 >= sub_5fd05355
        sub_5fd05355 += 10^12
        emit 0xddc6f10b: sub_5fd05355
        stor7[address(arg1)] = 1
        emit 0x721da55c: stor3, arg1
        require arg2 + freeTokens >= arg2
        require balanceOf[address(arg1)] + arg2 + freeTokens >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 + freeTokens
        require sub_608f854c + arg2 + freeTokens >= sub_608f854c
        sub_608f854c = sub_608f854c + arg2 + freeTokens
        if sub_608f854c >= 1000000 * 10^18:
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            require 1000000 * 10^18 <= sub_608f854c
            sub_608f854c -= 1000000 * 10^18
            require sub_4b8e287d + 1 >= sub_4b8e287d
            sub_4b8e287d++
        emit 0x48a66cf2: arg2 + freeTokens, sub_608f854c, sub_4b8e287d, msg.sender, arg1
        emit Transfer((arg2 + freeTokens), msg.sender, arg1);
    return 1
}

function get(uint256 arg1) {
    require msg.sender == owner
    require msg.sender
    require balanceOf[address(this.address)] >= arg1
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg1
    if bool(stor7[address(msg.sender)]) == 1:
        require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += arg1
        require sub_608f854c + arg1 >= sub_608f854c
        sub_608f854c += arg1
        if sub_608f854c >= 1000000 * 10^18:
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            require 1000000 * 10^18 <= sub_608f854c
            sub_608f854c -= 1000000 * 10^18
            require sub_4b8e287d + 1 >= sub_4b8e287d
            sub_4b8e287d++
        emit 0x48a66cf2: arg1, sub_608f854c, sub_4b8e287d, this.address, msg.sender
        emit Transfer(arg1, this.address, msg.sender);
    else:
        require stor3 + 1 >= stor3
        stor3++
        require sub_5fd05355 + 10^12 >= sub_5fd05355
        sub_5fd05355 += 10^12
        emit 0xddc6f10b: sub_5fd05355
        stor7[address(msg.sender)] = 1
        emit 0x721da55c: stor3, msg.sender
        require arg1 + freeTokens >= arg1
        require balanceOf[address(msg.sender)] + arg1 + freeTokens >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 + freeTokens
        require sub_608f854c + arg1 + freeTokens >= sub_608f854c
        sub_608f854c = sub_608f854c + arg1 + freeTokens
        if sub_608f854c >= 1000000 * 10^18:
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            require 1000000 * 10^18 <= sub_608f854c
            sub_608f854c -= 1000000 * 10^18
            require sub_4b8e287d + 1 >= sub_4b8e287d
            sub_4b8e287d++
        emit 0x48a66cf2: arg1 + freeTokens, sub_608f854c, sub_4b8e287d, this.address, msg.sender
        emit Transfer((arg1 + freeTokens), this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if bool(stor7[address(arg2)]) == 1:
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        require sub_608f854c + arg3 >= sub_608f854c
        sub_608f854c += arg3
        if sub_608f854c >= 1000000 * 10^18:
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            require 1000000 * 10^18 <= sub_608f854c
            sub_608f854c -= 1000000 * 10^18
            require sub_4b8e287d + 1 >= sub_4b8e287d
            sub_4b8e287d++
        emit 0x48a66cf2: arg3, sub_608f854c, sub_4b8e287d, arg1, arg2
        emit Transfer(arg3, arg1, arg2);
    else:
        require stor3 + 1 >= stor3
        stor3++
        require sub_5fd05355 + 10^12 >= sub_5fd05355
        sub_5fd05355 += 10^12
        emit 0xddc6f10b: sub_5fd05355
        stor7[address(arg2)] = 1
        emit 0x721da55c: stor3, arg2
        require arg3 + freeTokens >= arg3
        require balanceOf[address(arg2)] + arg3 + freeTokens >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 + freeTokens
        require arg3 + freeTokens <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 - freeTokens
        require sub_608f854c + arg3 + freeTokens >= sub_608f854c
        sub_608f854c = sub_608f854c + arg3 + freeTokens
        if sub_608f854c >= 1000000 * 10^18:
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            require 1000000 * 10^18 <= sub_608f854c
            sub_608f854c -= 1000000 * 10^18
            require sub_4b8e287d + 1 >= sub_4b8e287d
            sub_4b8e287d++
        emit 0x48a66cf2: arg3 + freeTokens, sub_608f854c, sub_4b8e287d, arg1, arg2
        emit Transfer((arg3 + freeTokens), arg1, arg2);
    return 1
}

function registerUser(address arg1) {
    if bool(stor7[address(arg1)]) != 1:
        require arg1
        require balanceOf[address(msg.sender)] >= freeTokens
        require balanceOf[address(arg1)] + freeTokens >= balanceOf[address(arg1)]
        require freeTokens <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= freeTokens
        if bool(stor7[address(arg1)]) == 1:
            require balanceOf[address(arg1)] + freeTokens >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += freeTokens
            require sub_608f854c + freeTokens >= sub_608f854c
            sub_608f854c += freeTokens
            if sub_608f854c >= 1000000 * 10^18:
                require sub_5fd05355 + 10^12 >= sub_5fd05355
                sub_5fd05355 += 10^12
                emit 0xddc6f10b: sub_5fd05355
                require 1000000 * 10^18 <= sub_608f854c
                sub_608f854c -= 1000000 * 10^18
                require sub_4b8e287d + 1 >= sub_4b8e287d
                sub_4b8e287d++
            emit 0x48a66cf2: freeTokens, sub_608f854c, sub_4b8e287d, msg.sender, arg1
            emit Transfer(freeTokens, msg.sender, arg1);
        else:
            require stor3 + 1 >= stor3
            stor3++
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            stor7[address(arg1)] = 1
            emit 0x721da55c: stor3, arg1
            require 2 * freeTokens >= freeTokens
            require balanceOf[address(arg1)] + (2 * freeTokens) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 2 * freeTokens
            require sub_608f854c + (2 * freeTokens) >= sub_608f854c
            sub_608f854c += 2 * freeTokens
            if sub_608f854c >= 1000000 * 10^18:
                require sub_5fd05355 + 10^12 >= sub_5fd05355
                sub_5fd05355 += 10^12
                emit 0xddc6f10b: sub_5fd05355
                require 1000000 * 10^18 <= sub_608f854c
                sub_608f854c -= 1000000 * 10^18
                require sub_4b8e287d + 1 >= sub_4b8e287d
                sub_4b8e287d++
            emit 0x48a66cf2: 2 * freeTokens, sub_608f854c, sub_4b8e287d, msg.sender, arg1
            emit Transfer((2 * freeTokens), msg.sender, arg1);
        require stor3 + 1 >= stor3
        stor3++
        require sub_5fd05355 + 10^12 >= sub_5fd05355
        sub_5fd05355 += 10^12
        emit 0xddc6f10b: sub_5fd05355
        stor7[address(arg1)] = 1
        emit 0x721da55c: stor3, arg1
}

function buy() payable {
    require ext_code.size(priceAddress)
    call priceAddress.EUR(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5fd05355
    require sub_5fd05355
    require sub_5fd05355 * ext_call.return_data[0] / sub_5fd05355 == ext_call.return_data[0]
    require sub_5fd05355 * ext_call.return_data[0] / 10^16
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16
    require balanceOf[address(msg.sender)] + (msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16) >= balanceOf[address(msg.sender)]
    require msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16
    if bool(stor7[address(msg.sender)]) == 1:
        require balanceOf[address(msg.sender)] + (msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16
        require sub_608f854c + (msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16) >= sub_608f854c
        sub_608f854c += msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16
        if sub_608f854c >= 1000000 * 10^18:
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            require 1000000 * 10^18 <= sub_608f854c
            sub_608f854c -= 1000000 * 10^18
            require sub_4b8e287d + 1 >= sub_4b8e287d
            sub_4b8e287d++
        emit 0x48a66cf2: msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16, sub_608f854c, sub_4b8e287d, this.address, msg.sender
        emit Transfer((msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16), this.address, msg.sender);
    else:
        require stor3 + 1 >= stor3
        stor3++
        require sub_5fd05355 + 10^12 >= sub_5fd05355
        sub_5fd05355 += 10^12
        emit 0xddc6f10b: sub_5fd05355
        stor7[address(msg.sender)] = 1
        emit 0x721da55c: stor3, msg.sender
        require (msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16) + freeTokens >= msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16
        require balanceOf[address(msg.sender)] + (msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16) + freeTokens >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16) + freeTokens
        require sub_608f854c + (msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16) + freeTokens >= sub_608f854c
        sub_608f854c = sub_608f854c + (msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16) + freeTokens
        if sub_608f854c >= 1000000 * 10^18:
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            require 1000000 * 10^18 <= sub_608f854c
            sub_608f854c -= 1000000 * 10^18
            require sub_4b8e287d + 1 >= sub_4b8e287d
            sub_4b8e287d++
        emit 0x48a66cf2: (msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16) + freeTokens, sub_608f854c, sub_4b8e287d, this.address, msg.sender
        emit Transfer(((msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16) + freeTokens), this.address, msg.sender);
    emit Buy(msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16, sub_5fd05355 * ext_call.return_data[0] / 10^16, msg.sender);
    return (msg.value / sub_5fd05355 * ext_call.return_data[0] / 10^16)
}

function sell(uint256 arg1) payable {
    require ext_code.size(priceAddress)
    call priceAddress.EUR(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_5fd05355:
        call msg.sender with:
             gas 2300 wei
        require ext_call.success
        require this.address
        require balanceOf[address(msg.sender)] >= arg1
        require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        if bool(stor7[address(this.address)]) == 1:
            require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += arg1
            require sub_608f854c + arg1 >= sub_608f854c
            sub_608f854c += arg1
            if sub_608f854c >= 1000000 * 10^18:
                require sub_5fd05355 + 10^12 >= sub_5fd05355
                sub_5fd05355 += 10^12
                emit 0xddc6f10b: sub_5fd05355
                require 1000000 * 10^18 <= sub_608f854c
                sub_608f854c -= 1000000 * 10^18
                require sub_4b8e287d + 1 >= sub_4b8e287d
                sub_4b8e287d++
            emit 0x48a66cf2: arg1, sub_608f854c, sub_4b8e287d, msg.sender, this.address
            emit Transfer(arg1, msg.sender, this.address);
        else:
            require stor3 + 1 >= stor3
            stor3++
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            stor7[address(this.address)] = 1
            emit 0x721da55c: stor3, this.address
            require arg1 + freeTokens >= arg1
            require balanceOf[address(this.address)] + arg1 + freeTokens >= balanceOf[address(this.address)]
            balanceOf[address(this.address)] = balanceOf[address(this.address)] + arg1 + freeTokens
            require sub_608f854c + arg1 + freeTokens >= sub_608f854c
            sub_608f854c = sub_608f854c + arg1 + freeTokens
            if sub_608f854c >= 1000000 * 10^18:
                require sub_5fd05355 + 10^12 >= sub_5fd05355
                sub_5fd05355 += 10^12
                emit 0xddc6f10b: sub_5fd05355
                require 1000000 * 10^18 <= sub_608f854c
                sub_608f854c -= 1000000 * 10^18
                require sub_4b8e287d + 1 >= sub_4b8e287d
                sub_4b8e287d++
            emit 0x48a66cf2: arg1 + freeTokens, sub_608f854c, sub_4b8e287d, msg.sender, this.address
            emit Transfer((arg1 + freeTokens), msg.sender, this.address);
        emit 0x517305ed: arg1, 0, 0, msg.sender, this.address
        return 0
    require sub_5fd05355
    require sub_5fd05355 * ext_call.return_data[0] / sub_5fd05355 == ext_call.return_data[0]
    call msg.sender with:
       value arg1 * sub_5fd05355 * ext_call.return_data[0] / 10^16 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    if bool(stor7[address(this.address)]) == 1:
        require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += arg1
        require sub_608f854c + arg1 >= sub_608f854c
        sub_608f854c += arg1
        if sub_608f854c >= 1000000 * 10^18:
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            require 1000000 * 10^18 <= sub_608f854c
            sub_608f854c -= 1000000 * 10^18
            require sub_4b8e287d + 1 >= sub_4b8e287d
            sub_4b8e287d++
        emit 0x48a66cf2: arg1, sub_608f854c, sub_4b8e287d, msg.sender, this.address
        emit Transfer(arg1, msg.sender, this.address);
    else:
        require stor3 + 1 >= stor3
        stor3++
        require sub_5fd05355 + 10^12 >= sub_5fd05355
        sub_5fd05355 += 10^12
        emit 0xddc6f10b: sub_5fd05355
        stor7[address(this.address)] = 1
        emit 0x721da55c: stor3, this.address
        require arg1 + freeTokens >= arg1
        require balanceOf[address(this.address)] + arg1 + freeTokens >= balanceOf[address(this.address)]
        balanceOf[address(this.address)] = balanceOf[address(this.address)] + arg1 + freeTokens
        require sub_608f854c + arg1 + freeTokens >= sub_608f854c
        sub_608f854c = sub_608f854c + arg1 + freeTokens
        if sub_608f854c >= 1000000 * 10^18:
            require sub_5fd05355 + 10^12 >= sub_5fd05355
            sub_5fd05355 += 10^12
            emit 0xddc6f10b: sub_5fd05355
            require 1000000 * 10^18 <= sub_608f854c
            sub_608f854c -= 1000000 * 10^18
            require sub_4b8e287d + 1 >= sub_4b8e287d
            sub_4b8e287d++
        emit 0x48a66cf2: arg1 + freeTokens, sub_608f854c, sub_4b8e287d, msg.sender, this.address
        emit Transfer((arg1 + freeTokens), msg.sender, this.address);
    emit 0x517305ed: arg1, arg1 * sub_5fd05355 * ext_call.return_data[0] / 10^16, sub_5fd05355 * ext_call.return_data[0] / 10^16, msg.sender, this.address
    return (arg1 * sub_5fd05355 * ext_call.return_data[0] / 10^16)
}



}
