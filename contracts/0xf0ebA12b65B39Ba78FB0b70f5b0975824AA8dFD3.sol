contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2786]




// =====================  Runtime code  =====================


uint8 stor0;
mapping of struct offers;
uint256 last_offer_id;

function last_offer_id() payable {
    return last_offer_id
}

function getOffer(uint256 arg1) payable {
    return offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_512, offers[arg1].field_768
}

function isActive(uint256 arg1) payable {
    return bool(offers[arg1].field_1184)
}

function offers(uint256 arg1) payable {
    return offers[arg1].field_0, 
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           offers[arg1].field_1024,
           bool(offers[arg1].field_1184)
}

function getOwner(uint256 arg1) payable {
    return offers[arg1].field_1024
}

function _fallback() payable {
    revert 
}

function cancel(uint256 arg1) payable {
    require offers[arg1].field_1184
    require offers[arg1].field_1024 == msg.sender
    require not stor0
    stor0 = 1
    offers[arg1].field_0 = 0
    offers[arg1].field_256 = 0
    offers[arg1].field_512 = 0
    offers[arg1].field_768 = 0
    offers[arg1].field_1024 = 0
    offers[arg1].field_1184 = 0
    call offers[arg1].field_256.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args offers[arg1].field_1024, offers[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    emit ItemUpdate(arg1);
    stor0 = 0
    return 1
}

function offer(uint256 arg1, address arg2, uint256 arg3, address arg4) payable {
    require not stor0
    stor0 = 1
    require arg1 > 0
    require arg2 != 0
    require arg3 > 0
    require arg4 != 0
    require arg2 != arg4
    last_offer_id++
    offers[stor2 + 1].field_0 = arg1
    offers[stor2 + 1].field_256 = arg2
    offers[stor2 + 1].field_512 = arg3
    offers[stor2 + 1].field_768 = arg4
    offers[stor2 + 1].field_1024 = msg.sender
    offers[stor2 + 1].field_1184 = 1
    offers[stor2 + 1].field_1280 = 0
    call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit ItemUpdate((last_offer_id + 1));
    stor0 = 0
    return (last_offer_id + 1)
}

function buy(uint256 arg1, uint256 arg2) payable {
    require offers[arg1].field_1184
    require not stor0
    stor0 = 1
    if arg2:
        require offers[arg1].field_512 * arg2 / arg2 == offers[arg1].field_512
    if offers[arg1].field_512 * arg2 / offers[arg1].field_0 > offers[arg1].field_512:
        stor0 = 0
        return 0
    if arg2 > offers[arg1].field_0:
        stor0 = 0
        return 0
    if offers[arg1].field_512 * arg2 / offers[arg1].field_0 != offers[arg1].field_512:
        if offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= 0:
            stor0 = 0
            return 0
        if arg2 <= 0:
            stor0 = 0
            return 0
        require arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= offers[arg1].field_512
        offers[arg1].field_512 -= offers[arg1].field_512 * arg2 / offers[arg1].field_0
    else:
        if arg2 == offers[arg1].field_0:
            offers[arg1].field_0 = 0
            offers[arg1].field_256 = 0
            offers[arg1].field_512 = 0
            offers[arg1].field_768 = 0
            offers[arg1].field_1024 = 0
        else:
            if offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= 0:
                stor0 = 0
                return 0
            if arg2 <= 0:
                stor0 = 0
                return 0
            require arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 * arg2 / offers[arg1].field_0 <= offers[arg1].field_512
            offers[arg1].field_512 -= offers[arg1].field_512 * arg2 / offers[arg1].field_0
    call offers[arg1].field_768.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, offers[arg1].field_1024, offers[arg1].field_512 * arg2 / offers[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    call offers[arg1].field_256.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Trade(arg2, offers[arg1].field_512 * arg2 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
    emit ItemUpdate(arg1);
    stor0 = 0
    return 1
}



}
