contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0
    stor0 = 0xc6882fbffd309dc976dd6e4c79cc91e4c1482140
    return code.data[361 len 3153]
}



// =====================  Runtime code  =====================


address stor0;
uint256 last_offer_id;
mapping of struct offer;

function last_offer_id() payable {
    return last_offer_id
}

function getOffer(uint256 arg1) payable {
    return offer[arg1].field_0, offer[arg1].field_256, offer[arg1].field_512, offer[arg1].field_768
}

function offers(uint256 arg1) payable {
    return offer[arg1].field_0, 
           offer[arg1].field_256,
           offer[arg1].field_512,
           offer[arg1].field_768,
           offer[arg1].field_1024,
           offer[arg1].field_1024
}

function _fallback() payable {
    revert 
}

function cancel(uint256 arg1) payable {
    require offer[arg1].field_1184
    require msg.sender == offer[arg1].field_1024
    call stor0.getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args offer[arg1].field_256
    require ext_call.success
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, offer[arg1].field_0
    require ext_call.return_data[0]
    offer[arg1].field_0 = 0
    offer[arg1].field_256 = 0
    offer[arg1].field_512 = 0
    offer[arg1].field_768 = 0
    offer[arg1].field_1024 = 0
    offer[arg1].field_1184 = 0
    emit ItemUpdate(arg1);
}

function sub_db444f61(?) payable {
    require arg1 > 0
    require arg2
    require arg3 > 0
    require arg4 > 0
    call stor0.getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), arg1
    require ext_call.return_data[0]
    last_offer_id++
    offer[stor1].field_0 = arg1
    offer[stor1].field_256 = arg2
    offer[stor1].field_512 = arg3
    offer[stor1].field_768 = arg4
    offer[stor1].field_1024 = msg.sender
    offer[stor1].field_1184 = 1
    emit ItemUpdate(last_offer_id);
    return last_offer_id
}

function buy(uint256 arg1) payable {
    require offer[arg1].field_1184
    call stor0.getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args offer[arg1].field_768
    require ext_call.success
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, offer[arg1].field_1024, offer[arg1].field_512
    require ext_call.return_data[0]
    call stor0.getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args offer[arg1].field_256
    require ext_call.success
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, offer[arg1].field_0
    require ext_call.return_data[0]
    emit 0xe0bb8827: offer[arg1].field_0, offer[arg1].field_512, offer[arg1].field_256, offer[arg1].field_768
    offer[arg1].field_0 = 0
    offer[arg1].field_256 = 0
    offer[arg1].field_512 = 0
    offer[arg1].field_768 = 0
    offer[arg1].field_1024 = 0
    offer[arg1].field_1184 = 0
    emit ItemUpdate(arg1);
}

function buyPartial(uint256 arg1, uint256 arg2) payable {
    require offer[arg1].field_1184
    if offer[arg1].field_0 > arg2:
        if arg2 * offer[arg1].field_512 / offer[arg1].field_0 > 0:
            call stor0.getToken(bytes32 rg1) with:
                 gas gas_remaining - 25050 wei
                args offer[arg1].field_768
            require ext_call.success
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining - 25050 wei
                args msg.sender, offer[arg1].field_1024, arg2 * offer[arg1].field_512 / offer[arg1].field_0
            require ext_call.return_data[0]
            call stor0.getToken(bytes32 rg1) with:
                 gas gas_remaining - 25050 wei
                args offer[arg1].field_256
            require ext_call.success
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining - 25050 wei
                args msg.sender, arg2
            require ext_call.return_data[0]
            emit 0xe0bb8827: arg2, arg2 * offer[arg1].field_512 / offer[arg1].field_0, offer[arg1].field_256, offer[arg1].field_768
            offer[arg1].field_0 -= arg2
            offer[arg1].field_512 -= arg2 * offer[arg1].field_512 / offer[arg1].field_0
    else:
        call stor0.getToken(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args offer[arg1].field_768
        require ext_call.success
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining - 25050 wei
            args msg.sender, offer[arg1].field_1024, offer[arg1].field_512
        require ext_call.return_data[0]
        call stor0.getToken(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args offer[arg1].field_256
        require ext_call.success
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args msg.sender, offer[arg1].field_0
        require ext_call.return_data[0]
        emit 0xe0bb8827: offer[arg1].field_0, offer[arg1].field_512, offer[arg1].field_256, offer[arg1].field_768
        offer[arg1].field_0 = 0
        offer[arg1].field_256 = 0
        offer[arg1].field_512 = 0
        offer[arg1].field_768 = 0
        offer[arg1].field_1024 = 0
        offer[arg1].field_1184 = 0
    emit ItemUpdate(arg1);
}



}
