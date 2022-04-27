contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;
uint16 stor2;
address stor2; offset 16

function _fallback() payable {
    stor0 = 0
    stor1 = 100
    uint16(stor2.field_0) = 0
    address(stor2.field_16) = msg.sender
    require address(stor2.field_16) == msg.sender
    uint8(stor2.field_0) = 1
    emit ContractEnabled()
    return code.data[178 len 4120]
}



// =====================  Runtime code  =====================


const name = 'Bituber'

const decimals = 18

const symbol = 'BTBR'


uint256 _totalSupply;
uint256 price;
uint8 stor2;
uint8 stor2; offset 8
address owner; offset 16
address stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    require 1 == bool(uint8(stor2.field_0))
    return _totalSupply
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    require 1 == bool(uint8(stor2.field_0))
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function getPrice() {
    return price
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    require owner == msg.sender
    require not uint8(stor2.field_0)
    selfdestruct(owner)
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
}

function contractState() {
    if not uint8(stor2.field_0):
        return 'Stopped'
    return 'Working'
}

function transferState() {
    if not uint8(stor2.field_8):
        return 'Stopped'
    return 'Working'
}

function enableContract() {
    require owner == msg.sender
    uint8(stor2.field_0) = 1
    emit ContractEnabled()
}

function enableTransfer() {
    require owner == msg.sender
    uint8(stor2.field_8) = 1
    emit TransferEnabled()
}

function disableContract() {
    require owner == msg.sender
    uint8(stor2.field_0) = 0
    emit ContractDisabled()
}

