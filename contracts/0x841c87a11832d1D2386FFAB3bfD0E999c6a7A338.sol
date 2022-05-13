contract main {


// =======================  Init code  ======================


uint8 stor0;
uint128 stor0; offset 168
address stor0; offset 8
address stor1;
address stor2;
array of struct stor3;
address stor5;
address stor7;
uint8 stor9;
uint16 stor9; offset 8
uint64 stor9; offset 24

function _fallback() payable {
    uint8(stor0.field_0) = 0
    uint8(stor9.field_0) = 0
    uint16(stor9.field_8) = 675
    stor9.field_24 % 1099511627776 = 0
    require not msg.value
    address(stor0.field_8) = msg.sender
    Mask(88, 0, stor0.field_168) = 0
    stor1 = msg.sender
    stor2 = msg.sender
    stor5 = address(code.data[10350 len 32])
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = 2 * stor3.length + 1
        while 2 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor3[stor3.length].field_0 = 0
    stor3[stor3.length].field_256 = 0
    stor3[stor3.length].field_160 = 0
    stor3[stor3.length].field_256 = 0
    stor3[stor3.length].field_256 = 0
    stor3[stor3.length].field_512 = 0
    stor3[stor3.length].field_320 = 1
    stor3[stor3.length].field_328 = 0
    stor3[stor3.length].field_384 = 1
    stor3[stor3.length].field_392 = 0
    stor7 = address(code.data[10382 len 32])
    return code.data[749 len 9601]
}



// =====================  Runtime code  =====================


#
#  - getAuctionIdArray(uint64 arg1, uint64 arg2)
#  - getAuctionArray(uint64 arg1, uint64 arg2)
#
uint8 stor0;
address addrAdmin; offset 8
address addrService;
address addrFinance;
array of struct auctionArray;
mapping of uint256 latestAction;
address tokenContractAddress;
address equipContractAddress;
address bitGuildContractAddress;
uint64 searchStartIndex; offset 160
address ethAuctionAddress;
uint64 auctionDuration;
uint64 auctionSumPlat; offset 64

function auctionDuration() {
    return auctionDuration
}

function searchStartIndex() {
    return searchStartIndex
}

function tokenContract() {
    return tokenContractAddress
}

function latestAction(uint256 arg1) {
    return latestAction[arg1]
}

function auctionSumPlat() {
    return auctionSumPlat
}

function addrFinance() {
    return addrFinance
}

function bitGuildContract() {
    return bitGuildContractAddress
}

function isPaused() {
    return bool(stor0)
}

function getAuction(uint64 arg1) {
    require arg1 < auctionArray.length
    return auctionArray[2 * uint64(arg1)].field_0, 
           auctionArray[2 * uint64(arg1)].field_0,
           auctionArray[2 * uint64(arg1)].field_256,
           auctionArray[2 * uint64(arg1)].field_256,
           auctionArray[2 * uint64(arg1)].field_384
}

function addrAdmin() {
    return addrAdmin
}

function equipContract() {
    return equipContractAddress
}

function ethAuction() {
    return ethAuctionAddress
}

function addrService() {
    return addrService
}

function getAuctionTotal() {
    return auctionArray.length
}

function auctionArray(uint256 arg1) {
    require arg1 < auctionArray.length
    return auctionArray[arg1].field_0, 
           auctionArray[arg1].field_0,
           auctionArray[arg1].field_256,
           auctionArray[arg1].field_256,
           auctionArray[arg1].field_384
}

function _fallback() {
  stop
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
    require arg1
    ethAuctionAddress = arg1
}

function setDataEquip(address arg1) {
    require addrAdmin == msg.sender
    require arg1
    equipContractAddress = arg1
}

function setFinance(address arg1) {
    if addrFinance != msg.sender:
        require addrAdmin == msg.sender
    require arg1
    addrFinance = arg1
}

function setService(address arg1) {
    if addrService != msg.sender:
        require addrAdmin == msg.sender
    require arg1
    addrService = arg1
}

function setAdmin(address arg1) {
    require addrAdmin == msg.sender
    require arg1
    emit AdminTransferred(addrAdmin, arg1);
    addrAdmin = arg1
}

function setDuration(uint64 arg1) {
    require addrAdmin == msg.sender
    require arg1 >= 300
    require arg1 <= 2400 * 24 * 3600
    auctionDuration = arg1
}

function isOnSale(uint256 arg1) {
    if latestAction[arg1] <= 0:
        return 0
    require latestAction[arg1] < auctionArray.length
    if uint64(auctionArray[stor4[arg1]].field_320 + auctionDuration) <= uint64(block.timestamp):
        return 0
    if auctionArray[stor4[arg1]].field_384:
        return 0
    return 1
}

function cancelAuction(uint256 arg1) {
    require not stor0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require latestAction[arg1] > 0
    require latestAction[arg1] < auctionArray.length
    require auctionArray[stor4[arg1]].field_0 == msg.sender
    require not auctionArray[stor4[arg1]].field_384
    auctionArray[stor4[arg1]].field_384 = 1
    auctionArray[stor4[arg1]].field_392 = 0
    emit AuctionPlatCancel(arg1, latestAction[arg1], msg.sender);
}

function getStartIndex(uint64 arg1) {
    require arg1 < auctionArray.length
    idx = auctionArray.length - arg1
    s = 0
    s = 0
    s = arg1
    while uint64(idx) > 0:
        require uint64(s + (uint64(idx) / 2)) < auctionArray.length
        mem[0] = 3
        if auctionArray[2 * uint64(s + (uint64(idx) / 2))].field_320 >= uint64(block.timestamp - auctionDuration):
            idx = uint64(idx) / 2
            s = uint64(idx) / 2
            s = s + (uint64(idx) / 2)
            s = s
            continue 
        idx = idx + -(uint64(idx) / 2) - 1
        s = uint64(idx) / 2
        s = s + (uint64(idx) / 2)
        s = s + (uint64(idx) / 2) + 1
        continue 
    return uint64(s)
}

function changePrice(uint256 arg1, uint64 arg2) {
    require not stor0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require latestAction[arg1] > 0
    require latestAction[arg1] < auctionArray.length
    require auctionArray[stor4[arg1]].field_0 == msg.sender
    require not auctionArray[stor4[arg1]].field_384
    require uint64(auctionDuration + auctionArray[stor4[arg1]].field_320) > uint64(block.timestamp)
    require arg2 >= 1
    require arg2 <= 999999
    auctionArray[stor4[arg1]].field_256 = arg2
    emit AuctionPlatPriceChange(arg1, arg2, latestAction[arg1], msg.sender);
}

function withdraw(address arg1, uint256 arg2) {
    if addrFinance != msg.sender:
        require addrAdmin == msg.sender
    require arg2 > 0
    if not arg1:
        if arg2 >= eth.balance(this.address):
            call addrFinance with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call addrFinance with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    else:
        if arg2 >= eth.balance(this.address):
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    require ext_call.success
}

function isOnSaleAny2(uint256 arg1, uint256 arg2) {
    if latestAction[arg1] <= 0:
        if latestAction[arg2] <= 0:
            return 0
        require latestAction[arg2] < auctionArray.length
        if uint64(auctionArray[stor4[arg2]].field_320 + auctionDuration) <= uint64(block.timestamp):
            return 0
        if auctionArray[stor4[arg2]].field_384:
            return 0
    else:
        require latestAction[arg1] < auctionArray.length
        if uint64(auctionArray[stor4[arg1]].field_320 + auctionDuration) <= uint64(block.timestamp):
            if latestAction[arg2] <= 0:
                return 0
            require latestAction[arg2] < auctionArray.length
            if uint64(auctionArray[stor4[arg2]].field_320 + auctionDuration) <= uint64(block.timestamp):
                return 0
            if auctionArray[stor4[arg2]].field_384:
                return 0
        else:
            if auctionArray[stor4[arg1]].field_384:
                if latestAction[arg2] <= 0:
                    return 0
                require latestAction[arg2] < auctionArray.length
                if uint64(auctionArray[stor4[arg2]].field_320 + auctionDuration) <= uint64(block.timestamp):
                    return 0
                if auctionArray[stor4[arg2]].field_384:
                    return 0
    return 1
}

function newAuction(uint256 arg1, uint64 arg2) {
    require not stor0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require ext_code.size(equipContractAddress)
    call equipContractAddress.isEquiped(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require arg2 >= 1
    require arg2 <= 999999
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.getFashion(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_call.return_data[62 len 2] > 1
    if latestAction[arg1] > 0:
        require latestAction[arg1] < auctionArray.length
        if uint64(auctionArray[stor4[arg1]].field_320 + auctionDuration) > uint64(block.timestamp):
            require auctionArray[stor4[arg1]].field_384 > 0
    if ethAuctionAddress:
        require ext_code.size(ethAuctionAddress)
        call ethAuctionAddress.0xf0f2805f with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
        require not ext_call.return_data[0]
    auctionArray.length++
    if not auctionArray.length <= auctionArray.length + 1:
        idx = 2 * auctionArray.length + 1
        while 2 * auctionArray.length > idx:
            auctionArray[idx].field_0 = 0
            auctionArray[idx].field_256 = 0
            idx = idx + 2
            continue 
    require auctionArray.length < auctionArray.length
    auctionArray[auctionArray.length].field_0 = msg.sender
    auctionArray[auctionArray.length].field_160 = uint64(arg1)
    auctionArray[auctionArray.length].field_256 = arg2
    require auctionArray.length - 1 < auctionArray.length
    if uint64(block.timestamp) < auctionArray[auctionArray.length - 1].field_320:
        auctionArray[auctionArray.length].field_320 = auctionArray[auctionArray.length - 1].field_320
    else:
        auctionArray[auctionArray.length].field_320 = uint64(block.timestamp)
    latestAction[arg1] = auctionArray.length
    emit AuctionPlatCreate(arg1, auctionArray.length, msg.sender);
}

function isOnSaleAny3(uint256 arg1, uint256 arg2, uint256 arg3) {
    if latestAction[arg1] <= 0:
        if latestAction[arg2] <= 0:
            if latestAction[arg3] <= 0:
                return 0
            require latestAction[arg3] < auctionArray.length
            if uint64(auctionArray[stor4[arg3]].field_320 + auctionDuration) <= uint64(block.timestamp):
                return 0
            if auctionArray[stor4[arg3]].field_384:
                return 0
        else:
            require latestAction[arg2] < auctionArray.length
            if uint64(auctionArray[stor4[arg2]].field_320 + auctionDuration) <= uint64(block.timestamp):
                if latestAction[arg3] <= 0:
                    return 0
                require latestAction[arg3] < auctionArray.length
                if uint64(auctionArray[stor4[arg3]].field_320 + auctionDuration) <= uint64(block.timestamp):
                    return 0
                if auctionArray[stor4[arg3]].field_384:
                    return 0
            else:
                if auctionArray[stor4[arg2]].field_384:
                    if latestAction[arg3] <= 0:
                        return 0
                    require latestAction[arg3] < auctionArray.length
                    if uint64(auctionArray[stor4[arg3]].field_320 + auctionDuration) <= uint64(block.timestamp):
                        return 0
                    if auctionArray[stor4[arg3]].field_384:
                        return 0
    else:
        require latestAction[arg1] < auctionArray.length
        if uint64(auctionArray[stor4[arg1]].field_320 + auctionDuration) <= uint64(block.timestamp):
            if latestAction[arg2] <= 0:
                if latestAction[arg3] <= 0:
                    return 0
                require latestAction[arg3] < auctionArray.length
                if uint64(auctionArray[stor4[arg3]].field_320 + auctionDuration) <= uint64(block.timestamp):
                    return 0
                if auctionArray[stor4[arg3]].field_384:
                    return 0
            else:
                require latestAction[arg2] < auctionArray.length
                if uint64(auctionArray[stor4[arg2]].field_320 + auctionDuration) <= uint64(block.timestamp):
                    if latestAction[arg3] <= 0:
                        return 0
                    require latestAction[arg3] < auctionArray.length
                    if uint64(auctionArray[stor4[arg3]].field_320 + auctionDuration) <= uint64(block.timestamp):
                        return 0
                    if auctionArray[stor4[arg3]].field_384:
                        return 0
                else:
                    if auctionArray[stor4[arg2]].field_384:
                        if latestAction[arg3] <= 0:
                            return 0
                        require latestAction[arg3] < auctionArray.length
                        if uint64(auctionArray[stor4[arg3]].field_320 + auctionDuration) <= uint64(block.timestamp):
                            return 0
                        if auctionArray[stor4[arg3]].field_384:
                            return 0
        else:
            if auctionArray[stor4[arg1]].field_384:
                if latestAction[arg2] <= 0:
                    if latestAction[arg3] <= 0:
                        return 0
                    require latestAction[arg3] < auctionArray.length
                    if uint64(auctionArray[stor4[arg3]].field_320 + auctionDuration) <= uint64(block.timestamp):
                        return 0
                    if auctionArray[stor4[arg3]].field_384:
                        return 0
                else:
                    require latestAction[arg2] < auctionArray.length
                    if uint64(auctionArray[stor4[arg2]].field_320 + auctionDuration) <= uint64(block.timestamp):
                        if latestAction[arg3] <= 0:
                            return 0
                        require latestAction[arg3] < auctionArray.length
                        if uint64(auctionArray[stor4[arg3]].field_320 + auctionDuration) <= uint64(block.timestamp):
                            return 0
                        if auctionArray[stor4[arg3]].field_384:
                            return 0
                    else:
                        if auctionArray[stor4[arg2]].field_384:
                            if latestAction[arg3] <= 0:
                                return 0
                            require latestAction[arg3] < auctionArray.length
                            if uint64(auctionArray[stor4[arg3]].field_320 + auctionDuration) <= uint64(block.timestamp):
                                return 0
                            if auctionArray[stor4[arg3]].field_384:
                                return 0
    return 1
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require not stor0
    require bitGuildContractAddress == msg.sender
    require arg4.length <= 8
    mem[128 len arg4.length] = arg4[all]
    idx = 0
    s = 0
    while idx < arg4.length:
        require idx < arg4.length
        idx = idx + 1
        s = s + (mem[idx + 128 len 1] * 256^(arg4.length + -idx - 1))
        continue 
    require latestAction[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length] > 0
    require latestAction[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length] < auctionArray.length
    require uint64(auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_320 + auctionDuration) > uint64(block.timestamp)
    require not auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_384
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args (s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length)
    require ext_call.success
    require auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_0 == ext_call.return_data[12 len 20]
    require arg1 != ext_call.return_data[12 len 20]
    if not auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256:
        require 0 == arg2
        require ext_code.size(bitGuildContractAddress)
        call bitGuildContractAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_384 = uint64(block.timestamp)
        auctionSumPlat = uint64(auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256 + auctionSumPlat)
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.safeTransferByContract(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length, arg1
        require ext_call.success
        require ext_code.size(bitGuildContractAddress)
        call bitGuildContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 0
        require ext_call.success
        emit AuctionPlatSold(s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length, 0, latestAction[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length], address(ext_call.return_data[0]), arg1);
    else:
        require 10^18 * auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256 / auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256 == 10^18
        require 10^18 * auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256 == arg2
        require ext_code.size(bitGuildContractAddress)
        call bitGuildContractAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_384 = uint64(block.timestamp)
        auctionSumPlat = uint64(auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256 + auctionSumPlat)
        if not 10^18 * auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.safeTransferByContract(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length, arg1
            require ext_call.success
            require ext_code.size(bitGuildContractAddress)
            call bitGuildContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0
        else:
            require 25 * 10^14 * 3600 * auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256 / 10^18 * auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256 == 9
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.safeTransferByContract(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length, arg1
            require ext_call.success
            require ext_code.size(bitGuildContractAddress)
            call bitGuildContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 25 * 10^14 * 3600 * auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256 / 10
        require ext_call.success
        emit AuctionPlatSold(s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length, 10^18 * auctionArray[stor4[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length]].field_256, latestAction[s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length], address(ext_call.return_data[0]), arg1);
}



}
