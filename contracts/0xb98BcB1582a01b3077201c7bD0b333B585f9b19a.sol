contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 tokenName;
array of uint256 tokenSymbol;
uint8 decimalUnits;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sub_adf54dea;
uint256 sub_d02c4d18;
uint256 sub_36919693;
uint256 sub_d3b5b8ea;

function totalSupply() {
    return totalSupply
}

function decimalUnits() {
    return decimalUnits
}

function sub_36919693(?) {
    return sub_36919693
}

function tokenName() {
    return tokenName[0 len tokenName.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function tokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function sub_adf54dea(?) {
    return sub_adf54dea
}

function sub_d02c4d18(?) {
    return sub_d02c4d18
}

function sub_d3b5b8ea(?) {
    return sub_d3b5b8ea
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function destroy(address arg1) {
    require msg.sender == stor0
    require arg1
    selfdestruct(arg1)
}

function _fallback() payable {
    emit EtherReceived(msg.sender, msg.value);
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function sub_46a94f02(?) {
    require msg.sender == stor0
    sub_d02c4d18 = arg1
    sub_d3b5b8ea = sub_d02c4d18 * sub_36919693
}

function sub_ef2fa3c9(?) {
    require msg.sender == stor0
    sub_36919693 = arg1
    sub_d3b5b8ea = sub_d02c4d18 * sub_36919693
}

function setMinBalance(uint256 arg1) {
    require msg.sender == stor0
    if arg1 < 200000 * block.gasprice:
        revert with 0, 'Minimal balance is too low'
    sub_adf54dea = arg1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == stor0
    require arg1
    require totalSupply + arg2 > totalSupply
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Mint(arg2, arg1);
}

function burn(uint256 arg1) {
    require msg.sender == stor0
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    require totalSupply >= 0
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == stor0
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    require totalSupply >= 0
    return 1
}

function refill(address arg1) {
    require msg.sender == stor0
    if sub_d02c4d18 > 0:
        if eth.balance(arg1) < sub_adf54dea:
            if arg1 != stor0:
                if balanceOf[address(arg1)] < sub_d3b5b8ea:
                    emit 0x119e615f: address(arg1), 0
                    return 0
                if eth.balance(this.address) < sub_d02c4d18:
                    emit 0x119e615f: address(arg1), 1
                    return 0
                call arg1 with:
                   value sub_d02c4d18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit 0x119e615f: address(arg1), 2
                    return 0
                if sub_d3b5b8ea > 0:
                    balanceOf[address(arg1)] -= sub_d3b5b8ea
                    balanceOf[stor0] += sub_d3b5b8ea
                emit Refill(address(arg1), sub_d3b5b8ea);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if sub_d02c4d18 > 0:
        if eth.balance(msg.sender) < sub_adf54dea:
            if stor0 != msg.sender:
                if balanceOf[address(msg.sender)] < sub_d3b5b8ea:
                    emit 0x119e615f: msg.sender, 0
                else:
                    if eth.balance(this.address) < sub_d02c4d18:
                        emit 0x119e615f: msg.sender, 1
                    else:
                        call msg.sender with:
                           value sub_d02c4d18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x119e615f: msg.sender, 2
                        else:
                            if sub_d3b5b8ea > 0:
                                balanceOf[address(msg.sender)] -= sub_d3b5b8ea
                                balanceOf[stor0] += sub_d3b5b8ea
                            emit Refill(msg.sender, sub_d3b5b8ea);
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_1b7b7b1c(?) {
    require msg.sender
    require stor0
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[stor0] + arg1 >= balanceOf[stor0]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[stor0] += arg1
    emit Transfer(arg1, msg.sender, stor0);
    if sub_d02c4d18 > 0:
        if eth.balance(msg.sender) < sub_adf54dea:
            if stor0 != msg.sender:
                if balanceOf[address(msg.sender)] < sub_d3b5b8ea:
                    emit 0x119e615f: msg.sender, 0
                else:
                    if eth.balance(this.address) < sub_d02c4d18:
                        emit 0x119e615f: msg.sender, 1
                    else:
                        call msg.sender with:
                           value sub_d02c4d18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x119e615f: msg.sender, 2
                        else:
                            if sub_d3b5b8ea > 0:
                                balanceOf[address(msg.sender)] -= sub_d3b5b8ea
                                balanceOf[stor0] += sub_d3b5b8ea
                            emit Refill(msg.sender, sub_d3b5b8ea);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if sub_d02c4d18 > 0:
        if eth.balance(msg.sender) < sub_adf54dea:
            if stor0 != msg.sender:
                if balanceOf[address(msg.sender)] < sub_d3b5b8ea:
                    emit 0x119e615f: msg.sender, 0
                else:
                    if eth.balance(this.address) < sub_d02c4d18:
                        emit 0x119e615f: msg.sender, 1
                    else:
                        call msg.sender with:
                           value sub_d02c4d18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x119e615f: msg.sender, 2
                        else:
                            if sub_d3b5b8ea > 0:
                                balanceOf[address(msg.sender)] -= sub_d3b5b8ea
                                balanceOf[stor0] += sub_d3b5b8ea
                            emit Refill(msg.sender, sub_d3b5b8ea);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg1
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_d1381bcc(?) {
    require msg.sender == stor0
    if balanceOf[stor0] < arg2:
        require msg.sender == stor0
        require arg1
        require totalSupply + arg2 > totalSupply
        balanceOf[address(arg1)] += arg2
        totalSupply += arg2
        emit Mint(arg2, arg1);
    else:
        require stor0
        require arg1
        require balanceOf[stor0] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[stor0] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, stor0, arg1);
    if sub_d02c4d18 > 0:
        if eth.balance(arg1) < sub_adf54dea:
            if arg1 != stor0:
                if balanceOf[address(arg1)] < sub_d3b5b8ea:
                    emit 0x119e615f: address(arg1), 0
                else:
                    if eth.balance(this.address) < sub_d02c4d18:
                        emit 0x119e615f: address(arg1), 1
                    else:
                        call arg1 with:
                           value sub_d02c4d18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x119e615f: address(arg1), 2
                        else:
                            if sub_d3b5b8ea > 0:
                                balanceOf[address(arg1)] -= sub_d3b5b8ea
                                balanceOf[stor0] += sub_d3b5b8ea
                            emit Refill(address(arg1), sub_d3b5b8ea);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if sub_d02c4d18 > 0:
        if eth.balance(arg1) >= sub_adf54dea:
            if sub_d02c4d18 > 0:
                if eth.balance(msg.sender) < sub_adf54dea:
                    if stor0 != msg.sender:
                        if balanceOf[address(msg.sender)] < sub_d3b5b8ea:
                            emit 0x119e615f: msg.sender, 0
                        else:
                            if eth.balance(this.address) < sub_d02c4d18:
                                emit 0x119e615f: msg.sender, 1
                            else:
                                call msg.sender with:
                                   value sub_d02c4d18 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit 0x119e615f: msg.sender, 2
                                else:
                                    if sub_d3b5b8ea > 0:
                                        balanceOf[address(msg.sender)] -= sub_d3b5b8ea
                                        balanceOf[stor0] += sub_d3b5b8ea
                                    emit Refill(msg.sender, sub_d3b5b8ea);
        else:
            if arg1 == stor0:
                if sub_d02c4d18 > 0:
                    if eth.balance(msg.sender) < sub_adf54dea:
                        if stor0 != msg.sender:
                            if balanceOf[address(msg.sender)] < sub_d3b5b8ea:
                                emit 0x119e615f: msg.sender, 0
                            else:
                                if eth.balance(this.address) < sub_d02c4d18:
                                    emit 0x119e615f: msg.sender, 1
                                else:
                                    call msg.sender with:
                                       value sub_d02c4d18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit 0x119e615f: msg.sender, 2
                                    else:
                                        if sub_d3b5b8ea > 0:
                                            balanceOf[address(msg.sender)] -= sub_d3b5b8ea
                                            balanceOf[stor0] += sub_d3b5b8ea
                                        emit Refill(msg.sender, sub_d3b5b8ea);
            else:
                if balanceOf[address(arg1)] < sub_d3b5b8ea:
                    emit 0x119e615f: address(arg1), 0
                    if sub_d02c4d18 > 0:
                        if eth.balance(msg.sender) < sub_adf54dea:
                            if stor0 != msg.sender:
                                if balanceOf[address(msg.sender)] < sub_d3b5b8ea:
                                    emit 0x119e615f: msg.sender, 0
                                else:
                                    if eth.balance(this.address) < sub_d02c4d18:
                                        emit 0x119e615f: msg.sender, 1
                                    else:
                                        call msg.sender with:
                                           value sub_d02c4d18 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            emit 0x119e615f: msg.sender, 2
                                        else:
                                            if sub_d3b5b8ea > 0:
                                                balanceOf[address(msg.sender)] -= sub_d3b5b8ea
                                                balanceOf[stor0] += sub_d3b5b8ea
                                            emit Refill(msg.sender, sub_d3b5b8ea);
                else:
                    if eth.balance(this.address) < sub_d02c4d18:
                        emit 0x119e615f: address(arg1), 1
                        if sub_d02c4d18 > 0:
                            if eth.balance(msg.sender) < sub_adf54dea:
                                if stor0 != msg.sender:
                                    if balanceOf[address(msg.sender)] < sub_d3b5b8ea:
                                        emit 0x119e615f: msg.sender, 0
                                    else:
                                        if eth.balance(this.address) < sub_d02c4d18:
                                            emit 0x119e615f: msg.sender, 1
                                        else:
                                            call msg.sender with:
                                               value sub_d02c4d18 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                emit 0x119e615f: msg.sender, 2
                                            else:
                                                if sub_d3b5b8ea > 0:
                                                    balanceOf[address(msg.sender)] -= sub_d3b5b8ea
                                                    balanceOf[stor0] += sub_d3b5b8ea
                                                emit Refill(msg.sender, sub_d3b5b8ea);
                    else:
                        call arg1 with:
                           value sub_d02c4d18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x119e615f: address(arg1), 2
                            if sub_d02c4d18 > 0:
                                if eth.balance(msg.sender) < sub_adf54dea:
                                    if stor0 != msg.sender:
                                        if balanceOf[address(msg.sender)] < sub_d3b5b8ea:
                                            emit 0x119e615f: msg.sender, 0
                                        else:
                                            if eth.balance(this.address) < sub_d02c4d18:
                                                emit 0x119e615f: msg.sender, 1
                                            else:
                                                call msg.sender with:
                                                   value sub_d02c4d18 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    emit 0x119e615f: msg.sender, 2
                                                else:
                                                    if sub_d3b5b8ea > 0:
                                                        balanceOf[address(msg.sender)] -= sub_d3b5b8ea
                                                        balanceOf[stor0] += sub_d3b5b8ea
                                                    emit Refill(msg.sender, sub_d3b5b8ea);
                        else:
                            if sub_d3b5b8ea > 0:
                                balanceOf[address(arg1)] -= sub_d3b5b8ea
                                balanceOf[stor0] += sub_d3b5b8ea
                            emit Refill(address(arg1), sub_d3b5b8ea);
                            if sub_d02c4d18 > 0:
                                if eth.balance(msg.sender) < sub_adf54dea:
                                    if stor0 != msg.sender:
                                        if balanceOf[address(msg.sender)] < sub_d3b5b8ea:
                                            emit 0x119e615f: msg.sender, 0
                                        else:
                                            if eth.balance(this.address) < sub_d02c4d18:
                                                emit 0x119e615f: msg.sender, 1
                                            else:
                                                call msg.sender with:
                                                   value sub_d02c4d18 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    emit 0x119e615f: msg.sender, 2
                                                else:
                                                    if sub_d3b5b8ea > 0:
                                                        balanceOf[address(msg.sender)] -= sub_d3b5b8ea
                                                        balanceOf[stor0] += sub_d3b5b8ea
                                                    emit Refill(msg.sender, sub_d3b5b8ea);
    return 1
}



}