function disableTransfer() {
    require owner == msg.sender
    uint8(stor2.field_8) = 0
    emit TransferDisabled()
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setCurrentCoin(address arg1) {
    require owner == msg.sender
    require 1 == bool(uint8(stor2.field_0))
    stor3 = arg1
    emit CurrentCoin(arg1);
}

function _fallback() payable {
    require 1 == bool(uint8(stor2.field_0))
    call stor3 with:
       funct Mask(32, 224, sha3('pay(address,uint256,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args msg.sender, msg.value, price
}

function transfer(address arg1, uint256 arg2) {
    require 1 == bool(uint8(stor2.field_0))
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    if this.address != msg.sender:
        if arg1 != this.address:
            if bool(uint8(stor2.field_8)) != 1:
                return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 1 == bool(uint8(stor2.field_0))
    if stor3 == msg.sender:
        allowance[address(arg1)][address(msg.sender)] = arg3
    else:
        if owner == msg.sender:
            allowance[address(arg1)][address(msg.sender)] = arg3
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    if arg1 != this.address:
        if arg2 != this.address:
            if bool(uint8(stor2.field_8)) != 1:
                return 0
    balanceOf[address(msg.sender)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refund(address arg1, uint256 arg2, uint256 arg3) {
    require 1 == bool(uint8(stor2.field_0))
    if owner != msg.sender:
        require stor3 == msg.sender
    require 1 == bool(uint8(stor2.field_0))
    if stor3 == msg.sender:
        allowance[address(arg1)][address(msg.sender)] = arg3
    else:
        if owner == msg.sender:
            allowance[address(arg1)][address(msg.sender)] = arg3
    if balanceOf[address(arg1)] >= arg3:
        if allowance[address(arg1)][address(msg.sender)] >= arg3:
            if arg3 > 0:
                if balanceOf[address(this.address)] + arg3 > balanceOf[address(this.address)]:
                    if arg1 == this.address:
                        balanceOf[address(msg.sender)] -= arg3
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        balanceOf[address(this.address)] += arg3
                        emit Transfer(arg3, arg1, this.address);
                    else:
                        if this.address == this.address:
                            balanceOf[address(msg.sender)] -= arg3
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            balanceOf[address(this.address)] += arg3
                            emit Transfer(arg3, arg1, this.address);
                        else:
                            if 1 == bool(uint8(stor2.field_8)):
                                balanceOf[address(msg.sender)] -= arg3
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                balanceOf[address(this.address)] += arg3
                                emit Transfer(arg3, arg1, this.address);
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refund(address(arg1), arg2);
}

function generateTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor3 == msg.sender
    require 1 == bool(uint8(stor2.field_0))
    if arg1 == this.address:
        balanceOf[address(this.address)] += arg2
        _totalSupply += arg2
    else:
        require 1 == bool(uint8(stor2.field_0))
        if balanceOf[address(this.address)] >= arg2:
            if stor3 == msg.sender:
                allowance[address(this.address)][address(msg.sender)] = arg2
                if balanceOf[address(this.address)] >= arg2:
                    if allowance[address(this.address)][address(msg.sender)] >= arg2:
                        if arg2 > 0:
                            if balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]:
                                if this.address == this.address:
                                    balanceOf[address(msg.sender)] -= arg2
                                    allowance[address(this.address)][address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, this.address, arg1);
                                else:
                                    if arg1 == this.address:
                                        balanceOf[address(msg.sender)] -= arg2
                                        allowance[address(this.address)][address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, this.address, arg1);
                                    else:
                                        if 1 == bool(uint8(stor2.field_8)):
                                            balanceOf[address(msg.sender)] -= arg2
                                            allowance[address(this.address)][address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, this.address, arg1);
            else:
                if owner == msg.sender:
                    allowance[address(this.address)][address(msg.sender)] = arg2
                if balanceOf[address(this.address)] >= arg2:
                    if allowance[address(this.address)][address(msg.sender)] >= arg2:
                        if arg2 > 0:
                            if balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]:
                                if this.address == this.address:
                                    balanceOf[address(msg.sender)] -= arg2
                                    allowance[address(this.address)][address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, this.address, arg1);
                                else:
                                    if arg1 == this.address:
                                        balanceOf[address(msg.sender)] -= arg2
                                        allowance[address(this.address)][address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, this.address, arg1);
                                    else:
                                        if 1 == bool(uint8(stor2.field_8)):
                                            balanceOf[address(msg.sender)] -= arg2
                                            allowance[address(this.address)][address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, this.address, arg1);
        else:
            if stor3 == msg.sender:
                allowance[address(this.address)][address(msg.sender)] = balanceOf[address(this.address)]
                if balanceOf[address(this.address)] >= balanceOf[address(this.address)]:
                    if allowance[address(this.address)][address(msg.sender)] >= balanceOf[address(this.address)]:
                        if balanceOf[address(this.address)] > 0:
                            if balanceOf[address(arg1)] + balanceOf[address(this.address)] > balanceOf[address(arg1)]:
                                if this.address == this.address:
                                    balanceOf[address(msg.sender)] -= balanceOf[address(this.address)]
                                    allowance[address(this.address)][address(msg.sender)] -= balanceOf[address(this.address)]
                                    balanceOf[address(arg1)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, arg1);
                                else:
                                    if arg1 == this.address:
                                        balanceOf[address(msg.sender)] -= balanceOf[address(this.address)]
                                        allowance[address(this.address)][address(msg.sender)] -= balanceOf[address(this.address)]
                                        balanceOf[address(arg1)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, arg1);
                                    else:
                                        if 1 == bool(uint8(stor2.field_8)):
                                            balanceOf[address(msg.sender)] -= balanceOf[address(this.address)]
                                            allowance[address(this.address)][address(msg.sender)] -= balanceOf[address(this.address)]
                                            balanceOf[address(arg1)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, arg1);
            else:
                if owner == msg.sender:
                    allowance[address(this.address)][address(msg.sender)] = balanceOf[address(this.address)]
                if balanceOf[address(this.address)] >= balanceOf[address(this.address)]:
                    if allowance[address(this.address)][address(msg.sender)] >= balanceOf[address(this.address)]:
                        if balanceOf[address(this.address)] > 0:
                            if balanceOf[address(arg1)] + balanceOf[address(this.address)] > balanceOf[address(arg1)]:
                                if this.address == this.address:
                                    balanceOf[address(msg.sender)] -= balanceOf[address(this.address)]
                                    allowance[address(this.address)][address(msg.sender)] -= balanceOf[address(this.address)]
                                    balanceOf[address(arg1)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, arg1);
                                else:
                                    if arg1 == this.address:
                                        balanceOf[address(msg.sender)] -= balanceOf[address(this.address)]
                                        allowance[address(this.address)][address(msg.sender)] -= balanceOf[address(this.address)]
                                        balanceOf[address(arg1)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, arg1);
                                    else:
                                        if 1 == bool(uint8(stor2.field_8)):
                                            balanceOf[address(msg.sender)] -= balanceOf[address(this.address)]
                                            allowance[address(this.address)][address(msg.sender)] -= balanceOf[address(this.address)]
                                            balanceOf[address(arg1)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, arg1);
            _totalSupply = arg2 - balanceOf[address(this.address)] + _totalSupply
            balanceOf[address(arg1)] = arg2 - balanceOf[address(this.address)] + balanceOf[address(arg1)]
    emit TokensSent(address(arg1), arg2);
}



}
