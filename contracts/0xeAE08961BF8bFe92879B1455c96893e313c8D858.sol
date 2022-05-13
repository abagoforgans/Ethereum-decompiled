contract main {


// =======================  Init code  ======================


uint8 stor0;
uint128 stor0; offset 168
address stor0; offset 8
address stor1;
address stor2;
array of struct stor3;
address stor5;
uint8 stor13; offset 64
uint16 stor13; offset 72
uint64 stor13; offset 88

function _fallback() payable {
    uint8(stor0.field_0) = 0
    uint8(stor13.field_64) = 0
    uint16(stor13.field_72) = 675
    stor13.field_88 % 1099511627776 = 0
    require not msg.value
    address(stor0.field_8) = msg.sender
    Mask(88, 0, stor0.field_168) = 0
    stor1 = msg.sender
    stor2 = msg.sender
    stor5 = address(code.data[11114 len 32])
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
    return code.data[701 len 10413]
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
address eostContractAddress;
address platAuctionAddress;
address poolContractAddress;
mapping of uint256 shareBalances;
mapping of uint256 sub_ab01f668;
uint256 accumulateFee;
uint64 searchStartIndex;
uint64 auctionDuration; offset 64
uint64 auctionSumGwei; offset 128

function auctionDuration() {
    return auctionDuration
}

function accumulateFee() {
    return accumulateFee
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

function eostContract() {
    return eostContractAddress
}

function addrFinance() {
    return addrFinance
}

function poolContract() {
    return poolContractAddress
}

function auctionSumGwei() {
    return auctionSumGwei
}

function platAuction() {
    return platAuctionAddress
}

function sub_ab01f668(?) {
    return sub_ab01f668[arg1]
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

function addrService() {
    return addrService
}

function auctionArray(uint256 arg1) {
    require arg1 < auctionArray.length
    return auctionArray[arg1].field_0, 
           auctionArray[arg1].field_0,
           auctionArray[arg1].field_256,
           auctionArray[arg1].field_256,
           auctionArray[arg1].field_384
}

function shareBalances(address arg1) {
    return shareBalances[arg1]
}

function _fallback() {
  stop
}

function getAuctionTotal() {
    return (auctionArray.length - 1)
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

function depositBonus() payable {
    require msg.value > 0
    require msg.value + accumulateFee >= accumulateFee
}

function setPrizePool(address arg1) {
    require addrAdmin == msg.sender
    require arg1
    poolContractAddress = arg1
}

function setPlatAuction(address arg1) {
    require addrAdmin == msg.sender
    require arg1
    platAuctionAddress = arg1
}

function setDataEquip(address arg1) {
    require addrAdmin == msg.sender
    require arg1
    equipContractAddress = arg1
}

function setEOMarketToken(address arg1) {
    require addrAdmin == msg.sender
    require arg1
    eostContractAddress = arg1
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

function shareWithdraw() {
    require shareBalances[address(msg.sender)] > 0
    require shareBalances[address(msg.sender)] <= eth.balance(this.address)
    shareBalances[address(msg.sender)] = 0
    sub_ab01f668[address(msg.sender)] += shareBalances[address(msg.sender)]
    call msg.sender with:
       value shareBalances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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
    emit AuctionCancel(arg1, latestAction[arg1], msg.sender);
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
    require uint64(auctionArray[stor4[arg1]].field_320 + auctionDuration) > uint64(block.timestamp)
    require arg2 >= 10^6
    require arg2 <= 277500000 * 24 * 3600
    auctionArray[stor4[arg1]].field_256 = arg2
    emit AuctionPriceChange(arg1, arg2, latestAction[arg1], msg.sender);
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
    require arg2 >= 10^6
    require arg2 <= 277500000 * 24 * 3600
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
    if platAuctionAddress:
        require ext_code.size(platAuctionAddress)
        call platAuctionAddress.0xf0f2805f with:
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
    emit AuctionCreate(arg1, auctionArray.length, msg.sender);
}

function updateShares() {
    require ext_code.size(eostContractAddress)
    call eostContractAddress.getShareholders() with:
         gas gas_remaining wei
    mem[6496 len 6432] = ext_call.return_data[0 len 6432]
    require ext_call.success
    require ext_call.return_data[6400] > 0
    require ext_call.return_data[6400]
    s = 0
    idx = 0
    s = 0
    while uint64(idx) < 100:
        if not mem[(32 * uint64(idx)) + 6508 len 20]:
            if accumulateFee <= 100:
        else:
            if uint64(idx) < 100:
                if not accumulateFee / ext_call.return_data[6400]:
                    if shareBalances[mem[(32 * uint64(idx)) + 6508 len 20]] >= shareBalances[mem[(32 * uint64(idx)) + 6508 len 20]]:
                        mem[0] = mem[(32 * uint64(idx)) + 6508 len 20]
                        mem[32] = 10
                        shareBalances[address(mem[(32 * uint64(idx)) + 6496])] = shareBalances[mem[(32 * uint64(idx)) + 6508 len 20]]
                        if 0 <= accumulateFee:
                            s = shareBalances[mem[(32 * uint64(idx)) + 6508 len 20]]
                            idx = idx + 1
                            s = mem[(32 * uint64(idx)) + 6496]
                            continue 
                else:
                    if mem[(32 * uint64(idx)) + 9696] * accumulateFee / ext_call.return_data[6400] / accumulateFee / ext_call.return_data[6400] == mem[(32 * uint64(idx)) + 9696]:
                        if (mem[(32 * uint64(idx)) + 9696] * accumulateFee / ext_call.return_data[6400]) + shareBalances[mem[(32 * uint64(idx)) + 6508 len 20]] >= shareBalances[mem[(32 * uint64(idx)) + 6508 len 20]]:
                            mem[0] = mem[(32 * uint64(idx)) + 6508 len 20]
                            mem[32] = 10
                            shareBalances[address(mem[(32 * uint64(idx)) + 6496])] = (mem[(32 * uint64(idx)) + 9696] * accumulateFee / ext_call.return_data[6400]) + shareBalances[mem[(32 * uint64(idx)) + 6508 len 20]]
                            if mem[(32 * uint64(idx)) + 9696] * accumulateFee / ext_call.return_data[6400] <= accumulateFee:
                                s = shareBalances[mem[(32 * uint64(idx)) + 6508 len 20]]
                                idx = idx + 1
                                s = mem[(32 * uint64(idx)) + 6496]
                                continue 
        revert
    if accumulateFee <= 100:
    revert
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

function bid(uint256 arg1) payable {
    require not stor0
    require latestAction[arg1] > 0
    require latestAction[arg1] < auctionArray.length
    require uint64(auctionArray[stor4[arg1]].field_320 + auctionDuration) > uint64(block.timestamp)
    require not auctionArray[stor4[arg1]].field_384
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require auctionArray[stor4[arg1]].field_0 == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] != msg.sender
    require uint64(10^9 * auctionArray[stor4[arg1]].field_256) == msg.value
    auctionArray[stor4[arg1]].field_384 = uint64(block.timestamp)
    auctionSumGwei = uint64(auctionArray[stor4[arg1]].field_256 + auctionSumGwei)
    if not uint64(10^9 * auctionArray[stor4[arg1]].field_256):
        require 0 <= uint64(10^9 * auctionArray[stor4[arg1]].field_256)
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.safeTransferByContract(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1, msg.sender
        require ext_call.success
        if not uint64(10^9 * auctionArray[stor4[arg1]].field_256):
            require 0 <= uint64(10^9 * auctionArray[stor4[arg1]].field_256)
            require accumulateFee >= accumulateFee
            call addrFinance with:
               value uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 2 <= uint64(10^9 * auctionArray[stor4[arg1]].field_256)
            if poolContractAddress:
                call poolContractAddress with:
                   value uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 2) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call address(ext_call.return_data[0]) with:
                     gas 2300 wei
            else:
                require uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 2) + accumulateFee >= accumulateFee
                accumulateFee = uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 2) + accumulateFee
                call address(ext_call.return_data[0]) with:
                     gas 2300 wei
                require ext_call.success
        else:
            require 6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / uint64(10^9 * auctionArray[stor4[arg1]].field_256) == 6
            require 6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10 <= uint64(10^9 * auctionArray[stor4[arg1]].field_256)
            require (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) + accumulateFee >= accumulateFee
            accumulateFee += 6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10
            call addrFinance with:
               value uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 2 <= uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10)
            if poolContractAddress:
                call poolContractAddress with:
                   value uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 2) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call address(ext_call.return_data[0]) with:
                     gas 2300 wei
            else:
                require uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 2) + accumulateFee >= accumulateFee
                accumulateFee = uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 2) + accumulateFee
                call address(ext_call.return_data[0]) with:
                     gas 2300 wei
                require ext_call.success
    else:
        require 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / uint64(10^9 * auctionArray[stor4[arg1]].field_256) == 9
        require 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10 <= uint64(10^9 * auctionArray[stor4[arg1]].field_256)
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.safeTransferByContract(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1, msg.sender
        require ext_call.success
        if not uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10):
            require 0 <= uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10)
            require accumulateFee >= accumulateFee
            call addrFinance with:
               value uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 2 <= uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10)
            if poolContractAddress:
                call poolContractAddress with:
                   value uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 2) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call address(ext_call.return_data[0]) with:
                   value 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10 wei
                     gas 2300 * is_zero(value) wei
            else:
                require uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 2) + accumulateFee >= accumulateFee
                accumulateFee = uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 2) + accumulateFee
                call address(ext_call.return_data[0]) with:
                   value 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            require (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) == 6
            require (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10 <= uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10)
            require ((6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10) + accumulateFee >= accumulateFee
            accumulateFee += (6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10
            call addrFinance with:
               value uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - ((6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10) / 2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - ((6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10) / 2 <= uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - ((6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10)
            if poolContractAddress:
                call poolContractAddress with:
                   value uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - ((6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - ((6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10) / 2) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call address(ext_call.return_data[0]) with:
                   value 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10 wei
                     gas 2300 * is_zero(value) wei
            else:
                require uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - ((6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - ((6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10) / 2) + accumulateFee >= accumulateFee
                accumulateFee = uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - ((6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10) - (uint64(10^9 * auctionArray[stor4[arg1]].field_256) - (9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) - ((6 * uint64(10^9 * auctionArray[stor4[arg1]].field_256)) - (6 * 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10) / 10) / 2) + accumulateFee
                call address(ext_call.return_data[0]) with:
                   value 9 * uint64(10^9 * auctionArray[stor4[arg1]].field_256) / 10 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    emit AuctionSold(arg1, uint64(10^9 * auctionArray[stor4[arg1]].field_256), latestAction[arg1], address(ext_call.return_data[0]), msg.sender);
}



}
