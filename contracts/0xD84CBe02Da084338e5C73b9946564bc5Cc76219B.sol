contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint128 stor1; offset 160
address stor1;
uint256 stor1;
address pyramidAddress;
address sub_ef9cfdbaAddress;
address sub_d141c39bAddress;

function pyramid() {
    return pyramidAddress
}

function sub_d141c39b(?) {
    return sub_d141c39bAddress
}

function sub_ef9cfdba(?) {
    return sub_ef9cfdbaAddress
}

function setOwnership(address arg1, bool arg2) {
    if not stor0[msg.sender]:
        require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    stor0[address(arg1)] = uint8(arg2)
}

function sub_a5b4e966(?) {
    if not stor0[msg.sender]:
        require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    address(stor1.field_0) = arg1
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg2)
}

function _fallback() payable {
    if not address(stor1.field_0):
        require not uint256(stor1.field_0)
    delegate address(stor1.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function exit() {
    if not stor0[msg.sender]:
        require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    require pyramidAddress
    require ext_code.size(sub_d141c39bAddress)
    call sub_d141c39bAddress.exit(address arg1) with:
         gas gas_remaining wei
        args pyramidAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function withdraw() {
    if not stor0[msg.sender]:
        require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    require pyramidAddress
    require ext_code.size(sub_d141c39bAddress)
    call sub_d141c39bAddress.withdraw(address arg1) with:
         gas gas_remaining wei
        args pyramidAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sell(uint256 arg1) {
    if not stor0[msg.sender]:
        require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    require pyramidAddress
    require ext_code.size(sub_d141c39bAddress)
    call sub_d141c39bAddress.sell(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pyramidAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d141c39bAddress)
    call sub_d141c39bAddress.withdraw(address arg1) with:
         gas gas_remaining wei
        args pyramidAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_bd0a5c0b(?) payable {
    if not arg2:
        require ext_code.size(arg1)
        call arg1.0x27defa1f with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
    else:
        if block.timestamp < arg2:
            require ext_code.size(arg1)
            call arg1.0x27defa1f with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
    require arg3 >= eth.balance(arg1)
    require not pyramidAddress
    require ext_code.size(sub_d141c39bAddress)
    call sub_d141c39bAddress.buy(address arg1, address arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    pyramidAddress = arg1
}

function sub_18f8cf1d(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    require calldata.size >= 28
    mem[24 len calldata.size] = call.data[0 len calldata.size]
    if not mem[24 len 8] % 16:
        call 0x0 with:
           value msg.value wei
             gas gas_remaining wei
            args mem[56 len calldata.size - 32]
        if not Mask(4, 4, mem[24 len 8]):
            require ext_call.success
        require Mask(4, 4, mem[24 len 8]) == 16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require mem[24 len 8] % 16 == 1
        delegate 0x0.0x0 with:
             gas gas_remaining wei
            args mem[56 len calldata.size - 32]
        if not Mask(4, 4, mem[24 len 8]):
            require delegate.return_code
        require Mask(4, 4, mem[24 len 8]) == 16
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
