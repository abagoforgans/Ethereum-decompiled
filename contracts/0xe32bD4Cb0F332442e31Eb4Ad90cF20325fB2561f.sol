contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1649]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getLastOrderId(address arg1) payable {
    require ext_code.size(arg1)
    call arg1.last_offer_id() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function isActive(address arg1, uint256 arg2) payable {
    require ext_code.size(arg1)
    call arg1.isActive(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function getOwner(address arg1, uint256 arg2) payable {
    require ext_code.size(arg1)
    call arg1.getOwner(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getTimestamp(address arg1, uint256 arg2) payable {
    require ext_code.size(arg1)
    call arg1.offers(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[216 len 8]
}

function cancelOrder(address arg1, uint256 arg2) payable {
    require ext_code.size(arg1)
    call arg1.cancel(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    emit OrderUpdated(arg2);
    return bool(ext_call.return_data[0])
}

function takeOrder(address arg1, uint256 arg2, uint256 arg3) payable {
    require ext_code.size(arg1)
    call arg1.buy(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args arg2, arg3
    require ext_call.success
    emit OrderUpdated(arg2);
    return bool(ext_call.return_data[0])
}

function getOrder(address arg1, uint256 arg2) payable {
    require ext_code.size(arg1)
    call arg1.getOffer(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[44 len 20], address(ext_call.return_data[96]), ext_call.return_data[0], ext_call.return_data[64]
}

function makeOrder(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require ext_code.size(arg1)
    call arg1.offer(uint256 rg1, address rg2, uint256 rg3, address rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(arg4), address(arg2), arg5, arg3
    require ext_call.success
    emit OrderUpdated(ext_call.return_data[0]);
    return ext_call.return_data[0]
}



}
