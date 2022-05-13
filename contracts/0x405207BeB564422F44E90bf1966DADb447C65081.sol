contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
address stor1;
address stor2;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    require not msg.value
    address(stor0.field_8) = msg.sender
    stor1 = code.data[2064 len 20]
    stor2 = code.data[2096 len 20]
    return code.data[146 len 1906]
}



// =====================  Runtime code  =====================


uint8 stor0;
address addrAdmin; offset 8
address ethAuctionAddress;
address platAuctionAddress;

function platAuction() {
    return platAuctionAddress
}

function isPaused() {
    return bool(stor0)
}

function addrAdmin() {
    return addrAdmin
}

function ethAuction() {
    return ethAuctionAddress
}

function _fallback() payable {
    revert
}

function doUnpause() {
    require addrAdmin == msg.sender
    require stor0
    stor0 = 0
}

function doPause() {
    require addrAdmin == msg.sender
    require not stor0
    stor0 = 1
}

function setEthAuction(address arg1) {
    require addrAdmin == msg.sender
    ethAuctionAddress = arg1
}

function setPlatAuction(address arg1) {
    require addrAdmin == msg.sender
    platAuctionAddress = arg1
}

function setAdmin(address arg1) {
    require addrAdmin == msg.sender
    require arg1
    emit AdminTransferred(addrAdmin, arg1);
    addrAdmin = arg1
}

function isOnSale(uint256 arg1) {
    if not ethAuctionAddress:
        if not platAuctionAddress:
            return 0
        require ext_code.size(platAuctionAddress)
        call platAuctionAddress.0xf0f2805f with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    else:
        require ext_code.size(ethAuctionAddress)
        call ethAuctionAddress.0xf0f2805f with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            if not platAuctionAddress:
                return 0
            require ext_code.size(platAuctionAddress)
            call platAuctionAddress.0xf0f2805f with:
                 gas gas_remaining wei
                args arg1
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    return 1
}

function isOnSaleAny2(uint256 arg1, uint256 arg2) {
    if not ethAuctionAddress:
        if not platAuctionAddress:
            return 0
        require ext_code.size(platAuctionAddress)
        call platAuctionAddress.0xa5c464b3 with:
             gas gas_remaining wei
            args arg1, arg2
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    else:
        require ext_code.size(ethAuctionAddress)
        call ethAuctionAddress.0xa5c464b3 with:
             gas gas_remaining wei
            args arg1, arg2
        require ext_call.success
        if not ext_call.return_data[0]:
            if not platAuctionAddress:
                return 0
            require ext_code.size(platAuctionAddress)
            call platAuctionAddress.0xa5c464b3 with:
                 gas gas_remaining wei
                args arg1, arg2
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    return 1
}

function isOnSaleAny3(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not ethAuctionAddress:
        if not platAuctionAddress:
            return 0
        require ext_code.size(platAuctionAddress)
        call platAuctionAddress.0xf3b42c40 with:
             gas gas_remaining wei
            args arg1, arg2, arg3
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    else:
        require ext_code.size(ethAuctionAddress)
        call ethAuctionAddress.0xf3b42c40 with:
             gas gas_remaining wei
            args arg1, arg2, arg3
        require ext_call.success
        if not ext_call.return_data[0]:
            if not platAuctionAddress:
                return 0
            require ext_code.size(platAuctionAddress)
            call platAuctionAddress.0xf3b42c40 with:
                 gas gas_remaining wei
                args arg1, arg2, arg3
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    return 1
}



}
