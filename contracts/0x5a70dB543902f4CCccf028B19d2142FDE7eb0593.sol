contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 4270]




// =====================  Runtime code  =====================


uint256 last_offer_id;
mapping of struct offers;

function last_offer_id() payable {
    return last_offer_id
}

function getOffer(uint256 arg1) payable {
    return offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_512, offers[arg1].field_768
}

function offers(uint256 arg1) payable {
    return offers[arg1].field_0, 
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           offers[arg1].field_1024,
           bool(offers[arg1].field_1184)
}

function _fallback() payable {
    revert 
}

function cancel(uint256 arg1) payable {
    require offers[arg1].field_1184
    require msg.sender == offers[arg1].field_1024
    call offers[arg1].field_256.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, offers[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    offers[arg1].field_0 = 0
    offers[arg1].field_256 = 0
    offers[arg1].field_512 = 0
    offers[arg1].field_768 = 0
    offers[arg1].field_1024 = 0
    offers[arg1].field_1184 = 0
    emit ItemUpdate(arg1);
    return 1
}

function offer(uint256 arg1, address arg2, uint256 arg3, address arg4) payable {
    require arg1 > 0
    require arg2
    require arg3 > 0
    require arg4
    call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    last_offer_id++
    offers[stor0].field_0 = arg1
    offers[stor0].field_256 = arg2
    offers[stor0].field_512 = arg3
    offers[stor0].field_768 = arg4
    offers[stor0].field_1024 = msg.sender
    offers[stor0].field_1184 = 1
    emit ItemUpdate(last_offer_id);
    return last_offer_id
}

function buy(uint256 arg1) payable {
    require offers[arg1].field_1184
    call offers[arg1].field_768.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, offers[arg1].field_1024, offers[arg1].field_512
    require ext_call.success
    require ext_call.return_data[0]
    call offers[arg1].field_256.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, offers[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    emit Trade(offers[arg1].field_0, offers[arg1].field_512, offers[arg1].field_256, offers[arg1].field_768);
    offers[arg1].field_0 = 0
    offers[arg1].field_256 = 0
    offers[arg1].field_512 = 0
    offers[arg1].field_768 = 0
    offers[arg1].field_1024 = 0
    offers[arg1].field_1184 = 0
    emit ItemUpdate(arg1);
    return 1
}

function buyPartial(uint256 arg1, uint256 arg2) payable {
    require offers[arg1].field_1184
    if offers[arg1].field_0 < arg2:
        return 0
    if offers[arg1].field_0 != arg2:
        if arg2 * offers[arg1].field_512 / offers[arg1].field_0 <= 0:
            return 0
        call offers[arg1].field_768.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, offers[arg1].field_1024, arg2 * offers[arg1].field_512 / offers[arg1].field_0
        require ext_call.success
        require ext_call.return_data[0]
        call offers[arg1].field_256.0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args msg.sender, arg2
        require ext_call.success
        require ext_call.return_data[0]
        emit Trade(arg2, arg2 * offers[arg1].field_512 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
        offers[arg1].field_0 -= arg2
        offers[arg1].field_512 -= arg2 * offers[arg1].field_512 / offers[arg1].field_0
    else:
        call offers[arg1].field_768.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, offers[arg1].field_1024, offers[arg1].field_512
        require ext_call.success
        require ext_call.return_data[0]
        call offers[arg1].field_256.0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args msg.sender, offers[arg1].field_0
        require ext_call.success
        require ext_call.return_data[0]
        emit Trade(offers[arg1].field_0, offers[arg1].field_512, offers[arg1].field_256, offers[arg1].field_768);
        offers[arg1].field_0 = 0
        offers[arg1].field_256 = 0
        offers[arg1].field_512 = 0
        offers[arg1].field_768 = 0
        offers[arg1].field_1024 = 0
        offers[arg1].field_1184 = 0
    emit ItemUpdate(arg1);
    return 1
}



}
