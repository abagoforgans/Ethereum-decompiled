contract main {




// =====================  Runtime code  =====================


const ETH = 0


address tradeExecutorAddress;
address stor1;
address stor2;

function tradeExecutor() {
    return tradeExecutorAddress
}

function destroyContract() {
    if stor1 != msg.sender:
        revert with 0, 'Ubot ERR: onlyOwner'
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function setExecutor(address arg1) {
    if stor1 != msg.sender:
        revert with 0, 'Ubot ERR: onlyOwner'
    stor2 = arg1
}

function sub_5767c659(?) {
    if stor1 != msg.sender:
        revert with 0, 'Ubot ERR: onlyOwner'
    tradeExecutorAddress = arg1
}

function withdraw(uint256 arg1) {
    if stor1 != msg.sender:
        revert with 0, 'Ubot ERR: onlyOwner'
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    if stor1 != msg.sender:
        revert with 0, 'Ubot ERR: onlyOwner'
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function storeGas(uint256 arg1) {
    if stor1 != msg.sender:
        revert with 0, 'Ubot ERR: onlyOwner'
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    call 0x0000000000b3f879cb30fe243b4dfee438691c04.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, bool arg2) {
    if stor1 != msg.sender:
        revert with 0, 'Ubot ERR: onlyOwner'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg2:
    else:
        require return_data.size >= 32
}

function sub_26cc8311(?) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'Ubot ERR: onlyOwnerAndExecutor'
    if gas_remaining >= 27710:
        if arg1 <= gas_remaining - 27710 / 7020:
            if arg1 > 0:
                require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                call 0x0000000000b3f879cb30fe243b4dfee438691c04.freeUpTo(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            if gas_remaining - 27710 / 7020 > 0:
                require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                call 0x0000000000b3f879cb30fe243b4dfee438691c04.freeUpTo(uint256 arg1) with:
                     gas gas_remaining wei
                    args (gas_remaining - 27710 / 7020)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    call tradeExecutorAddress with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args arg3[all]
    if not ext_call.success:
        revert with 0, 'Ubot ERR: external_call'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Ubot ERR: balance_check'
    return eth.balance(this.address), 0
}



}
