contract main {




// =====================  Runtime code  =====================


const name = 'ga-me.io token'

const decimals = 18

const symbol = 'GAMT'


address owner;
uint256 totalSupply;
uint256 stor2;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;

function totalSupply() {
    return totalSupply
}

function airDropAccount(address arg1) {
    return bool(stor7[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function crowdSale() {
    return bool(stor3)
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor6[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    emit SelfMessage(msg.sender, owner);
    require msg.sender == owner
    stor6[address(arg1)] = uint8(arg2)
    emit FreezeAccount(address(arg1), arg2);
}

function drawEther() {
    emit SelfMessage(msg.sender, owner);
    require msg.sender == owner
    call owner with:
       value stor2 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        stor2 = 0
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor6[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function onOffCrowdSale(bool arg1) {
    emit SelfMessage(msg.sender, owner);
    require msg.sender == owner
    stor3 = uint8(arg1)
    if bool(stor3) != 0:
    if balanceOf[address(this.address)] <= 0:
    require owner
    require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
    require balanceOf[stor0] + balanceOf[address(this.address)] > balanceOf[stor0]
    balanceOf[address(this.address)] = 0
    balanceOf[stor0] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], this.address, owner);
    require balanceOf[address(this.address)] + balanceOf[stor0] == balanceOf[address(this.address)] + balanceOf[stor0]
}

function _fallback() payable {
    require stor3
    if 0 == msg.value:
        require not stor7[address(msg.sender)]
        require msg.sender
        require balanceOf[address(this.address)] >= 200 * 10^18
        require balanceOf[address(msg.sender)] + 200 * 10^18 > balanceOf[address(msg.sender)]
        balanceOf[address(this.address)] -= 200 * 10^18
        balanceOf[address(msg.sender)] += 200 * 10^18
        emit Transfer(200 * 10^18, this.address, msg.sender);
        require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
        stor7[address(msg.sender)] = 1
        emit CrowdSaleTransfer(address arg1, uint256 arg2, uint256 arg3, bool arg4):
                               msg.sender,
                               msg.value,
                               200 * 10^18,
        emit 0x1: msg.sender, msg.value, 200 * 10^18
    else:
        stor2 += msg.value
        require msg.sender
        if 0 >= msg.value:
            if 5 * 10^16 > msg.value:
                require balanceOf[address(this.address)] >= 1500 * 10^18 * msg.value / 10^15
                require balanceOf[address(msg.sender)] + (1500 * 10^18 * msg.value / 10^15) > balanceOf[address(msg.sender)]
                balanceOf[address(this.address)] += -1500 * 10^18 * msg.value / 10^15
                balanceOf[address(msg.sender)] += 1500 * 10^18 * msg.value / 10^15
                emit Transfer((1500 * 10^18 * msg.value / 10^15), this.address, msg.sender);
                require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
                emit CrowdSaleTransfer(address arg1, uint256 arg2, uint256 arg3, bool arg4):
                                       msg.sender,
                                       msg.value,
                                       1500 * 10^18 * msg.value / 10^15,
                emit 0x1: msg.sender, msg.value, 1500 * 10^18 * msg.value / 10^15
            else:
                if msg.value >= 5 * 10^17:
                    require balanceOf[address(this.address)] >= 1500 * 10^18 * msg.value / 10^15
                    require balanceOf[address(msg.sender)] + (1500 * 10^18 * msg.value / 10^15) > balanceOf[address(msg.sender)]
                    balanceOf[address(this.address)] += -1500 * 10^18 * msg.value / 10^15
                    balanceOf[address(msg.sender)] += 1500 * 10^18 * msg.value / 10^15
                    emit Transfer((1500 * 10^18 * msg.value / 10^15), this.address, msg.sender);
                    require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
                    emit CrowdSaleTransfer(address arg1, uint256 arg2, uint256 arg3, bool arg4):
                                           msg.sender,
                                           msg.value,
                                           1500 * 10^18 * msg.value / 10^15,
                    emit 0x1: msg.sender, msg.value, 1500 * 10^18 * msg.value / 10^15
                else:
                    require balanceOf[address(this.address)] >= 1250 * 10^18 * msg.value / 10^15
                    require balanceOf[address(msg.sender)] + (1250 * 10^18 * msg.value / 10^15) > balanceOf[address(msg.sender)]
                    balanceOf[address(this.address)] += -1250 * 10^18 * msg.value / 10^15
                    balanceOf[address(msg.sender)] += 1250 * 10^18 * msg.value / 10^15
                    emit Transfer((1250 * 10^18 * msg.value / 10^15), this.address, msg.sender);
                    require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
                    emit CrowdSaleTransfer(address arg1, uint256 arg2, uint256 arg3, bool arg4):
                                           msg.sender,
                                           msg.value,
                                           1250 * 10^18 * msg.value / 10^15,
                    emit 0x1: msg.sender, msg.value, 1250 * 10^18 * msg.value / 10^15
        else:
            if msg.value < 5 * 10^16:
                require balanceOf[address(this.address)] >= 1000 * 10^18 * msg.value / 10^15
                require balanceOf[address(msg.sender)] + (1000 * 10^18 * msg.value / 10^15) > balanceOf[address(msg.sender)]
                balanceOf[address(this.address)] += -1000 * 10^18 * msg.value / 10^15
                balanceOf[address(msg.sender)] += 1000 * 10^18 * msg.value / 10^15
                emit Transfer((1000 * 10^18 * msg.value / 10^15), this.address, msg.sender);
                require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
                emit CrowdSaleTransfer(address arg1, uint256 arg2, uint256 arg3, bool arg4):
                                       msg.sender,
                                       msg.value,
                                       1000 * 10^18 * msg.value / 10^15,
                emit 0x1: msg.sender, msg.value, 1000 * 10^18 * msg.value / 10^15
            else:
                if 5 * 10^16 > msg.value:
                    require balanceOf[address(this.address)] >= 1500 * 10^18 * msg.value / 10^15
                    require balanceOf[address(msg.sender)] + (1500 * 10^18 * msg.value / 10^15) > balanceOf[address(msg.sender)]
                    balanceOf[address(this.address)] += -1500 * 10^18 * msg.value / 10^15
                    balanceOf[address(msg.sender)] += 1500 * 10^18 * msg.value / 10^15
                    emit Transfer((1500 * 10^18 * msg.value / 10^15), this.address, msg.sender);
                    require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
                    emit CrowdSaleTransfer(address arg1, uint256 arg2, uint256 arg3, bool arg4):
                                           msg.sender,
                                           msg.value,
                                           1500 * 10^18 * msg.value / 10^15,
                    emit 0x1: msg.sender, msg.value, 1500 * 10^18 * msg.value / 10^15
                else:
                    if msg.value >= 5 * 10^17:
                        require balanceOf[address(this.address)] >= 1500 * 10^18 * msg.value / 10^15
                        require balanceOf[address(msg.sender)] + (1500 * 10^18 * msg.value / 10^15) > balanceOf[address(msg.sender)]
                        balanceOf[address(this.address)] += -1500 * 10^18 * msg.value / 10^15
                        balanceOf[address(msg.sender)] += 1500 * 10^18 * msg.value / 10^15
                        emit Transfer((1500 * 10^18 * msg.value / 10^15), this.address, msg.sender);
                        require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
                        emit CrowdSaleTransfer(address arg1, uint256 arg2, uint256 arg3, bool arg4):
                                               msg.sender,
                                               msg.value,
                                               1500 * 10^18 * msg.value / 10^15,
                        emit 0x1: msg.sender, msg.value, 1500 * 10^18 * msg.value / 10^15
                    else:
                        require balanceOf[address(this.address)] >= 1250 * 10^18 * msg.value / 10^15
                        require balanceOf[address(msg.sender)] + (1250 * 10^18 * msg.value / 10^15) > balanceOf[address(msg.sender)]
                        balanceOf[address(this.address)] += -1250 * 10^18 * msg.value / 10^15
                        balanceOf[address(msg.sender)] += 1250 * 10^18 * msg.value / 10^15
                        emit Transfer((1250 * 10^18 * msg.value / 10^15), this.address, msg.sender);
                        require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
                        emit CrowdSaleTransfer(address arg1, uint256 arg2, uint256 arg3, bool arg4):
                                               msg.sender,
                                               msg.value,
                                               1250 * 10^18 * msg.value / 10^15,
                        emit 0x1: msg.sender, msg.value, 1250 * 10^18 * msg.value / 10^15
}



}
