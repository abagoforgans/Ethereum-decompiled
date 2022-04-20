contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;
uint16 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    require not msg.value
    if code.data[3995 len 32] <= 0:
        stor0 = 10^6
    else:
        stor0 = code.data[3995 len 32]
    stor1 = msg.sender
    stor2[address(this.address)] = stor0
    return code.data[162 len 3833]
}



// =====================  Runtime code  =====================


const name = 'AssetBase Security Tokens'

const decimals = 0

const symbol = 'ABST'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor4;
uint8 stor4; offset 8
uint256 sub_9bda7d2c;
uint256 sub_e4a6bc9f;
uint256 sub_e08053da;
mapping of struct stor8;
mapping of uint8 stor9;

function totalSupply() {
    return totalSupply
}

function saleStopped() {
    return bool(uint8(stor4.field_8))
}

function saleActive() {
    return bool(uint8(stor4.field_0))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_9bda7d2c(?) {
    return sub_9bda7d2c
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e08053da(?) {
    return sub_e08053da
}

function sub_e4a6bc9f(?) {
    return sub_e4a6bc9f
}

function sub_d13baa48(?) {
    require owner == msg.sender
    sub_e4a6bc9f = 0
    sub_e08053da = 0
}

function stopSale() {
    require owner == msg.sender
    uint8(stor4.field_0) = 0
    uint8(stor4.field_8) = 1
}

function freezeAccount(address arg1) {
    require owner == msg.sender
    stor9[address(arg1)] = 1
    emit FrozenFunds(address(arg1), 1);
}

function unfreezeAccount(address arg1) {
    require owner == msg.sender
    stor9[address(arg1)] = 0
    emit FrozenFunds(address(arg1), 0);
}

function sub_a08af7ec(?) {
    require owner == msg.sender
    return stor8[address(arg1)].field_0, stor8[address(arg1)].field_256, balanceOf[address(arg1)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_9cc2f7f6(?) {
    require owner == msg.sender
    require arg2
    require arg3
    stor8[address(arg1)].field_0 = arg2
    stor8[address(arg1)].field_256 = arg3
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_37ff16c0(?) {
    require owner == msg.sender
    uint8(stor4.field_0) = 1
    sub_e08053da = arg1
    if 0 <= balanceOf[address(this.address)]:
        sub_9bda7d2c = arg2
        sub_e4a6bc9f = arg2
    else:
        sub_9bda7d2c = balanceOf[address(this.address)]
        sub_e4a6bc9f = balanceOf[address(this.address)]
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor4.field_8):
        if owner != msg.sender:
            return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    if stor9[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor4.field_8):
        if owner != msg.sender:
            return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    if stor9[address(msg.sender)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if uint8(stor4.field_0):
        if not sub_e4a6bc9f:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if 0 <= balanceOf[address(this.address)]:
                if sub_e08053da * msg.value / 10^18 <= sub_e4a6bc9f:
                    sub_e4a6bc9f -= sub_e08053da * msg.value / 10^18
                    if sub_e08053da <= 0:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require sub_e08053da
                        if msg.value > 10^18 * sub_e08053da * msg.value / 10^18 / sub_e08053da:
                            call msg.sender with:
                               value msg.value - (10^18 * sub_e08053da * msg.value / 10^18 / sub_e08053da) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    if sub_e08053da * msg.value / 10^18 > 0:
                        balanceOf[address(msg.sender)] += sub_e08053da * msg.value / 10^18
                        balanceOf[this.address] -= sub_e08053da * msg.value / 10^18
                        emit Transfer((sub_e08053da * msg.value / 10^18), this.address, msg.sender);
                else:
                    sub_e4a6bc9f = 0
                    if sub_e08053da <= 0:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require sub_e08053da
                        if msg.value > 10^18 * sub_e4a6bc9f / sub_e08053da:
                            call msg.sender with:
                               value msg.value - (10^18 * sub_e4a6bc9f / sub_e08053da) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    if sub_e4a6bc9f > 0:
                        balanceOf[address(msg.sender)] += sub_e4a6bc9f
                        balanceOf[this.address] -= sub_e4a6bc9f
                        emit Transfer(sub_e4a6bc9f, this.address, msg.sender);
            else:
                if balanceOf[address(this.address)] <= sub_e4a6bc9f:
                    sub_e4a6bc9f -= balanceOf[address(this.address)]
                    if sub_e08053da <= 0:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require sub_e08053da
                        if msg.value > 10^18 * balanceOf[address(this.address)] / sub_e08053da:
                            call msg.sender with:
                               value msg.value - (10^18 * balanceOf[address(this.address)] / sub_e08053da) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    if balanceOf[address(this.address)] > 0:
                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                        balanceOf[this.address] -= balanceOf[address(this.address)]
                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                else:
                    sub_e4a6bc9f = 0
                    if sub_e08053da <= 0:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require sub_e08053da
                        if msg.value > 10^18 * sub_e4a6bc9f / sub_e08053da:
                            call msg.sender with:
                               value msg.value - (10^18 * sub_e4a6bc9f / sub_e08053da) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    if sub_e4a6bc9f > 0:
                        balanceOf[address(msg.sender)] += sub_e4a6bc9f
                        balanceOf[this.address] -= sub_e4a6bc9f
                        emit Transfer(sub_e4a6bc9f, this.address, msg.sender);
    else:
        if uint8(stor4.field_8):
            if not sub_e4a6bc9f:
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if 0 <= balanceOf[address(this.address)]:
                    if sub_e08053da * msg.value / 10^18 <= sub_e4a6bc9f:
                        sub_e4a6bc9f -= sub_e08053da * msg.value / 10^18
                        if sub_e08053da <= 0:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require sub_e08053da
                            if msg.value > 10^18 * sub_e08053da * msg.value / 10^18 / sub_e08053da:
                                call msg.sender with:
                                   value msg.value - (10^18 * sub_e08053da * msg.value / 10^18 / sub_e08053da) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        if sub_e08053da * msg.value / 10^18 > 0:
                            balanceOf[address(msg.sender)] += sub_e08053da * msg.value / 10^18
                            balanceOf[this.address] -= sub_e08053da * msg.value / 10^18
                            emit Transfer((sub_e08053da * msg.value / 10^18), this.address, msg.sender);
                    else:
                        sub_e4a6bc9f = 0
                        if sub_e08053da <= 0:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require sub_e08053da
                            if msg.value > 10^18 * sub_e4a6bc9f / sub_e08053da:
                                call msg.sender with:
                                   value msg.value - (10^18 * sub_e4a6bc9f / sub_e08053da) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        if sub_e4a6bc9f > 0:
                            balanceOf[address(msg.sender)] += sub_e4a6bc9f
                            balanceOf[this.address] -= sub_e4a6bc9f
                            emit Transfer(sub_e4a6bc9f, this.address, msg.sender);
                else:
                    if balanceOf[address(this.address)] <= sub_e4a6bc9f:
                        sub_e4a6bc9f -= balanceOf[address(this.address)]
                        if sub_e08053da <= 0:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require sub_e08053da
                            if msg.value > 10^18 * balanceOf[address(this.address)] / sub_e08053da:
                                call msg.sender with:
                                   value msg.value - (10^18 * balanceOf[address(this.address)] / sub_e08053da) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        if balanceOf[address(this.address)] > 0:
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            balanceOf[this.address] -= balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        sub_e4a6bc9f = 0
                        if sub_e08053da <= 0:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require sub_e08053da
                            if msg.value > 10^18 * sub_e4a6bc9f / sub_e08053da:
                                call msg.sender with:
                                   value msg.value - (10^18 * sub_e4a6bc9f / sub_e08053da) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        if sub_e4a6bc9f > 0:
                            balanceOf[address(msg.sender)] += sub_e4a6bc9f
                            balanceOf[this.address] -= sub_e4a6bc9f
                            emit Transfer(sub_e4a6bc9f, this.address, msg.sender);
        else:
            if not stor8[address(msg.sender)].field_256:
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if stor8[address(msg.sender)].field_256 <= balanceOf[address(msg.sender)]:
                    if stor8[address(msg.sender)].field_0 <= 0:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require stor8[address(msg.sender)].field_0
                        if msg.value > 0 / stor8[address(msg.sender)].field_0:
                            call msg.sender with:
                               value msg.value - (0 / stor8[address(msg.sender)].field_0) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                else:
                    if 0 <= balanceOf[address(this.address)]:
                        if stor8[address(msg.sender)].field_0 * msg.value / 10^18 <= stor8[address(msg.sender)].field_256 - balanceOf[address(msg.sender)]:
                            if stor8[address(msg.sender)].field_0 <= 0:
                                if msg.value > 0:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require stor8[address(msg.sender)].field_0
                                if msg.value > 10^18 * stor8[address(msg.sender)].field_0 * msg.value / 10^18 / stor8[address(msg.sender)].field_0:
                                    call msg.sender with:
                                       value msg.value - (10^18 * stor8[address(msg.sender)].field_0 * msg.value / 10^18 / stor8[address(msg.sender)].field_0) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            if stor8[address(msg.sender)].field_0 * msg.value / 10^18 > 0:
                                balanceOf[address(msg.sender)] += stor8[address(msg.sender)].field_0 * msg.value / 10^18
                                balanceOf[this.address] -= stor8[address(msg.sender)].field_0 * msg.value / 10^18
                                emit Transfer((stor8[address(msg.sender)].field_0 * msg.value / 10^18), this.address, msg.sender);
                        else:
                            if stor8[address(msg.sender)].field_0 <= 0:
                                if msg.value > 0:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require stor8[address(msg.sender)].field_0
                                if msg.value > (10^18 * stor8[address(msg.sender)].field_256) - (10^18 * balanceOf[address(msg.sender)]) / stor8[address(msg.sender)].field_0:
                                    call msg.sender with:
                                       value msg.value - ((10^18 * stor8[address(msg.sender)].field_256) - (10^18 * balanceOf[address(msg.sender)]) / stor8[address(msg.sender)].field_0) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            if stor8[address(msg.sender)].field_256 - balanceOf[address(msg.sender)] > 0:
                                balanceOf[address(msg.sender)] = stor8[address(msg.sender)].field_256
                                balanceOf[this.address] = balanceOf[this.address] - stor8[address(msg.sender)].field_256 + balanceOf[address(msg.sender)]
                                emit Transfer((stor8[address(msg.sender)].field_256 - balanceOf[address(msg.sender)]), this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= stor8[address(msg.sender)].field_256 - balanceOf[address(msg.sender)]:
                            if stor8[address(msg.sender)].field_0 <= 0:
                                if msg.value > 0:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require stor8[address(msg.sender)].field_0
                                if msg.value > 10^18 * balanceOf[address(this.address)] / stor8[address(msg.sender)].field_0:
                                    call msg.sender with:
                                       value msg.value - (10^18 * balanceOf[address(this.address)] / stor8[address(msg.sender)].field_0) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            if balanceOf[address(this.address)] > 0:
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                balanceOf[this.address] -= balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            if stor8[address(msg.sender)].field_0 <= 0:
                                if msg.value > 0:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require stor8[address(msg.sender)].field_0
                                if msg.value > (10^18 * stor8[address(msg.sender)].field_256) - (10^18 * balanceOf[address(msg.sender)]) / stor8[address(msg.sender)].field_0:
                                    call msg.sender with:
                                       value msg.value - ((10^18 * stor8[address(msg.sender)].field_256) - (10^18 * balanceOf[address(msg.sender)]) / stor8[address(msg.sender)].field_0) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            if stor8[address(msg.sender)].field_256 - balanceOf[address(msg.sender)] > 0:
                                balanceOf[address(msg.sender)] = stor8[address(msg.sender)].field_256
                                balanceOf[this.address] = balanceOf[this.address] - stor8[address(msg.sender)].field_256 + balanceOf[address(msg.sender)]
                                emit Transfer((stor8[address(msg.sender)].field_256 - balanceOf[address(msg.sender)]), this.address, msg.sender);
}



}
