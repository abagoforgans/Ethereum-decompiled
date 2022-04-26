contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[10258 len 20]
    create contract with 0 wei
                    code: code.data[3539 len 6707]
    require create.new_address
    stor2 = address(create.new_address)
    require ext_code.size(stor2)
    call stor2.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(this.address), code.data[10278 len 32]
    require ext_call.success
    emit 0x9f85cd39: code.data[10278 len 32]
    return code.data[601 len 2938]
}



// =====================  Runtime code  =====================


address owner;
address sub_2079f975Address;
address sub_b50685dfAddress;

function sub_2079f975(?) {
    return sub_2079f975Address
}

function owner() {
    return owner
}

function sub_b50685df(?) {
    return sub_b50685dfAddress
}

function _fallback() payable {
    revert
}

function sub_a3e47928(?) {
    require msg.sender == owner
    sub_2079f975Address = arg1
    emit 0x21b6d4ef: arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c9cc765d(?) {
    require ext_code.size(sub_b50685dfAddress)
    call sub_b50685dfAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) {
    if sub_2079f975Address != msg.sender:
        require msg.sender == owner
    require ext_code.size(sub_b50685dfAddress)
    call sub_b50685dfAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit Withdraw(address(arg1), arg2);
}

function sub_bdd0ef66(?) {
    if sub_2079f975Address != msg.sender:
        require msg.sender == owner
    require ext_code.size(sub_b50685dfAddress)
    call sub_b50685dfAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if arg1 > ext_call.return_data[0]:
        require ext_call.return_data[0] <= arg1
        require ext_code.size(sub_b50685dfAddress)
        call sub_b50685dfAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(this.address), arg1 - ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(sub_b50685dfAddress)
        call sub_b50685dfAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] == arg1
        emit 0x9f85cd39: arg1
    else:
        if arg1 < ext_call.return_data[0]:
            require arg1 <= ext_call.return_data[0]
            require ext_code.size(sub_b50685dfAddress)
            call sub_b50685dfAddress.0x42966c68 with:
                 gas gas_remaining - 710 wei
                args (ext_call.return_data[0] - arg1)
            require ext_call.success
            require ext_code.size(sub_b50685dfAddress)
            call sub_b50685dfAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] == arg1
            emit 0x9f85cd39: arg1
}



}
