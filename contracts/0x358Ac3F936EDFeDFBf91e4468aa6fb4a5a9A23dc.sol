contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 8005]
}



// =====================  Runtime code  =====================


address owner;
address sub_53253d31Address;
uint256 fee;
mapping of uint8 stor3;

function sub_53253d31(?) {
    return sub_53253d31Address
}

function owner() {
    return owner
}

function fee() {
    return fee
}

function _fallback() {
    revert
}

function setFee(uint256 arg1) {
    require owner == msg.sender
    emit FeeUpdated(fee, arg1);
    fee = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_71d3b573(?) {
    require owner == msg.sender
    require arg1
    emit 0xfcfe24ff: sub_53253d31Address, arg1
    sub_53253d31Address = arg1
}

function ownerWithdrawEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xbfae9db7: eth.balance(this.address)
    return 1
}

function sub_649f5fc7(?) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    emit OwnerWithdrewERC20Token(ext_call.return_data[0], arg1);
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_f8027296(?) {
    if not stor3[address(arg1)]:
        return bool(stor3[address(arg1)]), 0, 0, 0, 0, 0
    require ext_code.size(arg1)
    call arg1.maker() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa035b1fe with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.units() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x20db38ed with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(stor3[address(arg1)]), 
           0,
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function createTradeContract(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require arg1
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require arg2 > 0
    require arg3 > 0
    if arg4:
        require 1 == arg4
    require msg.value == fee
    require ext_code.size(sub_53253d31Address)
    call sub_53253d31Address.0x845ea998 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[12 len 20]:
        create contract with 0 wei
                        code: code.data[3160 len 4802], msg.sender, address(arg1), arg2, arg3, arg4, sub_53253d31Address
        require create.new_address
        require ext_code.size(sub_53253d31Address)
        call sub_53253d31Address.0x4b406c0b with:
             gas gas_remaining - 710 wei
            args address(create.new_address), 1
        require ext_call.success
        emit 0xa633bd69: arg2, arg3, arg4, fee, msg.sender, address(create.new_address), arg1
        return address(create.new_address)
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xcb505695 with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, arg2, arg4, arg3, 0
    require ext_call.success
    require ext_code.size(sub_53253d31Address)
    call sub_53253d31Address.0x4b406c0b with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), 1
    require ext_call.success
    require ext_code.size(sub_53253d31Address)
    call sub_53253d31Address.0xa2690709 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), 0
    require ext_call.success
    emit 0xa633bd69: arg2, arg3, arg4, fee, msg.sender, address(ext_call.return_data[0]), arg1
    return address(ext_call.return_data[0])
}



}
