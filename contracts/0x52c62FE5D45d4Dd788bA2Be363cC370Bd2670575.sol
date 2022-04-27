contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 2365]




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    revert
}

function sub_778935ad(?) {
    require ext_code.size(arg1)
    call arg1.0x8bbbbfd3 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
}

function setupAmbi2(address arg1) {
    if address(stor0.field_0):
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    address(stor0.field_0) = arg1
    return 1
}

function sub_7dace1f9(?) {
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(msg.sender)
    call msg.sender.0x1c2b648c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > ext_call.return_data[0]
    emit TokensPurchased(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                         0,
                         msg.sender,
                         arg2,
                         arg1,
    uint8(stor0.field_160) = 0
}

function sub_e78b6fce(?) {
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(msg.sender)
    call msg.sender.0x807c9bf6 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > ext_call.return_data[0]
    emit TokensPurchased(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                         0,
                         msg.sender,
                         arg3,
                         arg1,
    uint8(stor0.field_160) = 0
}

function recoverTokens(address arg1, address arg2, uint256 arg3) {
    if address(stor0.field_0):
        require ext_code.size(address(stor0.field_0))
        call address(stor0.field_0).hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 710 wei
            args address(this.address), 'admin', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= arg3
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), arg3
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensRecovered(arg3, arg1, arg2);
}



}
