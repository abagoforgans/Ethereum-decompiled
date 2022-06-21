contract main {




// =====================  Runtime code  =====================


#
#  - borrow(address arg1, uint256 arg2)
#  - getAccountLiquidity(address arg1)
#  - liquidateBorrow(address arg1, address arg2, address arg3, uint256 arg4)
#  - withdraw(address arg1, uint256 arg2)
#
address pendingAdminAddress;
address adminAddress;
address oracleAddress;
mapping of struct supplyBalances;
mapping of struct borrowBalances;
mapping of struct markets;
array of address collateralMarkets;
uint256 collateralRatio;
uint256 originationFee;
uint256 liquidationDiscount;
uint8 stor10;

function pendingAdmin() {
    return pendingAdminAddress
}

function paused() {
    return bool(stor10)
}

function getCollateralMarketsLength() {
    return collateralMarkets.length
}

function oracle() {
    return oracleAddress
}

function liquidationDiscount() {
    return liquidationDiscount
}

function markets(address arg1) {
    return bool(markets[arg1].field_0), 
           markets[arg1].field_256,
           markets[arg1].field_512,
           markets[arg1].field_768,
           markets[arg1].field_1024,
           markets[arg1].field_1280,
           markets[arg1].field_1536,
           markets[arg1].field_1792,
           markets[arg1].field_2048
}

function collateralRatio() {
    return collateralRatio
}

function supplyBalances(address arg1, address arg2) {
    return supplyBalances[arg1][arg2].field_0, supplyBalances[arg1][arg2].field_256
}

function originationFee() {
    return originationFee
}

function collateralMarkets(uint256 arg1) {
    require arg1 < collateralMarkets.length
    return collateralMarkets[arg1]
}

function admin() {
    return adminAddress
}

function borrowBalances(address arg1, address arg2) {
    return borrowBalances[arg1][arg2].field_0, borrowBalances[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function _setPaused(bool arg1) {
    if adminAddress != msg.sender:
        emit Failure(2, 57, 0);
        return 2
    stor10 = uint8(arg1)
    emit SetPaused(arg1);
    return 0
}

function _setOriginationFee(uint256 arg1) {
    if adminAddress != msg.sender:
        emit Failure(2, 56, 0);
        return 2
    originationFee = arg1
    emit NewOriginationFee(originationFee, arg1);
    return 0
}

function _setPendingAdmin(address arg1) {
    if adminAddress != msg.sender:
        emit Failure(2, 58, 0);
        return 2
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress, arg1);
    return 0
}

function _acceptAdmin() {
    if pendingAdminAddress != msg.sender:
        emit Failure(2, 0, 0);
        return 2
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
    emit NewAdmin(adminAddress, msg.sender);
    return 0
}

function _setMarketInterestRateModel(address arg1, address arg2) {
    if adminAddress != msg.sender:
        emit Failure(2, 54, 0);
        return 2
    markets[address(arg1)].field_512 = arg2
    emit SetMarketInterestRateModel(address(arg1), arg2);
    return 0
}

function _suspendMarket(address arg1) {
    if adminAddress != msg.sender:
        emit Failure(2, 76, 0);
        return 2
    if markets[address(arg1)].field_0:
        markets[address(arg1)].field_0 = 0
        emit SuspendedMarket(arg1);
        return 0
    else:
        return 0
}

function assetPrices(address arg1) {
    if not oracleAddress:
        return 0
    require ext_code.size(oracleAddress)
    call oracleAddress.0x5e9a523c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _setOracle(address arg1) {
    if adminAddress != msg.sender:
        emit Failure(2, 55, 0);
        return 2
    require ext_code.size(arg1)
    call arg1.0x5e9a523c with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    oracleAddress = arg1
    emit NewOracle(oracleAddress, arg1);
    return 0
}

function _setRiskParameters(uint256 arg1, uint256 arg2) {
    if adminAddress != msg.sender:
        emit Failure(2, 59, 0);
        return 2
    if arg1 < 11 * 10^17:
        emit Failure(17, 60, 0);
        return 17
    if 10^17 < arg2:
        emit Failure(22, 60, 0);
        return 22
    require arg2 + 10^18 >= arg2
    if arg1 <= arg2 + 10^18:
        emit Failure(23, 60, 0);
        return 23
    collateralRatio = arg1
    liquidationDiscount = arg2
    emit NewRiskParameters(collateralRatio, arg1, liquidationDiscount, arg2);
    return 0
}

function _supportMarket(address arg1, address arg2) {
    if adminAddress != msg.sender:
        emit Failure(2, 74, 0);
        return 2
    if not oracleAddress:
        emit Failure(24, 73, 0);
        return 24
    require ext_code.size(oracleAddress)
    call oracleAddress.0x5e9a523c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit Failure(21, 75, 0);
        return 21
    markets[address(arg1)].field_512 = arg2
    idx = 0
    while idx < collateralMarkets.length:
        mem[0] = 6
        if collateralMarkets[idx] != arg1:
            idx = idx + 1
            continue 
        markets[address(arg1)].field_0 = 1
        if not markets[address(arg1)].field_1280:
            markets[address(arg1)].field_1280 = 10^18
        if not markets[address(arg1)].field_2048:
            markets[address(arg1)].field_2048 = 10^18
        emit SupportedMarket(address(arg1), arg2);
        return 0
    collateralMarkets.length++
    collateralMarkets[collateralMarkets.length] = arg1
    markets[address(arg1)].field_0 = 1
    if not markets[address(arg1)].field_1280:
        markets[address(arg1)].field_1280 = 10^18
    if not markets[address(arg1)].field_2048:
        markets[address(arg1)].field_2048 = 10^18
    emit SupportedMarket(address(arg1), arg2);
    return 0
}

function _withdrawEquity(address arg1, uint256 arg2) {
    if adminAddress != msg.sender:
        emit Failure(2, 19, 0);
        return 2
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + markets[address(arg1)].field_1536 < ext_call.return_data[0]:
        emit Failure(3, 18, 0);
        return 3
    if markets[address(arg1)].field_768 > ext_call.return_data[0] + markets[address(arg1)].field_1536:
        emit Failure(4, 18, 0);
        return 4
    if arg2 > ext_call.return_data[0] + markets[address(arg1)].field_1536 - markets[address(arg1)].field_768:
        emit Failure(19, 17, 0);
        return 19
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not return_data.size:
        emit EquityWithdrawn(address(arg1), ext_call.return_data[0] + markets[address(arg1)].field_1536 - markets[address(arg1)].field_768, arg2, adminAddress);
        return 0
    require return_data.size == 32
    if ext_call.return_data[0]:
        emit EquityWithdrawn(address(arg1), ext_call.return_data[0] + markets[address(arg1)].field_1536 - markets[address(arg1)].field_768, arg2, adminAddress);
        return 0
    emit Failure(14, 20, 0);
    return 14
}

function getBorrowBalance(address arg1, address arg2) {
    require markets[address(arg2)].field_256 <= block.number
    if not markets[address(arg2)].field_1792:
        require 10^18 * markets[address(arg2)].field_2048 / 10^18 == markets[address(arg2)].field_2048
        if not borrowBalances[address(arg1)][address(arg2)].field_0:
            return 0
        if borrowBalances[address(arg1)][address(arg2)].field_0:
            require borrowBalances[address(arg1)][address(arg2)].field_0 * 10^18 * markets[address(arg2)].field_2048 / 10^18 / borrowBalances[address(arg1)][address(arg2)].field_0 == 10^18 * markets[address(arg2)].field_2048 / 10^18
            require borrowBalances[address(arg1)][address(arg2)].field_256
            if borrowBalances[address(arg1)][address(arg2)].field_256:
                return (borrowBalances[address(arg1)][address(arg2)].field_0 * 10^18 * markets[address(arg2)].field_2048 / 10^18 / borrowBalances[address(arg1)][address(arg2)].field_256)
    else:
        if markets[address(arg2)].field_1792:
            require (block.number * markets[address(arg2)].field_1792) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1792) / markets[address(arg2)].field_1792 == block.number - markets[address(arg2)].field_256
            if not (block.number * markets[address(arg2)].field_1792) + (-1 * markets[address(arg2)].field_256 * markets[address(arg2)].field_1792) + 10^18:
                if not borrowBalances[address(arg1)][address(arg2)].field_0:
                    return 0
                if borrowBalances[address(arg1)][address(arg2)].field_0:
                    require borrowBalances[address(arg1)][address(arg2)].field_0 * 0 / 10^18 / borrowBalances[address(arg1)][address(arg2)].field_0 == 0 / 10^18
                    require borrowBalances[address(arg1)][address(arg2)].field_256
                    if borrowBalances[address(arg1)][address(arg2)].field_256:
                        return (0 / borrowBalances[address(arg1)][address(arg2)].field_256)
            else:
                if (block.number * markets[address(arg2)].field_1792) + (-1 * markets[address(arg2)].field_256 * markets[address(arg2)].field_1792) + 10^18:
                    require (block.number * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) + (10^18 * markets[address(arg2)].field_2048) / (block.number * markets[address(arg2)].field_1792) + (-1 * markets[address(arg2)].field_256 * markets[address(arg2)].field_1792) + 10^18 == markets[address(arg2)].field_2048
                    if not borrowBalances[address(arg1)][address(arg2)].field_0:
                        return 0
                    if borrowBalances[address(arg1)][address(arg2)].field_0:
                        require borrowBalances[address(arg1)][address(arg2)].field_0 * (10^18 * markets[address(arg2)].field_2048) + (block.number * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) / 10^18 / borrowBalances[address(arg1)][address(arg2)].field_0 == (10^18 * markets[address(arg2)].field_2048) + (block.number * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) / 10^18
                        require borrowBalances[address(arg1)][address(arg2)].field_256
                        if borrowBalances[address(arg1)][address(arg2)].field_256:
                            return (borrowBalances[address(arg1)][address(arg2)].field_0 * (10^18 * markets[address(arg2)].field_2048) + (block.number * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) / 10^18 / borrowBalances[address(arg1)][address(arg2)].field_256)
    revert
}

function getSupplyBalance(address arg1, address arg2) {
    require markets[address(arg2)].field_256 <= block.number
    if not markets[address(arg2)].field_1024:
        require 10^18 * markets[address(arg2)].field_1280 / 10^18 == markets[address(arg2)].field_1280
        if not supplyBalances[address(arg1)][address(arg2)].field_0:
            return 0
        if supplyBalances[address(arg1)][address(arg2)].field_0:
            require supplyBalances[address(arg1)][address(arg2)].field_0 * 10^18 * markets[address(arg2)].field_1280 / 10^18 / supplyBalances[address(arg1)][address(arg2)].field_0 == 10^18 * markets[address(arg2)].field_1280 / 10^18
            require supplyBalances[address(arg1)][address(arg2)].field_256
            if supplyBalances[address(arg1)][address(arg2)].field_256:
                return (supplyBalances[address(arg1)][address(arg2)].field_0 * 10^18 * markets[address(arg2)].field_1280 / 10^18 / supplyBalances[address(arg1)][address(arg2)].field_256)
    else:
        if markets[address(arg2)].field_1024:
            require (block.number * markets[address(arg2)].field_1024) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1024) / markets[address(arg2)].field_1024 == block.number - markets[address(arg2)].field_256
            if not (block.number * markets[address(arg2)].field_1024) + (-1 * markets[address(arg2)].field_256 * markets[address(arg2)].field_1024) + 10^18:
                if not supplyBalances[address(arg1)][address(arg2)].field_0:
                    return 0
                if supplyBalances[address(arg1)][address(arg2)].field_0:
                    require supplyBalances[address(arg1)][address(arg2)].field_0 * 0 / 10^18 / supplyBalances[address(arg1)][address(arg2)].field_0 == 0 / 10^18
                    require supplyBalances[address(arg1)][address(arg2)].field_256
                    if supplyBalances[address(arg1)][address(arg2)].field_256:
                        return (0 / supplyBalances[address(arg1)][address(arg2)].field_256)
            else:
                if (block.number * markets[address(arg2)].field_1024) + (-1 * markets[address(arg2)].field_256 * markets[address(arg2)].field_1024) + 10^18:
                    require (block.number * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) + (10^18 * markets[address(arg2)].field_1280) / (block.number * markets[address(arg2)].field_1024) + (-1 * markets[address(arg2)].field_256 * markets[address(arg2)].field_1024) + 10^18 == markets[address(arg2)].field_1280
                    if not supplyBalances[address(arg1)][address(arg2)].field_0:
                        return 0
                    if supplyBalances[address(arg1)][address(arg2)].field_0:
                        require supplyBalances[address(arg1)][address(arg2)].field_0 * (10^18 * markets[address(arg2)].field_1280) + (block.number * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) / 10^18 / supplyBalances[address(arg1)][address(arg2)].field_0 == (10^18 * markets[address(arg2)].field_1280) + (block.number * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) / 10^18
                        require supplyBalances[address(arg1)][address(arg2)].field_256
                        if supplyBalances[address(arg1)][address(arg2)].field_256:
                            return (supplyBalances[address(arg1)][address(arg2)].field_0 * (10^18 * markets[address(arg2)].field_1280) + (block.number * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) / 10^18 / supplyBalances[address(arg1)][address(arg2)].field_256)
    revert
}

function supply(address arg1, uint256 arg2) {
    if stor10:
        emit Failure(25, 62, 0);
        return 25
    if not markets[address(arg1)].field_0:
        emit Failure(10, 63, 0);
        return 10
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        emit Failure(7, 72, 0);
        return 7
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        emit Failure(8, 72, 0);
        return 8
    if markets[address(arg1)].field_256 > block.number:
        emit Failure(4, 66, 0);
        return 4
    if not markets[address(arg1)].field_1024:
        if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
            emit Failure(3, 66, 0);
            return 3
        if not supplyBalances[address(msg.sender)][address(arg1)].field_0:
            if arg2 < 0:
                emit Failure(3, 68, 0);
                return 3
            if markets[address(arg1)].field_768 + arg2 < markets[address(arg1)].field_768:
                emit Failure(3, 70, 0);
                return 3
            if supplyBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_768 + arg2:
                emit Failure(4, 70, 0);
                return 4
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                emit Failure(3, 69, 0);
                return 3
            require ext_code.size(markets[address(arg1)].field_512)
            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                emit Failure(1, 67, ext_call.return_data[0]);
                return 1
            if markets[address(arg1)].field_256 > block.number:
                emit Failure(4, 64, 0);
                return 4
            if not markets[address(arg1)].field_1792:
                if 10^18 * markets[address(arg1)].field_2048 / 10^18 != markets[address(arg1)].field_2048:
                    emit Failure(3, 64, 0);
                    return 3
                require ext_code.size(markets[address(arg1)].field_512)
                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    emit Failure(1, 65, ext_call.return_data[0]);
                    return 1
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        emit Failure(9, 71, 0);
                        return 9
                markets[address(arg1)].field_256 = block.number
                markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                markets[address(arg1)].field_1792 = ext_call.return_data[32]
                markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
            else:
                require markets[address(arg1)].field_1792
                if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                    emit Failure(3, 64, 0);
                    return 3
                if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 0
                else:
                    require (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18
                    if (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) + (10^18 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                        emit Failure(3, 64, 0);
                        return 3
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
            supplyBalances[address(msg.sender)][address(arg1)].field_0 = arg2
            supplyBalances[address(msg.sender)][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_1280 / 10^18
            emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[address(msg.sender)][address(arg1)].field_0, arg2);
        else:
            require supplyBalances[address(msg.sender)][address(arg1)].field_0
            if supplyBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_1280 / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_0 != 10^18 * markets[address(arg1)].field_1280 / 10^18:
                emit Failure(3, 61, 0);
                return 3
            if not supplyBalances[address(msg.sender)][address(arg1)].field_256:
                emit Failure(5, 61, 0);
                return 5
            require supplyBalances[address(msg.sender)][address(arg1)].field_256
            if (supplyBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_1280 / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 < supplyBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_1280 / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256:
                emit Failure(3, 68, 0);
                return 3
            if markets[address(arg1)].field_768 + (supplyBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_1280 / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 < markets[address(arg1)].field_768:
                emit Failure(3, 70, 0);
                return 3
            if supplyBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_768 + (supplyBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_1280 / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2:
                emit Failure(4, 70, 0);
                return 4
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                emit Failure(3, 69, 0);
                return 3
            require ext_code.size(markets[address(arg1)].field_512)
            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                emit Failure(1, 67, ext_call.return_data[0]);
                return 1
            if markets[address(arg1)].field_256 > block.number:
                emit Failure(4, 64, 0);
                return 4
            if not markets[address(arg1)].field_1792:
                if 10^18 * markets[address(arg1)].field_2048 / 10^18 != markets[address(arg1)].field_2048:
                    emit Failure(3, 64, 0);
                    return 3
                require ext_code.size(markets[address(arg1)].field_512)
                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    emit Failure(1, 65, ext_call.return_data[0]);
                    return 1
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        emit Failure(9, 71, 0);
                        return 9
                markets[address(arg1)].field_256 = block.number
                markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (supplyBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_1280 / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                markets[address(arg1)].field_1792 = ext_call.return_data[32]
                markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
            else:
                require markets[address(arg1)].field_1792
                if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                    emit Failure(3, 64, 0);
                    return 3
                if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (supplyBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_1280 / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 0
                else:
                    require (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18
                    if (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) + (10^18 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                        emit Failure(3, 64, 0);
                        return 3
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (supplyBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_1280 / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
            supplyBalances[address(msg.sender)][address(arg1)].field_0 = (supplyBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_1280 / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2
            supplyBalances[address(msg.sender)][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_1280 / 10^18
            emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[address(msg.sender)][address(arg1)].field_0, (supplyBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_1280 / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2);
    else:
        require markets[address(arg1)].field_1024
        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
            emit Failure(3, 66, 0);
            return 3
        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
            if not supplyBalances[address(msg.sender)][address(arg1)].field_0:
                if arg2 < 0:
                    emit Failure(3, 68, 0);
                    return 3
                if markets[address(arg1)].field_768 + arg2 < markets[address(arg1)].field_768:
                    emit Failure(3, 70, 0);
                    return 3
                if supplyBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_768 + arg2:
                    emit Failure(4, 70, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                    emit Failure(3, 69, 0);
                    return 3
                require ext_code.size(markets[address(arg1)].field_512)
                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    emit Failure(1, 67, ext_call.return_data[0]);
                    return 1
                if markets[address(arg1)].field_256 > block.number:
                    emit Failure(4, 64, 0);
                    return 4
                if not markets[address(arg1)].field_1792:
                    if 10^18 * markets[address(arg1)].field_2048 / 10^18 != markets[address(arg1)].field_2048:
                        emit Failure(3, 64, 0);
                        return 3
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 0
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                else:
                    require markets[address(arg1)].field_1792
                    if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 64, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                    else:
                        require (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18
                        if (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) + (10^18 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                            emit Failure(3, 64, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                supplyBalances[address(msg.sender)][address(arg1)].field_0 = arg2
                supplyBalances[address(msg.sender)][address(arg1)].field_256 = 0
                emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[address(msg.sender)][address(arg1)].field_0, arg2);
            else:
                require supplyBalances[address(msg.sender)][address(arg1)].field_0
                if 0 / supplyBalances[address(msg.sender)][address(arg1)].field_0:
                    emit Failure(3, 61, 0);
                    return 3
                if not supplyBalances[address(msg.sender)][address(arg1)].field_256:
                    emit Failure(5, 61, 0);
                    return 5
                require supplyBalances[address(msg.sender)][address(arg1)].field_256
                if (0 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 < 0 / supplyBalances[address(msg.sender)][address(arg1)].field_256:
                    emit Failure(3, 68, 0);
                    return 3
                if markets[address(arg1)].field_768 + (0 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 < markets[address(arg1)].field_768:
                    emit Failure(3, 70, 0);
                    return 3
                if supplyBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_768 + (0 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2:
                    emit Failure(4, 70, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                    emit Failure(3, 69, 0);
                    return 3
                require ext_code.size(markets[address(arg1)].field_512)
                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    emit Failure(1, 67, ext_call.return_data[0]);
                    return 1
                if markets[address(arg1)].field_256 > block.number:
                    emit Failure(4, 64, 0);
                    return 4
                if not markets[address(arg1)].field_1792:
                    if 10^18 * markets[address(arg1)].field_2048 / 10^18 != markets[address(arg1)].field_2048:
                        emit Failure(3, 64, 0);
                        return 3
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (0 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 0
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                else:
                    require markets[address(arg1)].field_1792
                    if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 64, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (0 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                    else:
                        require (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18
                        if (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) + (10^18 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                            emit Failure(3, 64, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (0 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                supplyBalances[address(msg.sender)][address(arg1)].field_0 = (0 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2
                supplyBalances[address(msg.sender)][address(arg1)].field_256 = 0
                emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[address(msg.sender)][address(arg1)].field_0, (0 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2);
        else:
            require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
            if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                emit Failure(3, 66, 0);
                return 3
            if not supplyBalances[address(msg.sender)][address(arg1)].field_0:
                if arg2 < 0:
                    emit Failure(3, 68, 0);
                    return 3
                if markets[address(arg1)].field_768 + arg2 < markets[address(arg1)].field_768:
                    emit Failure(3, 70, 0);
                    return 3
                if supplyBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_768 + arg2:
                    emit Failure(4, 70, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                    emit Failure(3, 69, 0);
                    return 3
                require ext_code.size(markets[address(arg1)].field_512)
                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    emit Failure(1, 67, ext_call.return_data[0]);
                    return 1
                if markets[address(arg1)].field_256 > block.number:
                    emit Failure(4, 64, 0);
                    return 4
                if not markets[address(arg1)].field_1792:
                    if 10^18 * markets[address(arg1)].field_2048 / 10^18 != markets[address(arg1)].field_2048:
                        emit Failure(3, 64, 0);
                        return 3
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                else:
                    require markets[address(arg1)].field_1792
                    if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 64, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                    else:
                        require (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18
                        if (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) + (10^18 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                            emit Failure(3, 64, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                supplyBalances[address(msg.sender)][address(arg1)].field_0 = arg2
                supplyBalances[address(msg.sender)][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[address(msg.sender)][address(arg1)].field_0, arg2);
            else:
                require supplyBalances[address(msg.sender)][address(arg1)].field_0
                if supplyBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_0 != (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18:
                    emit Failure(3, 61, 0);
                    return 3
                if not supplyBalances[address(msg.sender)][address(arg1)].field_256:
                    emit Failure(5, 61, 0);
                    return 5
                require supplyBalances[address(msg.sender)][address(arg1)].field_256
                if (supplyBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 < supplyBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256:
                    emit Failure(3, 68, 0);
                    return 3
                if markets[address(arg1)].field_768 + (supplyBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 < markets[address(arg1)].field_768:
                    emit Failure(3, 70, 0);
                    return 3
                if supplyBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_768 + (supplyBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2:
                    emit Failure(4, 70, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                    emit Failure(3, 69, 0);
                    return 3
                require ext_code.size(markets[address(arg1)].field_512)
                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    emit Failure(1, 67, ext_call.return_data[0]);
                    return 1
                if markets[address(arg1)].field_256 > block.number:
                    emit Failure(4, 64, 0);
                    return 4
                if not markets[address(arg1)].field_1792:
                    if 10^18 * markets[address(arg1)].field_2048 / 10^18 != markets[address(arg1)].field_2048:
                        emit Failure(3, 64, 0);
                        return 3
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (supplyBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                else:
                    require markets[address(arg1)].field_1792
                    if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 64, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (supplyBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                    else:
                        require (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18
                        if (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) + (10^18 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                            emit Failure(3, 64, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (supplyBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2 - supplyBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                supplyBalances[address(msg.sender)][address(arg1)].field_0 = (supplyBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2
                supplyBalances[address(msg.sender)][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[address(msg.sender)][address(arg1)].field_0, (supplyBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 / supplyBalances[address(msg.sender)][address(arg1)].field_256) + arg2);
    return 0
}

function repayBorrow(address arg1, uint256 arg2) {
    if stor10:
        emit Failure(25, 43, 0);
        return 25
    if markets[address(arg1)].field_256 > block.number:
        emit Failure(4, 44, 0);
        return 4
    if not markets[address(arg1)].field_1792:
        if 10^18 * markets[address(arg1)].field_2048 / 10^18 != markets[address(arg1)].field_2048:
            emit Failure(3, 44, 0);
            return 3
        if not borrowBalances[address(msg.sender)][address(arg1)].field_0:
            if arg2 != -1:
                if arg2 > 0:
                    emit Failure(4, 48, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0xdd62ed3e with:
                     gas gas_remaining wei
                    args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    emit Failure(7, 52, 0);
                    return 7
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    emit Failure(8, 52, 0);
                    return 8
                if markets[address(arg1)].field_1536 - arg2 < markets[address(arg1)].field_1536:
                    emit Failure(3, 49, 0);
                    return 3
                if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 - arg2:
                    emit Failure(4, 49, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                    emit Failure(3, 50, 0);
                    return 3
                if markets[address(arg1)].field_256 > block.number:
                    emit Failure(4, 46, 0);
                    return 4
                if not markets[address(arg1)].field_1024:
                    if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                        emit Failure(3, 46, 0);
                        return 3
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 47, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 45, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 51, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                else:
                    require markets[address(arg1)].field_1024
                    if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 46, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                    else:
                        require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                        if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                markets[address(arg1)].field_1792 = ext_call.return_data[32]
                markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                borrowBalances[address(msg.sender)][address(arg1)].field_0 = -arg2
                borrowBalances[address(msg.sender)][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[address(msg.sender)][address(arg1)].field_0, -arg2);
            else:
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0:
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        emit Failure(7, 52, 0);
                        return 7
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        emit Failure(8, 52, 0);
                        return 8
                    if markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        emit Failure(3, 50, 0);
                        return 3
                    if markets[address(arg1)].field_256 > block.number:
                        emit Failure(4, 46, 0);
                        return 4
                    if not markets[address(arg1)].field_1024:
                        if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        require markets[address(arg1)].field_1024
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                            if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    borrowBalances[address(msg.sender)][address(arg1)].field_0 = 0
                    borrowBalances[address(msg.sender)][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), 0, borrowBalances[address(msg.sender)][address(arg1)].field_0, 0);
                else:
                    if ext_call.return_data[0] > 0:
                        emit Failure(4, 48, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        emit Failure(7, 52, 0);
                        return 7
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        emit Failure(8, 52, 0);
                        return 8
                    if markets[address(arg1)].field_1536 - ext_call.return_data[0] < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 - ext_call.return_data[0]:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        emit Failure(3, 50, 0);
                        return 3
                    if markets[address(arg1)].field_256 > block.number:
                        emit Failure(4, 46, 0);
                        return 4
                    if not markets[address(arg1)].field_1024:
                        if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        require markets[address(arg1)].field_1024
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                            if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    borrowBalances[address(msg.sender)][address(arg1)].field_0 = -ext_call.return_data[0]
                    borrowBalances[address(msg.sender)][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[address(msg.sender)][address(arg1)].field_0, -ext_call.return_data[0]);
        else:
            require borrowBalances[address(msg.sender)][address(arg1)].field_0
            if borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_0 != 10^18 * markets[address(arg1)].field_2048 / 10^18:
                emit Failure(3, 42, 0);
                return 3
            if not borrowBalances[address(msg.sender)][address(arg1)].field_256:
                emit Failure(5, 42, 0);
                return 5
            require borrowBalances[address(msg.sender)][address(arg1)].field_256
            if arg2 != -1:
                if arg2 > borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                    emit Failure(4, 48, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0xdd62ed3e with:
                     gas gas_remaining wei
                    args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    emit Failure(7, 52, 0);
                    return 7
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    emit Failure(8, 52, 0);
                    return 8
                if markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 < markets[address(arg1)].field_1536:
                    emit Failure(3, 49, 0);
                    return 3
                if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2:
                    emit Failure(4, 49, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                    emit Failure(3, 50, 0);
                    return 3
                if markets[address(arg1)].field_256 > block.number:
                    emit Failure(4, 46, 0);
                    return 4
                if not markets[address(arg1)].field_1024:
                    if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                        emit Failure(3, 46, 0);
                        return 3
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 47, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 45, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 51, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                else:
                    require markets[address(arg1)].field_1024
                    if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 46, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                    else:
                        require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                        if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                markets[address(arg1)].field_1792 = ext_call.return_data[32]
                markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                borrowBalances[address(msg.sender)][address(arg1)].field_0 = (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2
                borrowBalances[address(msg.sender)][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[address(msg.sender)][address(arg1)].field_0, (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2);
            else:
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                    if borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256 > borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                        emit Failure(4, 48, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                        emit Failure(7, 52, 0);
                        return 7
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                        emit Failure(8, 52, 0);
                        return 8
                    if markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) < ext_call.return_data[0]:
                        emit Failure(3, 50, 0);
                        return 3
                    if markets[address(arg1)].field_256 > block.number:
                        emit Failure(4, 46, 0);
                        return 4
                    if not markets[address(arg1)].field_1024:
                        if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        require markets[address(arg1)].field_1024
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                            if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    borrowBalances[address(msg.sender)][address(arg1)].field_0 = 0
                    borrowBalances[address(msg.sender)][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256, borrowBalances[address(msg.sender)][address(arg1)].field_0, 0);
                else:
                    if ext_call.return_data[0] > borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                        emit Failure(4, 48, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        emit Failure(7, 52, 0);
                        return 7
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        emit Failure(8, 52, 0);
                        return 8
                    if markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0]:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        emit Failure(3, 50, 0);
                        return 3
                    if markets[address(arg1)].field_256 > block.number:
                        emit Failure(4, 46, 0);
                        return 4
                    if not markets[address(arg1)].field_1024:
                        if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        require markets[address(arg1)].field_1024
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                            if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    borrowBalances[address(msg.sender)][address(arg1)].field_0 = (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0]
                    borrowBalances[address(msg.sender)][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[address(msg.sender)][address(arg1)].field_0, (borrowBalances[address(msg.sender)][address(arg1)].field_0 * 10^18 * markets[address(arg1)].field_2048 / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0]);
    else:
        require markets[address(arg1)].field_1792
        if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
            emit Failure(3, 44, 0);
            return 3
        if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
            if not borrowBalances[address(msg.sender)][address(arg1)].field_0:
                if arg2 != -1:
                    if arg2 > 0:
                        emit Failure(4, 48, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        emit Failure(7, 52, 0);
                        return 7
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        emit Failure(8, 52, 0);
                        return 8
                    if markets[address(arg1)].field_1536 - arg2 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 - arg2:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                        emit Failure(3, 50, 0);
                        return 3
                    if markets[address(arg1)].field_256 > block.number:
                        emit Failure(4, 46, 0);
                        return 4
                    if not markets[address(arg1)].field_1024:
                        if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        require markets[address(arg1)].field_1024
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                            if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 0
                    borrowBalances[address(msg.sender)][address(arg1)].field_0 = -arg2
                    borrowBalances[address(msg.sender)][address(arg1)].field_256 = 0
                    emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[address(msg.sender)][address(arg1)].field_0, -arg2);
                else:
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        require ext_code.size(arg1)
                        call arg1.0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            emit Failure(7, 52, 0);
                            return 7
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            emit Failure(8, 52, 0);
                            return 8
                        if markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536:
                            emit Failure(4, 49, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(3, 50, 0);
                            return 3
                        if markets[address(arg1)].field_256 > block.number:
                            emit Failure(4, 46, 0);
                            return 4
                        if not markets[address(arg1)].field_1024:
                            if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            require markets[address(arg1)].field_1024
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                                if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                        borrowBalances[address(msg.sender)][address(arg1)].field_0 = 0
                        borrowBalances[address(msg.sender)][address(arg1)].field_256 = 0
                        emit BorrowRepaid(msg.sender, address(arg1), 0, borrowBalances[address(msg.sender)][address(arg1)].field_0, 0);
                    else:
                        if ext_call.return_data[0] > 0:
                            emit Failure(4, 48, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(7, 52, 0);
                            return 7
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(8, 52, 0);
                            return 8
                        if markets[address(arg1)].field_1536 - ext_call.return_data[0] < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 - ext_call.return_data[0]:
                            emit Failure(4, 49, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(3, 50, 0);
                            return 3
                        if markets[address(arg1)].field_256 > block.number:
                            emit Failure(4, 46, 0);
                            return 4
                        if not markets[address(arg1)].field_1024:
                            if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            require markets[address(arg1)].field_1024
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                                if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                        borrowBalances[address(msg.sender)][address(arg1)].field_0 = -ext_call.return_data[0]
                        borrowBalances[address(msg.sender)][address(arg1)].field_256 = 0
                        emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[address(msg.sender)][address(arg1)].field_0, -ext_call.return_data[0]);
            else:
                require borrowBalances[address(msg.sender)][address(arg1)].field_0
                if 0 / borrowBalances[address(msg.sender)][address(arg1)].field_0:
                    emit Failure(3, 42, 0);
                    return 3
                if not borrowBalances[address(msg.sender)][address(arg1)].field_256:
                    emit Failure(5, 42, 0);
                    return 5
                require borrowBalances[address(msg.sender)][address(arg1)].field_256
                if arg2 != -1:
                    if arg2 > 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                        emit Failure(4, 48, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        emit Failure(7, 52, 0);
                        return 7
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        emit Failure(8, 52, 0);
                        return 8
                    if markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                        emit Failure(3, 50, 0);
                        return 3
                    if markets[address(arg1)].field_256 > block.number:
                        emit Failure(4, 46, 0);
                        return 4
                    if not markets[address(arg1)].field_1024:
                        if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        require markets[address(arg1)].field_1024
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                            if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 0
                    borrowBalances[address(msg.sender)][address(arg1)].field_0 = (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2
                    borrowBalances[address(msg.sender)][address(arg1)].field_256 = 0
                    emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[address(msg.sender)][address(arg1)].field_0, (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2);
                else:
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                        if 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256 > 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                            emit Failure(4, 48, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                            emit Failure(7, 52, 0);
                            return 7
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                            emit Failure(8, 52, 0);
                            return 8
                        if markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536:
                            emit Failure(4, 49, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) < ext_call.return_data[0]:
                            emit Failure(3, 50, 0);
                            return 3
                        if markets[address(arg1)].field_256 > block.number:
                            emit Failure(4, 46, 0);
                            return 4
                        if not markets[address(arg1)].field_1024:
                            if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            require markets[address(arg1)].field_1024
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0] + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0] + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                                if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0] + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0] + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                        borrowBalances[address(msg.sender)][address(arg1)].field_0 = 0
                        borrowBalances[address(msg.sender)][address(arg1)].field_256 = 0
                        emit BorrowRepaid(msg.sender, address(arg1), 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256, borrowBalances[address(msg.sender)][address(arg1)].field_0, 0);
                    else:
                        if ext_call.return_data[0] > 0 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                            emit Failure(4, 48, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(7, 52, 0);
                            return 7
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(8, 52, 0);
                            return 8
                        if markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0]:
                            emit Failure(4, 49, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(3, 50, 0);
                            return 3
                        if markets[address(arg1)].field_256 > block.number:
                            emit Failure(4, 46, 0);
                            return 4
                        if not markets[address(arg1)].field_1024:
                            if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            require markets[address(arg1)].field_1024
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                                if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                        borrowBalances[address(msg.sender)][address(arg1)].field_0 = (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0]
                        borrowBalances[address(msg.sender)][address(arg1)].field_256 = 0
                        emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[address(msg.sender)][address(arg1)].field_0, (0 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0]);
        else:
            require (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18
            if (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) + (10^18 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                emit Failure(3, 44, 0);
                return 3
            if not borrowBalances[address(msg.sender)][address(arg1)].field_0:
                if arg2 != -1:
                    if arg2 > 0:
                        emit Failure(4, 48, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        emit Failure(7, 52, 0);
                        return 7
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        emit Failure(8, 52, 0);
                        return 8
                    if markets[address(arg1)].field_1536 - arg2 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 - arg2:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                        emit Failure(3, 50, 0);
                        return 3
                    if markets[address(arg1)].field_256 > block.number:
                        emit Failure(4, 46, 0);
                        return 4
                    if not markets[address(arg1)].field_1024:
                        if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        require markets[address(arg1)].field_1024
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                            if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                    borrowBalances[address(msg.sender)][address(arg1)].field_0 = -arg2
                    borrowBalances[address(msg.sender)][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[address(msg.sender)][address(arg1)].field_0, -arg2);
                else:
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        require ext_code.size(arg1)
                        call arg1.0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            emit Failure(7, 52, 0);
                            return 7
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            emit Failure(8, 52, 0);
                            return 8
                        if markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536:
                            emit Failure(4, 49, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(3, 50, 0);
                            return 3
                        if markets[address(arg1)].field_256 > block.number:
                            emit Failure(4, 46, 0);
                            return 4
                        if not markets[address(arg1)].field_1024:
                            if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            require markets[address(arg1)].field_1024
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                                if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        borrowBalances[address(msg.sender)][address(arg1)].field_0 = 0
                        borrowBalances[address(msg.sender)][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        emit BorrowRepaid(msg.sender, address(arg1), 0, borrowBalances[address(msg.sender)][address(arg1)].field_0, 0);
                    else:
                        if ext_call.return_data[0] > 0:
                            emit Failure(4, 48, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(7, 52, 0);
                            return 7
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(8, 52, 0);
                            return 8
                        if markets[address(arg1)].field_1536 - ext_call.return_data[0] < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 - ext_call.return_data[0]:
                            emit Failure(4, 49, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(3, 50, 0);
                            return 3
                        if markets[address(arg1)].field_256 > block.number:
                            emit Failure(4, 46, 0);
                            return 4
                        if not markets[address(arg1)].field_1024:
                            if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            require markets[address(arg1)].field_1024
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                                if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        borrowBalances[address(msg.sender)][address(arg1)].field_0 = -ext_call.return_data[0]
                        borrowBalances[address(msg.sender)][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[address(msg.sender)][address(arg1)].field_0, -ext_call.return_data[0]);
            else:
                require borrowBalances[address(msg.sender)][address(arg1)].field_0
                if borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_0 != (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18:
                    emit Failure(3, 42, 0);
                    return 3
                if not borrowBalances[address(msg.sender)][address(arg1)].field_256:
                    emit Failure(5, 42, 0);
                    return 5
                require borrowBalances[address(msg.sender)][address(arg1)].field_256
                if arg2 != -1:
                    if arg2 > borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                        emit Failure(4, 48, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        emit Failure(7, 52, 0);
                        return 7
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        emit Failure(8, 52, 0);
                        return 8
                    if markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                        emit Failure(3, 50, 0);
                        return 3
                    if markets[address(arg1)].field_256 > block.number:
                        emit Failure(4, 46, 0);
                        return 4
                    if not markets[address(arg1)].field_1024:
                        if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        require markets[address(arg1)].field_1024
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                            if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + arg2, markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                    borrowBalances[address(msg.sender)][address(arg1)].field_0 = (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2
                    borrowBalances[address(msg.sender)][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[address(msg.sender)][address(arg1)].field_0, (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - arg2);
                else:
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                        if borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256 > borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                            emit Failure(4, 48, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                            emit Failure(7, 52, 0);
                            return 7
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                            emit Failure(8, 52, 0);
                            return 8
                        if markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536:
                            emit Failure(4, 49, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) < ext_call.return_data[0]:
                            emit Failure(3, 50, 0);
                            return 3
                        if markets[address(arg1)].field_256 > block.number:
                            emit Failure(4, 46, 0);
                            return 4
                        if not markets[address(arg1)].field_1024:
                            if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            require markets[address(arg1)].field_1024
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                                if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0] + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256), markets[address(arg1)].field_1536 - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        borrowBalances[address(msg.sender)][address(arg1)].field_0 = 0
                        borrowBalances[address(msg.sender)][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        emit BorrowRepaid(msg.sender, address(arg1), borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256, borrowBalances[address(msg.sender)][address(arg1)].field_0, 0);
                    else:
                        if ext_call.return_data[0] > borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256:
                            emit Failure(4, 48, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(7, 52, 0);
                            return 7
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(8, 52, 0);
                            return 8
                        if markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[address(msg.sender)][address(arg1)].field_0 > markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0]:
                            emit Failure(4, 49, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            emit Failure(3, 50, 0);
                            return 3
                        if markets[address(arg1)].field_256 > block.number:
                            emit Failure(4, 46, 0);
                            return 4
                        if not markets[address(arg1)].field_1024:
                            if 10^18 * markets[address(arg1)].field_1280 / 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            require markets[address(arg1)].field_1024
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                require (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18
                                if (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) + (10^18 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = markets[address(arg1)].field_1536 + (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0] - borrowBalances[address(msg.sender)][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        borrowBalances[address(msg.sender)][address(arg1)].field_0 = (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0]
                        borrowBalances[address(msg.sender)][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[address(msg.sender)][address(arg1)].field_0, (borrowBalances[address(msg.sender)][address(arg1)].field_0 * (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 / borrowBalances[address(msg.sender)][address(arg1)].field_256) - ext_call.return_data[0]);
    return 0
}

function calculateAccountValues(address arg1) {
    mem[96] = 0
    mem[160] = 0
    mem[192] = 0
    mem[416] = 0
    mem[224] = 416
    mem[448] = 0
    mem[288] = 0
    mem[320] = 0
    mem[480] = 0
    mem[352] = 480
    mem[512] = 0
    mem[544] = 0
    mem[256] = 544
    mem[64] = 608
    mem[576] = 0
    mem[384] = 576
    mem[128] = collateralMarkets.length
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < collateralMarkets.length:
        require idx < collateralMarkets.length
        mem[96] = collateralMarkets[idx]
        mem[0] = collateralMarkets[idx]
        mem[32] = sha3(address(arg1), 4)
        if supplyBalances[address(arg1)][stor6[idx]].field_0 <= 0:
            if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                _1361 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1361] = 0
                _1363 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1363] = 0
                _1365 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1365] = 0
                if markets[stor6[idx]].field_256 > block.number:
                    return 4, 0, 0
                _1367 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1367] = markets[stor6[idx]].field_1792
                _1369 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1369] = 0
                if not markets[stor6[idx]].field_1792:
                    _1373 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1373] = 0
                    _1383 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1383] = 10^18
                    _1387 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1387] = 0
                    _1401 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1401] = 10^18
                    _1407 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1407] = 0
                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                        return 3, 0, 0
                    _1424 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1424] = 10^18 * markets[stor6[idx]].field_2048
                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                        mem[320] = 0
                        _1484 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1484] = 0
                        _1491 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1491] = 0
                        _1502 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1502] = 0
                        if not oracleAddress:
                            return 24, 0, 0
                        mem[mem[64] + 4] = collateralMarkets[idx]
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0x5e9a523c with:
                             gas gas_remaining wei
                            args collateralMarkets[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1546 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1546] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _1653 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1653] = 0
                        if not ext_call.return_data[0]:
                            _1742 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1742] = 0
                            mem[352] = _1742
                            _1816 = mem[384]
                            _1846 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1846] = 0
                            _1859 = mem[_1816]
                            if mem[_1816] < 0:
                                return 3, 0, 0
                            _1923 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1923] = _1859
                            mem[384] = _1923
                        else:
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0]:
                                return 3, 0, 0
                            _1763 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1763] = 0
                            mem[352] = _1763
                            _1845 = mem[384]
                            _1879 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1879] = 0
                            _1894 = mem[_1845]
                            if mem[_1845] < 0:
                                return 3, 0, 0
                            _1957 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1957] = _1894
                            mem[384] = _1957
                    else:
                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                            return 3, 0, 0
                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                            return 5, 0, 0
                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                        _1585 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1585] = 0
                        _1605 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1605] = 0
                        _1641 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1641] = 0
                        if not oracleAddress:
                            return 24, 0, 0
                        mem[mem[64] + 4] = collateralMarkets[idx]
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0x5e9a523c with:
                             gas gas_remaining wei
                            args collateralMarkets[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1708 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1708] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _1801 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1801] = 0
                        if not ext_call.return_data[0]:
                            _1921 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1921] = 0
                            mem[352] = _1921
                            _2004 = mem[384]
                            _2029 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2029] = 0
                            _2046 = mem[_2004]
                            if mem[_2004] < 0:
                                return 3, 0, 0
                            _2128 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2128] = _2046
                            mem[384] = _2128
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                return 3, 0, 0
                            _1954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1954] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                            mem[352] = _1954
                            _2028 = mem[384]
                            _2060 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2060] = 0
                            _2089 = mem[_2028]
                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_2028] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                return 3, 0, 0
                            _2156 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2156] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _2089
                            mem[384] = _2156
                else:
                    require markets[stor6[idx]].field_1792
                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                        return 3, 0, 0
                    _1376 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1376] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                    _1386 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1386] = 10^18
                    _1393 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1393] = 0
                    _1405 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1405] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                    _1413 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1413] = 0
                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                        _1423 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1423] = 0
                        mem[288] = 0 / 10^18
                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                            mem[320] = 0
                            _1483 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1483] = 0
                            _1490 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1490] = 0
                            _1501 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1501] = 0
                            if not oracleAddress:
                                return 24, 0, 0
                            mem[mem[64] + 4] = collateralMarkets[idx]
                            require ext_code.size(oracleAddress)
                            call oracleAddress.0x5e9a523c with:
                                 gas gas_remaining wei
                                args collateralMarkets[idx]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1544 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1544] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                return 18, 0, 0
                            _1652 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1652] = 0
                            if not ext_call.return_data[0]:
                                _1741 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1741] = 0
                                mem[352] = _1741
                                _1813 = mem[384]
                                _1843 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1843] = 0
                                _1857 = mem[_1813]
                                if mem[_1813] < 0:
                                    return 3, 0, 0
                                _1920 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1920] = _1857
                                mem[384] = _1920
                            else:
                                require ext_call.return_data[0]
                                if 0 / ext_call.return_data[0]:
                                    return 3, 0, 0
                                _1760 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1760] = 0
                                mem[352] = _1760
                                _1842 = mem[384]
                                _1876 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1876] = 0
                                _1892 = mem[_1842]
                                if mem[_1842] < 0:
                                    return 3, 0, 0
                                _1953 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1953] = _1892
                                mem[384] = _1953
                        else:
                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                return 3, 0, 0
                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                return 5, 0, 0
                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                            _1584 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1584] = 0
                            _1603 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1603] = 0
                            _1638 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1638] = 0
                            if not oracleAddress:
                                return 24, 0, 0
                            mem[mem[64] + 4] = collateralMarkets[idx]
                            require ext_code.size(oracleAddress)
                            call oracleAddress.0x5e9a523c with:
                                 gas gas_remaining wei
                                args collateralMarkets[idx]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1706 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1706] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                return 18, 0, 0
                            _1800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1800] = 0
                            if not ext_call.return_data[0]:
                                _1918 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1918] = 0
                                mem[352] = _1918
                                _2002 = mem[384]
                                _2026 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2026] = 0
                                _2044 = mem[_2002]
                                if mem[_2002] < 0:
                                    return 3, 0, 0
                                _2124 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2124] = _2044
                                mem[384] = _2124
                            else:
                                require ext_call.return_data[0]
                                if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                    return 3, 0, 0
                                _1950 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1950] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                mem[352] = _1950
                                _2025 = mem[384]
                                _2059 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2059] = 0
                                _2085 = mem[_2025]
                                if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_2025] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2154 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2154] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _2085
                                mem[384] = _2154
                    else:
                        require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                        if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                            return 3, 0, 0
                        _1432 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1432] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                            mem[320] = 0
                            _1489 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1489] = 0
                            _1495 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1495] = 0
                            _1514 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1514] = 0
                            if not oracleAddress:
                                return 24, 0, 0
                            mem[mem[64] + 4] = collateralMarkets[idx]
                            require ext_code.size(oracleAddress)
                            call oracleAddress.0x5e9a523c with:
                                 gas gas_remaining wei
                                args collateralMarkets[idx]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1562 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1562] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                return 18, 0, 0
                            _1681 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1681] = 0
                            if not ext_call.return_data[0]:
                                _1758 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1758] = 0
                                mem[352] = _1758
                                _1840 = mem[384]
                                _1873 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1873] = 0
                                _1890 = mem[_1840]
                                if mem[_1840] < 0:
                                    return 3, 0, 0
                                _1949 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1949] = _1890
                                mem[384] = _1949
                            else:
                                require ext_call.return_data[0]
                                if 0 / ext_call.return_data[0]:
                                    return 3, 0, 0
                                _1781 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1781] = 0
                                mem[352] = _1781
                                _1872 = mem[384]
                                _1903 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1903] = 0
                                _1917 = mem[_1872]
                                if mem[_1872] < 0:
                                    return 3, 0, 0
                                _1981 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1981] = _1917
                                mem[384] = _1981
                        else:
                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                            if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                return 3, 0, 0
                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                return 5, 0, 0
                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                            mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                            _1602 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1602] = 0
                            _1623 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1623] = 0
                            _1666 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1666] = 0
                            if not oracleAddress:
                                return 24, 0, 0
                            mem[mem[64] + 4] = collateralMarkets[idx]
                            require ext_code.size(oracleAddress)
                            call oracleAddress.0x5e9a523c with:
                                 gas gas_remaining wei
                                args collateralMarkets[idx]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1726 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1726] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                return 18, 0, 0
                            _1823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1823] = 0
                            if not ext_call.return_data[0]:
                                _1947 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1947] = 0
                                mem[352] = _1947
                                _2023 = mem[384]
                                _2058 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2058] = 0
                                _2083 = mem[_2023]
                                if mem[_2023] < 0:
                                    return 3, 0, 0
                                _2150 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2150] = _2083
                                mem[384] = _2150
                            else:
                                require ext_call.return_data[0]
                                if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                    return 3, 0, 0
                                _1978 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1978] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                mem[352] = _1978
                                _2057 = mem[384]
                                _2097 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2097] = 0
                                _2120 = mem[_2057]
                                if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_2057] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2169 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2169] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _2120
                                mem[384] = _2169
        else:
            _1358 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1358] = 0
            _1362 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1362] = 0
            _1364 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1364] = 0
            if markets[stor6[idx]].field_256 > block.number:
                return 4, 0, 0
            _1366 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1366] = markets[stor6[idx]].field_1024
            _1368 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1368] = 0
            if not markets[stor6[idx]].field_1024:
                _1372 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1372] = 0
                _1382 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1382] = 10^18
                _1385 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1385] = 0
                _1399 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1399] = 10^18
                _1406 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1406] = 0
                if 10^18 * markets[stor6[idx]].field_1280 / 10^18 != markets[stor6[idx]].field_1280:
                    return 3, 0, 0
                _1421 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1421] = 10^18 * markets[stor6[idx]].field_1280
                mem[160] = 10^18 * markets[stor6[idx]].field_1280 / 10^18
                if not supplyBalances[address(arg1)][stor6[idx]].field_0:
                    mem[192] = 0
                    _1479 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1479] = 0
                    _1488 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1488] = 0
                    _1497 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1497] = 0
                    if not oracleAddress:
                        return 24, 0, 0
                    mem[mem[64] + 4] = collateralMarkets[idx]
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0x5e9a523c with:
                         gas gas_remaining wei
                        args collateralMarkets[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1539 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1539] = ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        return 18, 0, 0
                    _1650 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1650] = 0
                    if not ext_call.return_data[0]:
                        _1736 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1736] = 0
                        mem[224] = _1736
                        _1807 = mem[256]
                        _1834 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1834] = 0
                        _1853 = mem[_1807]
                        if mem[_1807] < 0:
                            return 3, 0, 0
                        _1911 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1911] = _1853
                        mem[256] = _1911
                        if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                            _2036 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2036] = 0
                            _2075 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2075] = 0
                            _2115 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2115] = 0
                            if markets[stor6[idx]].field_256 > block.number:
                                return 4, 0, 0
                            _2176 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2176] = markets[stor6[idx]].field_1792
                            _2187 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2187] = 0
                            if not markets[stor6[idx]].field_1792:
                                _2256 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2256] = 0
                                _2297 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2297] = 10^18
                                _2322 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2322] = 0
                                _2384 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2384] = 10^18
                                _2448 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2448] = 0
                                if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                    return 3, 0, 0
                                _2602 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2602] = 10^18 * markets[stor6[idx]].field_2048
                                mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                    mem[320] = 0
                                    _2989 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2989] = 0
                                    _3034 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3034] = 0
                                    _3086 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3086] = 0
                                    if not oracleAddress:
                                        return 24, 0, 0
                                    mem[mem[64] + 4] = collateralMarkets[idx]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x5e9a523c with:
                                         gas gas_remaining wei
                                        args collateralMarkets[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _3261 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3261] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _3874 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3874] = 0
                                    if not ext_call.return_data[0]:
                                        _4539 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4539] = 0
                                        mem[352] = _4539
                                        _5141 = mem[384]
                                        _5358 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5358] = 0
                                        _5439 = mem[_5141]
                                        if mem[_5141] < 0:
                                            return 3, 0, 0
                                        _5861 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5861] = _5439
                                        mem[384] = _5861
                                    else:
                                        require ext_call.return_data[0]
                                        if 0 / ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _4693 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4693] = 0
                                        mem[352] = _4693
                                        _5357 = mem[384]
                                        _5575 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5575] = 0
                                        _5658 = mem[_5357]
                                        if mem[_5357] < 0:
                                            return 3, 0, 0
                                        _6067 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6067] = _5658
                                        mem[384] = _6067
                                else:
                                    require borrowBalances[address(arg1)][stor6[idx]].field_0
                                    if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                        return 3, 0, 0
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                        return 5, 0, 0
                                    require borrowBalances[address(arg1)][stor6[idx]].field_256
                                    mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                    _3514 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3514] = 0
                                    _3630 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3630] = 0
                                    _3800 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3800] = 0
                                    if not oracleAddress:
                                        return 24, 0, 0
                                    mem[mem[64] + 4] = collateralMarkets[idx]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x5e9a523c with:
                                         gas gas_remaining wei
                                        args collateralMarkets[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _4209 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4209] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _5036 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5036] = 0
                                    if not ext_call.return_data[0]:
                                        _5859 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5859] = 0
                                        mem[352] = _5859
                                        _6502 = mem[384]
                                        _6690 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6690] = 0
                                        _6768 = mem[_6502]
                                        if mem[_6502] < 0:
                                            return 3, 0, 0
                                        _7288 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7288] = _6768
                                        mem[384] = _7288
                                    else:
                                        require ext_call.return_data[0]
                                        if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _6064 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6064] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[352] = _6064
                                        _6689 = mem[384]
                                        _6916 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6916] = 0
                                        _7021 = mem[_6689]
                                        if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6689] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _7532 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7532] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7021
                                        mem[384] = _7532
                            else:
                                require markets[stor6[idx]].field_1792
                                if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2267 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2267] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                _2321 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2321] = 10^18
                                _2350 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2350] = 0
                                _2404 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2404] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                _2476 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2476] = 0
                                if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                    _2601 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2601] = 0
                                    mem[288] = 0 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _2988 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2988] = 0
                                        _3033 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3033] = 0
                                        _3085 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3085] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _3259 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3259] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _3873 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3873] = 0
                                        if not ext_call.return_data[0]:
                                            _4538 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4538] = 0
                                            mem[352] = _4538
                                            _5138 = mem[384]
                                            _5355 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5355] = 0
                                            _5437 = mem[_5138]
                                            if mem[_5138] < 0:
                                                return 3, 0, 0
                                            _5858 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5858] = _5437
                                            mem[384] = _5858
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _4690 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4690] = 0
                                            mem[352] = _4690
                                            _5354 = mem[384]
                                            _5572 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5572] = 0
                                            _5656 = mem[_5354]
                                            if mem[_5354] < 0:
                                                return 3, 0, 0
                                            _6063 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6063] = _5656
                                            mem[384] = _6063
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _3513 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3513] = 0
                                        _3628 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3628] = 0
                                        _3797 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3797] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4207 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4207] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5035 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5035] = 0
                                        if not ext_call.return_data[0]:
                                            _5856 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5856] = 0
                                            mem[352] = _5856
                                            _6500 = mem[384]
                                            _6687 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6687] = 0
                                            _6766 = mem[_6500]
                                            if mem[_6500] < 0:
                                                return 3, 0, 0
                                            _7284 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7284] = _6766
                                            mem[384] = _7284
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6060 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6060] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _6060
                                            _6686 = mem[384]
                                            _6915 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6915] = 0
                                            _7017 = mem[_6686]
                                            if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6686] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7530 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7530] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7017
                                            mem[384] = _7530
                                else:
                                    require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2639 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2639] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                    mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3032 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3032] = 0
                                        _3068 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3068] = 0
                                        _3147 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3147] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _3380 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3380] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4029 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4029] = 0
                                        if not ext_call.return_data[0]:
                                            _4688 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4688] = 0
                                            mem[352] = _4688
                                            _5352 = mem[384]
                                            _5569 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5569] = 0
                                            _5654 = mem[_5352]
                                            if mem[_5352] < 0:
                                                return 3, 0, 0
                                            _6059 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6059] = _5654
                                            mem[384] = _6059
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _4857 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4857] = 0
                                            mem[352] = _4857
                                            _5568 = mem[384]
                                            _5765 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5765] = 0
                                            _5855 = mem[_5568]
                                            if mem[_5568] < 0:
                                                return 3, 0, 0
                                            _6261 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6261] = _5855
                                            mem[384] = _6261
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _3627 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3627] = 0
                                        _3741 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3741] = 0
                                        _3962 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3962] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4383 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4383] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5224 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5224] = 0
                                        if not ext_call.return_data[0]:
                                            _6057 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6057] = 0
                                            mem[352] = _6057
                                            _6684 = mem[384]
                                            _6914 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6914] = 0
                                            _7015 = mem[_6684]
                                            if mem[_6684] < 0:
                                                return 3, 0, 0
                                            _7526 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7526] = _7015
                                            mem[384] = _7526
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6258 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6258] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _6258
                                            _6913 = mem[384]
                                            _7147 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7147] = 0
                                            _7280 = mem[_6913]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6913] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7718 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7718] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7280
                                            mem[384] = _7718
                    else:
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0]:
                            return 3, 0, 0
                        _1755 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1755] = 0
                        mem[224] = _1755
                        _1833 = mem[256]
                        _1870 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1870] = 0
                        _1885 = mem[_1833]
                        if mem[_1833] < 0:
                            return 3, 0, 0
                        _1946 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1946] = _1885
                        mem[256] = _1946
                        if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                            _2072 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2072] = 0
                            _2114 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2114] = 0
                            _2148 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2148] = 0
                            if markets[stor6[idx]].field_256 > block.number:
                                return 4, 0, 0
                            _2186 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2186] = markets[stor6[idx]].field_1792
                            _2210 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2210] = 0
                            if not markets[stor6[idx]].field_1792:
                                _2266 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2266] = 0
                                _2320 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2320] = 10^18
                                _2349 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2349] = 0
                                _2402 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2402] = 10^18
                                _2475 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2475] = 0
                                if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                    return 3, 0, 0
                                _2637 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2637] = 10^18 * markets[stor6[idx]].field_2048
                                mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                    mem[320] = 0
                                    _3030 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3030] = 0
                                    _3067 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3067] = 0
                                    _3143 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3143] = 0
                                    if not oracleAddress:
                                        return 24, 0, 0
                                    mem[mem[64] + 4] = collateralMarkets[idx]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x5e9a523c with:
                                         gas gas_remaining wei
                                        args collateralMarkets[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _3375 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3375] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _4028 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4028] = 0
                                    if not ext_call.return_data[0]:
                                        _4684 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4684] = 0
                                        mem[352] = _4684
                                        _5346 = mem[384]
                                        _5563 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5563] = 0
                                        _5650 = mem[_5346]
                                        if mem[_5346] < 0:
                                            return 3, 0, 0
                                        _6052 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6052] = _5650
                                        mem[384] = _6052
                                    else:
                                        require ext_call.return_data[0]
                                        if 0 / ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _4853 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4853] = 0
                                        mem[352] = _4853
                                        _5562 = mem[384]
                                        _5762 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5762] = 0
                                        _5850 = mem[_5562]
                                        if mem[_5562] < 0:
                                            return 3, 0, 0
                                        _6257 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6257] = _5850
                                        mem[384] = _6257
                                else:
                                    require borrowBalances[address(arg1)][stor6[idx]].field_0
                                    if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                        return 3, 0, 0
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                        return 5, 0, 0
                                    require borrowBalances[address(arg1)][stor6[idx]].field_256
                                    mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                    _3624 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3624] = 0
                                    _3738 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3738] = 0
                                    _3955 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3955] = 0
                                    if not oracleAddress:
                                        return 24, 0, 0
                                    mem[mem[64] + 4] = collateralMarkets[idx]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x5e9a523c with:
                                         gas gas_remaining wei
                                        args collateralMarkets[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _4380 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4380] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _5223 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5223] = 0
                                    if not ext_call.return_data[0]:
                                        _6050 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6050] = 0
                                        mem[352] = _6050
                                        _6679 = mem[384]
                                        _6910 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6910] = 0
                                        _7009 = mem[_6679]
                                        if mem[_6679] < 0:
                                            return 3, 0, 0
                                        _7520 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7520] = _7009
                                        mem[384] = _7520
                                    else:
                                        require ext_call.return_data[0]
                                        if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _6254 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6254] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[352] = _6254
                                        _6909 = mem[384]
                                        _7146 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7146] = 0
                                        _7272 = mem[_6909]
                                        if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6909] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _7716 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7716] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7272
                                        mem[384] = _7716
                            else:
                                require markets[stor6[idx]].field_1792
                                if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2286 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2286] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                _2348 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2348] = 10^18
                                _2372 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2372] = 0
                                _2426 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2426] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                _2513 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2513] = 0
                                if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                    _2636 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2636] = 0
                                    mem[288] = 0 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3029 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3029] = 0
                                        _3066 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3066] = 0
                                        _3142 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3142] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _3373 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3373] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4027 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4027] = 0
                                        if not ext_call.return_data[0]:
                                            _4683 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4683] = 0
                                            mem[352] = _4683
                                            _5343 = mem[384]
                                            _5560 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5560] = 0
                                            _5648 = mem[_5343]
                                            if mem[_5343] < 0:
                                                return 3, 0, 0
                                            _6049 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6049] = _5648
                                            mem[384] = _6049
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _4850 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4850] = 0
                                            mem[352] = _4850
                                            _5559 = mem[384]
                                            _5759 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5759] = 0
                                            _5848 = mem[_5559]
                                            if mem[_5559] < 0:
                                                return 3, 0, 0
                                            _6253 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6253] = _5848
                                            mem[384] = _6253
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _3623 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3623] = 0
                                        _3736 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3736] = 0
                                        _3952 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3952] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4378 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4378] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5222 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5222] = 0
                                        if not ext_call.return_data[0]:
                                            _6047 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6047] = 0
                                            mem[352] = _6047
                                            _6677 = mem[384]
                                            _6907 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6907] = 0
                                            _7007 = mem[_6677]
                                            if mem[_6677] < 0:
                                                return 3, 0, 0
                                            _7516 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7516] = _7007
                                            mem[384] = _7516
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6250 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6250] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _6250
                                            _6906 = mem[384]
                                            _7145 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7145] = 0
                                            _7268 = mem[_6906]
                                            if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6906] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7714 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7714] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7268
                                            mem[384] = _7714
                                else:
                                    require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2670 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2670] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                    mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3065 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3065] = 0
                                        _3111 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3111] = 0
                                        _3218 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3218] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _3502 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3502] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4203 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4203] = 0
                                        if not ext_call.return_data[0]:
                                            _4848 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4848] = 0
                                            mem[352] = _4848
                                            _5557 = mem[384]
                                            _5756 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5756] = 0
                                            _5846 = mem[_5557]
                                            if mem[_5557] < 0:
                                                return 3, 0, 0
                                            _6249 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6249] = _5846
                                            mem[384] = _6249
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _5029 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5029] = 0
                                            mem[352] = _5029
                                            _5755 = mem[384]
                                            _5939 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5939] = 0
                                            _6046 = mem[_5755]
                                            if mem[_5755] < 0:
                                                return 3, 0, 0
                                            _6420 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6420] = _6046
                                            mem[384] = _6420
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _3735 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3735] = 0
                                        _3867 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3867] = 0
                                        _4130 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4130] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4533 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4533] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5433 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5433] = 0
                                        if not ext_call.return_data[0]:
                                            _6247 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6247] = 0
                                            mem[352] = _6247
                                            _6904 = mem[384]
                                            _7144 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7144] = 0
                                            _7266 = mem[_6904]
                                            if mem[_6904] < 0:
                                                return 3, 0, 0
                                            _7710 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7710] = _7266
                                            mem[384] = _7710
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6417 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6417] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _6417
                                            _7143 = mem[384]
                                            _7373 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7373] = 0
                                            _7512 = mem[_7143]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_7143] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7834 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7834] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7512
                                            mem[384] = _7834
                else:
                    require supplyBalances[address(arg1)][stor6[idx]].field_0
                    if supplyBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_1280 / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_1280 / 10^18:
                        return 3, 0, 0
                    if not supplyBalances[address(arg1)][stor6[idx]].field_256:
                        return 5, 0, 0
                    require supplyBalances[address(arg1)][stor6[idx]].field_256
                    mem[192] = supplyBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_1280 / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256
                    _1578 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1578] = 0
                    _1599 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1599] = 0
                    _1631 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1631] = 0
                    if not oracleAddress:
                        return 24, 0, 0
                    mem[mem[64] + 4] = collateralMarkets[idx]
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0x5e9a523c with:
                         gas gas_remaining wei
                        args collateralMarkets[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1703 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1703] = ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        return 18, 0, 0
                    _1798 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1798] = 0
                    if not ext_call.return_data[0]:
                        _1909 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1909] = 0
                        mem[224] = _1909
                        _1997 = mem[256]
                        _2020 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2020] = 0
                        _2035 = mem[_1997]
                        if mem[_1997] < 0:
                            return 3, 0, 0
                        _2111 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2111] = _2035
                        mem[256] = _2111
                        if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                            _2185 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2185] = 0
                            _2209 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2209] = 0
                            _2236 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2236] = 0
                            if markets[stor6[idx]].field_256 > block.number:
                                return 4, 0, 0
                            _2285 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2285] = markets[stor6[idx]].field_1792
                            _2308 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2308] = 0
                            if not markets[stor6[idx]].field_1792:
                                _2400 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2400] = 0
                                _2461 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2461] = 10^18
                                _2495 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2495] = 0
                                _2570 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2570] = 10^18
                                _2669 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2669] = 0
                                if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                    return 3, 0, 0
                                _2790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2790] = 10^18 * markets[stor6[idx]].field_2048
                                mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                    mem[320] = 0
                                    _3499 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3499] = 0
                                    _3619 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3619] = 0
                                    _3788 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3788] = 0
                                    if not oracleAddress:
                                        return 24, 0, 0
                                    mem[mem[64] + 4] = collateralMarkets[idx]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x5e9a523c with:
                                         gas gas_remaining wei
                                        args collateralMarkets[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _4199 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4199] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _5027 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5027] = 0
                                    if not ext_call.return_data[0]:
                                        _5841 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5841] = 0
                                        mem[352] = _5841
                                        _6489 = mem[384]
                                        _6672 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6672] = 0
                                        _6760 = mem[_6489]
                                        if mem[_6489] < 0:
                                            return 3, 0, 0
                                        _7260 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7260] = _6760
                                        mem[384] = _7260
                                    else:
                                        require ext_call.return_data[0]
                                        if 0 / ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _6042 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6042] = 0
                                        mem[352] = _6042
                                        _6671 = mem[384]
                                        _6902 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6902] = 0
                                        _7002 = mem[_6671]
                                        if mem[_6671] < 0:
                                            return 3, 0, 0
                                        _7510 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7510] = _7002
                                        mem[384] = _7510
                                else:
                                    require borrowBalances[address(arg1)][stor6[idx]].field_0
                                    if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                        return 3, 0, 0
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                        return 5, 0, 0
                                    require borrowBalances[address(arg1)][stor6[idx]].field_256
                                    mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                    _4529 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4529] = 0
                                    _4679 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4679] = 0
                                    _4926 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4926] = 0
                                    if not oracleAddress:
                                        return 24, 0, 0
                                    mem[mem[64] + 4] = collateralMarkets[idx]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x5e9a523c with:
                                         gas gas_remaining wei
                                        args collateralMarkets[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _5431 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5431] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _6416 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6416] = 0
                                    if not ext_call.return_data[0]:
                                        _7258 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7258] = 0
                                        mem[352] = _7258
                                        _7881 = mem[384]
                                        _7970 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7970] = 0
                                        _8005 = mem[_7881]
                                        if mem[_7881] < 0:
                                            return 3, 0, 0
                                        _8326 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8326] = _8005
                                        mem[384] = _8326
                                    else:
                                        require ext_call.return_data[0]
                                        if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _7507 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7507] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[352] = _7507
                                        _7969 = mem[384]
                                        _8085 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8085] = 0
                                        _8149 = mem[_7969]
                                        if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_7969] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _8482 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8482] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8149
                                        mem[384] = _8482
                            else:
                                require markets[stor6[idx]].field_1792
                                if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2423 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2423] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                _2494 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2494] = 10^18
                                _2531 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2531] = 0
                                _2599 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2599] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                _2704 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2704] = 0
                                if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                    _2789 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2789] = 0
                                    mem[288] = 0 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3498 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3498] = 0
                                        _3618 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3618] = 0
                                        _3787 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3787] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4197 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4197] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5026 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5026] = 0
                                        if not ext_call.return_data[0]:
                                            _5840 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5840] = 0
                                            mem[352] = _5840
                                            _6486 = mem[384]
                                            _6669 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6669] = 0
                                            _6758 = mem[_6486]
                                            if mem[_6486] < 0:
                                                return 3, 0, 0
                                            _7257 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7257] = _6758
                                            mem[384] = _7257
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6039 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6039] = 0
                                            mem[352] = _6039
                                            _6668 = mem[384]
                                            _6899 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6899] = 0
                                            _7000 = mem[_6668]
                                            if mem[_6668] < 0:
                                                return 3, 0, 0
                                            _7506 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7506] = _7000
                                            mem[384] = _7506
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4528 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4528] = 0
                                        _4677 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4677] = 0
                                        _4923 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4923] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _5429 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5429] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6415 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6415] = 0
                                        if not ext_call.return_data[0]:
                                            _7255 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7255] = 0
                                            mem[352] = _7255
                                            _7879 = mem[384]
                                            _7967 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7967] = 0
                                            _8003 = mem[_7879]
                                            if mem[_7879] < 0:
                                                return 3, 0, 0
                                            _8322 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8322] = _8003
                                            mem[384] = _8322
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7503 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7503] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _7503
                                            _7966 = mem[384]
                                            _8084 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8084] = 0
                                            _8145 = mem[_7966]
                                            if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_7966] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8480 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8480] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8145
                                            mem[384] = _8480
                                else:
                                    require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2827 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2827] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                    mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3617 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3617] = 0
                                        _3734 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3734] = 0
                                        _3944 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3944] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4369 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4369] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5218 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5218] = 0
                                        if not ext_call.return_data[0]:
                                            _6037 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6037] = 0
                                            mem[352] = _6037
                                            _6666 = mem[384]
                                            _6896 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6896] = 0
                                            _6998 = mem[_6666]
                                            if mem[_6666] < 0:
                                                return 3, 0, 0
                                            _7502 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7502] = _6998
                                            mem[384] = _7502
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6242 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6242] = 0
                                            mem[352] = _6242
                                            _6895 = mem[384]
                                            _7141 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7141] = 0
                                            _7254 = mem[_6895]
                                            if mem[_6895] < 0:
                                                return 3, 0, 0
                                            _7708 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7708] = _7254
                                            mem[384] = _7708
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4676 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4676] = 0
                                        _4843 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4843] = 0
                                        _5119 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5119] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _5643 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5643] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6567 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6567] = 0
                                        if not ext_call.return_data[0]:
                                            _7500 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7500] = 0
                                            mem[352] = _7500
                                            _7964 = mem[384]
                                            _8083 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8083] = 0
                                            _8143 = mem[_7964]
                                            if mem[_7964] < 0:
                                                return 3, 0, 0
                                            _8476 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8476] = _8143
                                            mem[384] = _8476
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7705 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7705] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _7705
                                            _8082 = mem[384]
                                            _8229 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8229] = 0
                                            _8318 = mem[_8082]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8082] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8575 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8575] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8318
                                            mem[384] = _8575
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * supplyBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_1280 / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != supplyBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_1280 / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256:
                            return 3, 0, 0
                        _1943 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1943] = ext_call.return_data[0] * supplyBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_1280 / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256
                        mem[224] = _1943
                        _2019 = mem[256]
                        _2055 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2055] = 0
                        _2071 = mem[_2019]
                        if (ext_call.return_data[0] * supplyBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_1280 / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256) + mem[_2019] < ext_call.return_data[0] * supplyBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_1280 / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256:
                            return 3, 0, 0
                        _2147 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2147] = (ext_call.return_data[0] * supplyBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_1280 / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256) + _2071
                        mem[256] = _2147
                        if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                            _2206 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2206] = 0
                            _2235 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2235] = 0
                            _2250 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2250] = 0
                            if markets[stor6[idx]].field_256 > block.number:
                                return 4, 0, 0
                            _2307 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2307] = markets[stor6[idx]].field_1792
                            _2332 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2332] = 0
                            if not markets[stor6[idx]].field_1792:
                                _2422 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2422] = 0
                                _2493 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2493] = 10^18
                                _2530 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2530] = 0
                                _2597 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2597] = 10^18
                                _2703 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2703] = 0
                                if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                    return 3, 0, 0
                                _2825 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2825] = 10^18 * markets[stor6[idx]].field_2048
                                mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                    mem[320] = 0
                                    _3615 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3615] = 0
                                    _3733 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3733] = 0
                                    _3940 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3940] = 0
                                    if not oracleAddress:
                                        return 24, 0, 0
                                    mem[mem[64] + 4] = collateralMarkets[idx]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x5e9a523c with:
                                         gas gas_remaining wei
                                        args collateralMarkets[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _4364 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4364] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _5217 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5217] = 0
                                    if not ext_call.return_data[0]:
                                        _6033 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6033] = 0
                                        mem[352] = _6033
                                        _6660 = mem[384]
                                        _6890 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6890] = 0
                                        _6994 = mem[_6660]
                                        if mem[_6660] < 0:
                                            return 3, 0, 0
                                        _7495 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7495] = _6994
                                        mem[384] = _7495
                                    else:
                                        require ext_call.return_data[0]
                                        if 0 / ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _6238 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6238] = 0
                                        mem[352] = _6238
                                        _6889 = mem[384]
                                        _7138 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7138] = 0
                                        _7249 = mem[_6889]
                                        if mem[_6889] < 0:
                                            return 3, 0, 0
                                        _7704 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7704] = _7249
                                        mem[384] = _7704
                                else:
                                    require borrowBalances[address(arg1)][stor6[idx]].field_0
                                    if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                        return 3, 0, 0
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                        return 5, 0, 0
                                    require borrowBalances[address(arg1)][stor6[idx]].field_256
                                    mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                    _4673 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4673] = 0
                                    _4840 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4840] = 0
                                    _5112 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5112] = 0
                                    if not oracleAddress:
                                        return 24, 0, 0
                                    mem[mem[64] + 4] = collateralMarkets[idx]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x5e9a523c with:
                                         gas gas_remaining wei
                                        args collateralMarkets[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _5640 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5640] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _6566 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6566] = 0
                                    if not ext_call.return_data[0]:
                                        _7493 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7493] = 0
                                        mem[352] = _7493
                                        _7959 = mem[384]
                                        _8079 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8079] = 0
                                        _8137 = mem[_7959]
                                        if mem[_7959] < 0:
                                            return 3, 0, 0
                                        _8470 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8470] = _8137
                                        mem[384] = _8470
                                    else:
                                        require ext_call.return_data[0]
                                        if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _7701 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7701] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[352] = _7701
                                        _8078 = mem[384]
                                        _8228 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8228] = 0
                                        _8310 = mem[_8078]
                                        if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8078] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _8573 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8573] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8310
                                        mem[384] = _8573
                            else:
                                require markets[stor6[idx]].field_1792
                                if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2446 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2446] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                _2529 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2529] = 10^18
                                _2557 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2557] = 0
                                _2635 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2635] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                _2737 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2737] = 0
                                if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                    _2824 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2824] = 0
                                    mem[288] = 0 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3614 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3614] = 0
                                        _3732 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3732] = 0
                                        _3939 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3939] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4362 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4362] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5216 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5216] = 0
                                        if not ext_call.return_data[0]:
                                            _6032 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6032] = 0
                                            mem[352] = _6032
                                            _6657 = mem[384]
                                            _6887 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6887] = 0
                                            _6992 = mem[_6657]
                                            if mem[_6657] < 0:
                                                return 3, 0, 0
                                            _7492 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7492] = _6992
                                            mem[384] = _7492
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6235 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6235] = 0
                                            mem[352] = _6235
                                            _6886 = mem[384]
                                            _7135 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7135] = 0
                                            _7247 = mem[_6886]
                                            if mem[_6886] < 0:
                                                return 3, 0, 0
                                            _7700 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7700] = _7247
                                            mem[384] = _7700
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4672 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4672] = 0
                                        _4838 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4838] = 0
                                        _5109 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5109] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _5638 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5638] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6565 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6565] = 0
                                        if not ext_call.return_data[0]:
                                            _7490 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7490] = 0
                                            mem[352] = _7490
                                            _7957 = mem[384]
                                            _8076 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8076] = 0
                                            _8135 = mem[_7957]
                                            if mem[_7957] < 0:
                                                return 3, 0, 0
                                            _8466 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8466] = _8135
                                            mem[384] = _8466
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7697 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7697] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _7697
                                            _8075 = mem[384]
                                            _8227 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8227] = 0
                                            _8306 = mem[_8075]
                                            if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8075] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8571 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8571] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8306
                                            mem[384] = _8571
                                else:
                                    require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2865 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2865] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                    mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3731 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3731] = 0
                                        _3866 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3866] = 0
                                        _4117 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4117] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4517 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4517] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5425 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5425] = 0
                                        if not ext_call.return_data[0]:
                                            _6233 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6233] = 0
                                            mem[352] = _6233
                                            _6884 = mem[384]
                                            _7132 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7132] = 0
                                            _7245 = mem[_6884]
                                            if mem[_6884] < 0:
                                                return 3, 0, 0
                                            _7696 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7696] = _7245
                                            mem[384] = _7696
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6409 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6409] = 0
                                            mem[352] = _6409
                                            _7131 = mem[384]
                                            _7368 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7368] = 0
                                            _7489 = mem[_7131]
                                            if mem[_7131] < 0:
                                                return 3, 0, 0
                                            _7832 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7832] = _7489
                                            mem[384] = _7832
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4837 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4837] = 0
                                        _5020 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5020] = 0
                                        _5321 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5321] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _5835 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5835] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6754 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6754] = 0
                                        if not ext_call.return_data[0]:
                                            _7694 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7694] = 0
                                            mem[352] = _7694
                                            _8073 = mem[384]
                                            _8226 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8226] = 0
                                            _8304 = mem[_8073]
                                            if mem[_8073] < 0:
                                                return 3, 0, 0
                                            _8567 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8567] = _8304
                                            mem[384] = _8567
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7829 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7829] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _7829
                                            _8225 = mem[384]
                                            _8382 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8382] = 0
                                            _8462 = mem[_8225]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8225] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8615 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8615] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8462
                                            mem[384] = _8615
            else:
                require markets[stor6[idx]].field_1024
                if (block.number * markets[stor6[idx]].field_1024) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024) / markets[stor6[idx]].field_1024 != block.number - markets[stor6[idx]].field_256:
                    return 3, 0, 0
                _1374 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1374] = (block.number * markets[stor6[idx]].field_1024) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024)
                _1384 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1384] = 10^18
                _1392 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1392] = 0
                _1403 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1403] = (block.number * markets[stor6[idx]].field_1024) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024) + 10^18
                _1410 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1410] = 0
                if not (block.number * markets[stor6[idx]].field_1024) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024) + 10^18:
                    _1420 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1420] = 0
                    mem[160] = 0 / 10^18
                    if not supplyBalances[address(arg1)][stor6[idx]].field_0:
                        mem[192] = 0
                        _1478 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1478] = 0
                        _1487 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1487] = 0
                        _1496 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1496] = 0
                        if not oracleAddress:
                            return 24, 0, 0
                        mem[mem[64] + 4] = collateralMarkets[idx]
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0x5e9a523c with:
                             gas gas_remaining wei
                            args collateralMarkets[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1537 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1537] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _1649 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1649] = 0
                        if not ext_call.return_data[0]:
                            _1735 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1735] = 0
                            mem[224] = _1735
                            _1804 = mem[256]
                            _1831 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1831] = 0
                            _1851 = mem[_1804]
                            if mem[_1804] < 0:
                                return 3, 0, 0
                            _1908 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1908] = _1851
                            mem[256] = _1908
                            if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                                _2033 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2033] = 0
                                _2069 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2069] = 0
                                _2109 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2109] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2175 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2175] = markets[stor6[idx]].field_1792
                                _2184 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2184] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2255 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2255] = 0
                                    _2294 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2294] = 10^18
                                    _2318 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2318] = 0
                                    _2380 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2380] = 10^18
                                    _2445 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2445] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2594 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2594] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _2974 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2974] = 0
                                        _3025 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3025] = 0
                                        _3077 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3077] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _3248 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3248] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _3865 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3865] = 0
                                        if not ext_call.return_data[0]:
                                            _4512 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4512] = 0
                                            mem[352] = _4512
                                            _5105 = mem[384]
                                            _5317 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5317] = 0
                                            _5422 = mem[_5105]
                                            if mem[_5105] < 0:
                                                return 3, 0, 0
                                            _5829 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5829] = _5422
                                            mem[384] = _5829
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _4666 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4666] = 0
                                            mem[352] = _4666
                                            _5316 = mem[384]
                                            _5541 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5541] = 0
                                            _5633 = mem[_5316]
                                            if mem[_5316] < 0:
                                                return 3, 0, 0
                                            _6030 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6030] = _5633
                                            mem[384] = _6030
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _3486 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3486] = 0
                                        _3609 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3609] = 0
                                        _3779 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3779] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4192 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4192] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5019 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5019] = 0
                                        if not ext_call.return_data[0]:
                                            _5827 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5827] = 0
                                            mem[352] = _5827
                                            _6475 = mem[384]
                                            _6653 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6653] = 0
                                            _6749 = mem[_6475]
                                            if mem[_6475] < 0:
                                                return 3, 0, 0
                                            _7239 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7239] = _6749
                                            mem[384] = _7239
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6027 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6027] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _6027
                                            _6652 = mem[384]
                                            _6881 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6881] = 0
                                            _6984 = mem[_6652]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6652] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7487 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7487] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _6984
                                            mem[384] = _7487
                                else:
                                    require markets[stor6[idx]].field_1792
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2264 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2264] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2317 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2317] = 10^18
                                    _2346 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2346] = 0
                                    _2399 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2399] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _2472 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2472] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _2593 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2593] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _2973 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2973] = 0
                                            _3024 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3024] = 0
                                            _3076 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3076] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _3246 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3246] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _3864 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3864] = 0
                                            if not ext_call.return_data[0]:
                                                _4511 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4511] = 0
                                                mem[352] = _4511
                                                _5102 = mem[384]
                                                _5314 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5314] = 0
                                                _5420 = mem[_5102]
                                                if mem[_5102] < 0:
                                                    return 3, 0, 0
                                                _5826 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5826] = _5420
                                                mem[384] = _5826
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _4663 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4663] = 0
                                                mem[352] = _4663
                                                _5313 = mem[384]
                                                _5538 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5538] = 0
                                                _5631 = mem[_5313]
                                                if mem[_5313] < 0:
                                                    return 3, 0, 0
                                                _6026 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6026] = _5631
                                                mem[384] = _6026
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _3485 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3485] = 0
                                            _3607 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3607] = 0
                                            _3776 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3776] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4190 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4190] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5018 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5018] = 0
                                            if not ext_call.return_data[0]:
                                                _5824 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5824] = 0
                                                mem[352] = _5824
                                                _6473 = mem[384]
                                                _6650 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6650] = 0
                                                _6747 = mem[_6473]
                                                if mem[_6473] < 0:
                                                    return 3, 0, 0
                                                _7235 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7235] = _6747
                                                mem[384] = _7235
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6023 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6023] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _6023
                                                _6649 = mem[384]
                                                _6880 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6880] = 0
                                                _6980 = mem[_6649]
                                                if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6649] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7485 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7485] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _6980
                                                mem[384] = _7485
                                    else:
                                        require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                        if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _2632 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2632] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3023 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3023] = 0
                                            _3064 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3064] = 0
                                            _3131 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3131] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _3353 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3353] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4021 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4021] = 0
                                            if not ext_call.return_data[0]:
                                                _4661 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4661] = 0
                                                mem[352] = _4661
                                                _5311 = mem[384]
                                                _5535 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5535] = 0
                                                _5629 = mem[_5311]
                                                if mem[_5311] < 0:
                                                    return 3, 0, 0
                                                _6022 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6022] = _5629
                                                mem[384] = _6022
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _4832 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4832] = 0
                                                mem[352] = _4832
                                                _5534 = mem[384]
                                                _5746 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5746] = 0
                                                _5823 = mem[_5534]
                                                if mem[_5534] < 0:
                                                    return 3, 0, 0
                                                _6232 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6232] = _5823
                                                mem[384] = _6232
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _3606 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3606] = 0
                                            _3726 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3726] = 0
                                            _3927 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3927] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4357 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4357] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5212 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5212] = 0
                                            if not ext_call.return_data[0]:
                                                _6020 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6020] = 0
                                                mem[352] = _6020
                                                _6647 = mem[384]
                                                _6879 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6879] = 0
                                                _6978 = mem[_6647]
                                                if mem[_6647] < 0:
                                                    return 3, 0, 0
                                                _7481 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7481] = _6978
                                                mem[384] = _7481
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6229 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6229] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _6229
                                                _6878 = mem[384]
                                                _7129 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7129] = 0
                                                _7231 = mem[_6878]
                                                if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6878] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7693 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7693] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7231
                                                mem[384] = _7693
                        else:
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0]:
                                return 3, 0, 0
                            _1752 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1752] = 0
                            mem[224] = _1752
                            _1830 = mem[256]
                            _1867 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1867] = 0
                            _1883 = mem[_1830]
                            if mem[_1830] < 0:
                                return 3, 0, 0
                            _1942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1942] = _1883
                            mem[256] = _1942
                            if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                                _2066 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2066] = 0
                                _2108 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2108] = 0
                                _2145 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2145] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2183 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2183] = markets[stor6[idx]].field_1792
                                _2205 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2205] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2263 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2263] = 0
                                    _2316 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2316] = 10^18
                                    _2345 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2345] = 0
                                    _2397 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2397] = 10^18
                                    _2471 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2471] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2630 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2630] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3021 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3021] = 0
                                        _3063 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3063] = 0
                                        _3127 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3127] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _3348 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3348] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4020 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4020] = 0
                                        if not ext_call.return_data[0]:
                                            _4657 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4657] = 0
                                            mem[352] = _4657
                                            _5305 = mem[384]
                                            _5529 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5529] = 0
                                            _5625 = mem[_5305]
                                            if mem[_5305] < 0:
                                                return 3, 0, 0
                                            _6015 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6015] = _5625
                                            mem[384] = _6015
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _4828 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4828] = 0
                                            mem[352] = _4828
                                            _5528 = mem[384]
                                            _5743 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5743] = 0
                                            _5818 = mem[_5528]
                                            if mem[_5528] < 0:
                                                return 3, 0, 0
                                            _6228 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6228] = _5818
                                            mem[384] = _6228
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _3603 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3603] = 0
                                        _3723 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3723] = 0
                                        _3920 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3920] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4354 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4354] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5211 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5211] = 0
                                        if not ext_call.return_data[0]:
                                            _6013 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6013] = 0
                                            mem[352] = _6013
                                            _6642 = mem[384]
                                            _6875 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6875] = 0
                                            _6972 = mem[_6642]
                                            if mem[_6642] < 0:
                                                return 3, 0, 0
                                            _7475 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7475] = _6972
                                            mem[384] = _7475
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6225 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6225] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _6225
                                            _6874 = mem[384]
                                            _7128 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7128] = 0
                                            _7223 = mem[_6874]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6874] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7691 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7691] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7223
                                            mem[384] = _7691
                                else:
                                    require markets[stor6[idx]].field_1792
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2283 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2283] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2344 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2344] = 10^18
                                    _2371 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2371] = 0
                                    _2421 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2421] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _2508 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2508] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _2629 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2629] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3020 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3020] = 0
                                            _3062 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3062] = 0
                                            _3126 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3126] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _3346 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3346] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4019 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4019] = 0
                                            if not ext_call.return_data[0]:
                                                _4656 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4656] = 0
                                                mem[352] = _4656
                                                _5302 = mem[384]
                                                _5526 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5526] = 0
                                                _5623 = mem[_5302]
                                                if mem[_5302] < 0:
                                                    return 3, 0, 0
                                                _6012 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6012] = _5623
                                                mem[384] = _6012
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _4825 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4825] = 0
                                                mem[352] = _4825
                                                _5525 = mem[384]
                                                _5740 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5740] = 0
                                                _5816 = mem[_5525]
                                                if mem[_5525] < 0:
                                                    return 3, 0, 0
                                                _6224 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6224] = _5816
                                                mem[384] = _6224
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _3602 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3602] = 0
                                            _3721 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3721] = 0
                                            _3917 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3917] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4352 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4352] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5210 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5210] = 0
                                            if not ext_call.return_data[0]:
                                                _6010 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6010] = 0
                                                mem[352] = _6010
                                                _6640 = mem[384]
                                                _6872 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6872] = 0
                                                _6970 = mem[_6640]
                                                if mem[_6640] < 0:
                                                    return 3, 0, 0
                                                _7471 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7471] = _6970
                                                mem[384] = _7471
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6221 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6221] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _6221
                                                _6871 = mem[384]
                                                _7127 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7127] = 0
                                                _7219 = mem[_6871]
                                                if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6871] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7689 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7689] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7219
                                                mem[384] = _7689
                                    else:
                                        require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                        if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _2666 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2666] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3061 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3061] = 0
                                            _3110 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3110] = 0
                                            _3204 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3204] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _3474 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3474] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4186 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4186] = 0
                                            if not ext_call.return_data[0]:
                                                _4823 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4823] = 0
                                                mem[352] = _4823
                                                _5523 = mem[384]
                                                _5737 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5737] = 0
                                                _5814 = mem[_5523]
                                                if mem[_5523] < 0:
                                                    return 3, 0, 0
                                                _6220 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6220] = _5814
                                                mem[384] = _6220
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _5012 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5012] = 0
                                                mem[352] = _5012
                                                _5736 = mem[384]
                                                _5928 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5928] = 0
                                                _6009 = mem[_5736]
                                                if mem[_5736] < 0:
                                                    return 3, 0, 0
                                                _6407 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6407] = _6009
                                                mem[384] = _6407
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _3720 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3720] = 0
                                            _3858 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3858] = 0
                                            _4097 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4097] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4506 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4506] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5416 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5416] = 0
                                            if not ext_call.return_data[0]:
                                                _6218 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6218] = 0
                                                mem[352] = _6218
                                                _6869 = mem[384]
                                                _7126 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7126] = 0
                                                _7217 = mem[_6869]
                                                if mem[_6869] < 0:
                                                    return 3, 0, 0
                                                _7685 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7685] = _7217
                                                mem[384] = _7685
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6404 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6404] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _6404
                                                _7125 = mem[384]
                                                _7363 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7363] = 0
                                                _7467 = mem[_7125]
                                                if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_7125] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7828 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7828] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7467
                                                mem[384] = _7828
                    else:
                        require supplyBalances[address(arg1)][stor6[idx]].field_0
                        if 0 / supplyBalances[address(arg1)][stor6[idx]].field_0:
                            return 3, 0, 0
                        if not supplyBalances[address(arg1)][stor6[idx]].field_256:
                            return 5, 0, 0
                        require supplyBalances[address(arg1)][stor6[idx]].field_256
                        mem[192] = 0 / supplyBalances[address(arg1)][stor6[idx]].field_256
                        _1577 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1577] = 0
                        _1597 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1597] = 0
                        _1628 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1628] = 0
                        if not oracleAddress:
                            return 24, 0, 0
                        mem[mem[64] + 4] = collateralMarkets[idx]
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0x5e9a523c with:
                             gas gas_remaining wei
                            args collateralMarkets[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1701 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1701] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _1797 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1797] = 0
                        if not ext_call.return_data[0]:
                            _1906 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1906] = 0
                            mem[224] = _1906
                            _1995 = mem[256]
                            _2017 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2017] = 0
                            _2032 = mem[_1995]
                            if mem[_1995] < 0:
                                return 3, 0, 0
                            _2105 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2105] = _2032
                            mem[256] = _2105
                            if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                                _2182 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2182] = 0
                                _2204 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2204] = 0
                                _2232 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2232] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2282 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2282] = markets[stor6[idx]].field_1792
                                _2306 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2306] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2395 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2395] = 0
                                    _2457 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2457] = 10^18
                                    _2490 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2490] = 0
                                    _2565 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2565] = 10^18
                                    _2665 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2665] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2786 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2786] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3471 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3471] = 0
                                        _3598 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3598] = 0
                                        _3767 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3767] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4182 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4182] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5010 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5010] = 0
                                        if not ext_call.return_data[0]:
                                            _5809 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5809] = 0
                                            mem[352] = _5809
                                            _6462 = mem[384]
                                            _6635 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6635] = 0
                                            _6741 = mem[_6462]
                                            if mem[_6462] < 0:
                                                return 3, 0, 0
                                            _7211 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7211] = _6741
                                            mem[384] = _7211
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6005 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6005] = 0
                                            mem[352] = _6005
                                            _6634 = mem[384]
                                            _6867 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6867] = 0
                                            _6965 = mem[_6634]
                                            if mem[_6634] < 0:
                                                return 3, 0, 0
                                            _7465 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7465] = _6965
                                            mem[384] = _7465
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4502 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4502] = 0
                                        _4652 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4652] = 0
                                        _4902 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4902] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _5414 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5414] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6403 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6403] = 0
                                        if not ext_call.return_data[0]:
                                            _7209 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7209] = 0
                                            mem[352] = _7209
                                            _7866 = mem[384]
                                            _7954 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7954] = 0
                                            _7993 = mem[_7866]
                                            if mem[_7866] < 0:
                                                return 3, 0, 0
                                            _8286 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8286] = _7993
                                            mem[384] = _8286
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7462 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7462] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _7462
                                            _7953 = mem[384]
                                            _8071 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8071] = 0
                                            _8119 = mem[_7953]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_7953] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8452 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8452] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8119
                                            mem[384] = _8452
                                else:
                                    require markets[stor6[idx]].field_1792
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2418 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2418] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2489 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2489] = 10^18
                                    _2527 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2527] = 0
                                    _2591 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2591] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _2697 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2697] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _2785 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2785] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3470 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3470] = 0
                                            _3597 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3597] = 0
                                            _3766 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3766] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4180 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4180] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5009 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5009] = 0
                                            if not ext_call.return_data[0]:
                                                _5808 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5808] = 0
                                                mem[352] = _5808
                                                _6459 = mem[384]
                                                _6632 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6632] = 0
                                                _6739 = mem[_6459]
                                                if mem[_6459] < 0:
                                                    return 3, 0, 0
                                                _7208 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7208] = _6739
                                                mem[384] = _7208
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6002 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6002] = 0
                                                mem[352] = _6002
                                                _6631 = mem[384]
                                                _6864 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6864] = 0
                                                _6963 = mem[_6631]
                                                if mem[_6631] < 0:
                                                    return 3, 0, 0
                                                _7461 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7461] = _6963
                                                mem[384] = _7461
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4501 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4501] = 0
                                            _4650 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4650] = 0
                                            _4899 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4899] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _5412 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5412] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6402 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6402] = 0
                                            if not ext_call.return_data[0]:
                                                _7206 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7206] = 0
                                                mem[352] = _7206
                                                _7864 = mem[384]
                                                _7951 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7951] = 0
                                                _7991 = mem[_7864]
                                                if mem[_7864] < 0:
                                                    return 3, 0, 0
                                                _8282 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8282] = _7991
                                                mem[384] = _8282
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7458 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7458] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _7458
                                                _7950 = mem[384]
                                                _8070 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8070] = 0
                                                _8115 = mem[_7950]
                                                if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_7950] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8450 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8450] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8115
                                                mem[384] = _8450
                                    else:
                                        require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                        if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _2822 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2822] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3596 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3596] = 0
                                            _3719 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3719] = 0
                                            _3909 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3909] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4343 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4343] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5206 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5206] = 0
                                            if not ext_call.return_data[0]:
                                                _6000 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6000] = 0
                                                mem[352] = _6000
                                                _6629 = mem[384]
                                                _6861 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6861] = 0
                                                _6961 = mem[_6629]
                                                if mem[_6629] < 0:
                                                    return 3, 0, 0
                                                _7457 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7457] = _6961
                                                mem[384] = _7457
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6213 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6213] = 0
                                                mem[352] = _6213
                                                _6860 = mem[384]
                                                _7123 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7123] = 0
                                                _7205 = mem[_6860]
                                                if mem[_6860] < 0:
                                                    return 3, 0, 0
                                                _7683 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7683] = _7205
                                                mem[384] = _7683
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4649 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4649] = 0
                                            _4818 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4818] = 0
                                            _5083 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5083] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _5618 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5618] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6559 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6559] = 0
                                            if not ext_call.return_data[0]:
                                                _7455 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7455] = 0
                                                mem[352] = _7455
                                                _7948 = mem[384]
                                                _8069 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8069] = 0
                                                _8113 = mem[_7948]
                                                if mem[_7948] < 0:
                                                    return 3, 0, 0
                                                _8446 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8446] = _8113
                                                mem[384] = _8446
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7680 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7680] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _7680
                                                _8068 = mem[384]
                                                _8223 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8223] = 0
                                                _8278 = mem[_8068]
                                                if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8068] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8563 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8563] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8278
                                                mem[384] = _8563
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * 0 / supplyBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / supplyBalances[address(arg1)][stor6[idx]].field_256:
                                return 3, 0, 0
                            _1939 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1939] = ext_call.return_data[0] * 0 / supplyBalances[address(arg1)][stor6[idx]].field_256
                            mem[224] = _1939
                            _2016 = mem[256]
                            _2054 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2054] = 0
                            _2065 = mem[_2016]
                            if (ext_call.return_data[0] * 0 / supplyBalances[address(arg1)][stor6[idx]].field_256) + mem[_2016] < ext_call.return_data[0] * 0 / supplyBalances[address(arg1)][stor6[idx]].field_256:
                                return 3, 0, 0
                            _2144 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2144] = (ext_call.return_data[0] * 0 / supplyBalances[address(arg1)][stor6[idx]].field_256) + _2065
                            mem[256] = _2144
                            if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                                _2201 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2201] = 0
                                _2231 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2231] = 0
                                _2249 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2249] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2305 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2305] = markets[stor6[idx]].field_1792
                                _2329 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2329] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2417 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2417] = 0
                                    _2488 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2488] = 10^18
                                    _2526 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2526] = 0
                                    _2589 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2589] = 10^18
                                    _2696 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2696] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2820 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2820] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3594 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3594] = 0
                                        _3718 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3718] = 0
                                        _3905 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3905] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4338 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4338] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5205 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5205] = 0
                                        if not ext_call.return_data[0]:
                                            _5996 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5996] = 0
                                            mem[352] = _5996
                                            _6623 = mem[384]
                                            _6855 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6855] = 0
                                            _6957 = mem[_6623]
                                            if mem[_6623] < 0:
                                                return 3, 0, 0
                                            _7450 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7450] = _6957
                                            mem[384] = _7450
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6209 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6209] = 0
                                            mem[352] = _6209
                                            _6854 = mem[384]
                                            _7120 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7120] = 0
                                            _7200 = mem[_6854]
                                            if mem[_6854] < 0:
                                                return 3, 0, 0
                                            _7679 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7679] = _7200
                                            mem[384] = _7679
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4646 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4646] = 0
                                        _4815 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4815] = 0
                                        _5076 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5076] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _5615 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5615] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6558 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6558] = 0
                                        if not ext_call.return_data[0]:
                                            _7448 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7448] = 0
                                            mem[352] = _7448
                                            _7943 = mem[384]
                                            _8065 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8065] = 0
                                            _8107 = mem[_7943]
                                            if mem[_7943] < 0:
                                                return 3, 0, 0
                                            _8440 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8440] = _8107
                                            mem[384] = _8440
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7676 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7676] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _7676
                                            _8064 = mem[384]
                                            _8222 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8222] = 0
                                            _8270 = mem[_8064]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8064] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8561 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8561] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8270
                                            mem[384] = _8561
                                else:
                                    require markets[stor6[idx]].field_1792
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2443 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2443] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2525 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2525] = 10^18
                                    _2556 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2556] = 0
                                    _2628 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2628] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _2731 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2731] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _2819 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2819] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3593 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3593] = 0
                                            _3717 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3717] = 0
                                            _3904 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3904] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4336 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4336] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5204 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5204] = 0
                                            if not ext_call.return_data[0]:
                                                _5995 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5995] = 0
                                                mem[352] = _5995
                                                _6620 = mem[384]
                                                _6852 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6852] = 0
                                                _6955 = mem[_6620]
                                                if mem[_6620] < 0:
                                                    return 3, 0, 0
                                                _7447 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7447] = _6955
                                                mem[384] = _7447
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6206 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6206] = 0
                                                mem[352] = _6206
                                                _6851 = mem[384]
                                                _7117 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7117] = 0
                                                _7198 = mem[_6851]
                                                if mem[_6851] < 0:
                                                    return 3, 0, 0
                                                _7675 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7675] = _7198
                                                mem[384] = _7675
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4645 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4645] = 0
                                            _4813 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4813] = 0
                                            _5073 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5073] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _5613 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5613] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6557 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6557] = 0
                                            if not ext_call.return_data[0]:
                                                _7445 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7445] = 0
                                                mem[352] = _7445
                                                _7941 = mem[384]
                                                _8062 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8062] = 0
                                                _8105 = mem[_7941]
                                                if mem[_7941] < 0:
                                                    return 3, 0, 0
                                                _8436 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8436] = _8105
                                                mem[384] = _8436
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7672 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7672] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _7672
                                                _8061 = mem[384]
                                                _8221 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8221] = 0
                                                _8266 = mem[_8061]
                                                if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8061] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8559 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8559] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8266
                                                mem[384] = _8559
                                    else:
                                        require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                        if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _2858 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2858] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3716 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3716] = 0
                                            _3857 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3857] = 0
                                            _4084 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4084] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4490 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4490] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5408 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5408] = 0
                                            if not ext_call.return_data[0]:
                                                _6204 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6204] = 0
                                                mem[352] = _6204
                                                _6849 = mem[384]
                                                _7114 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7114] = 0
                                                _7196 = mem[_6849]
                                                if mem[_6849] < 0:
                                                    return 3, 0, 0
                                                _7671 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7671] = _7196
                                                mem[384] = _7671
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6396 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6396] = 0
                                                mem[352] = _6396
                                                _7113 = mem[384]
                                                _7358 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7358] = 0
                                                _7444 = mem[_7113]
                                                if mem[_7113] < 0:
                                                    return 3, 0, 0
                                                _7826 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7826] = _7444
                                                mem[384] = _7826
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4812 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4812] = 0
                                            _5003 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5003] = 0
                                            _5280 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5280] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _5803 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5803] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6735 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6735] = 0
                                            if not ext_call.return_data[0]:
                                                _7669 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7669] = 0
                                                mem[352] = _7669
                                                _8059 = mem[384]
                                                _8220 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8220] = 0
                                                _8264 = mem[_8059]
                                                if mem[_8059] < 0:
                                                    return 3, 0, 0
                                                _8555 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8555] = _8264
                                                mem[384] = _8555
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7823 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7823] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _7823
                                                _8219 = mem[384]
                                                _8379 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8379] = 0
                                                _8432 = mem[_8219]
                                                if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8219] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8613 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8613] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8432
                                                mem[384] = _8613
                else:
                    require (block.number * markets[stor6[idx]].field_1024) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024) + 10^18
                    if (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) + (10^18 * markets[stor6[idx]].field_1280) / (block.number * markets[stor6[idx]].field_1024) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024) + 10^18 != markets[stor6[idx]].field_1280:
                        return 3, 0, 0
                    _1430 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1430] = (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280)
                    mem[160] = (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18
                    if not supplyBalances[address(arg1)][stor6[idx]].field_0:
                        mem[192] = 0
                        _1486 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1486] = 0
                        _1494 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1494] = 0
                        _1506 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1506] = 0
                        if not oracleAddress:
                            return 24, 0, 0
                        mem[mem[64] + 4] = collateralMarkets[idx]
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0x5e9a523c with:
                             gas gas_remaining wei
                            args collateralMarkets[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1553 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1553] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _1678 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1678] = 0
                        if not ext_call.return_data[0]:
                            _1750 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1750] = 0
                            mem[224] = _1750
                            _1828 = mem[256]
                            _1864 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1864] = 0
                            _1881 = mem[_1828]
                            if mem[_1828] < 0:
                                return 3, 0, 0
                            _1938 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1938] = _1881
                            mem[256] = _1938
                            if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                                _2063 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2063] = 0
                                _2103 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2103] = 0
                                _2142 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2142] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2181 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2181] = markets[stor6[idx]].field_1792
                                _2200 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2200] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2262 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2262] = 0
                                    _2314 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2314] = 10^18
                                    _2342 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2342] = 0
                                    _2394 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2394] = 10^18
                                    _2470 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2470] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2625 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2625] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3015 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3015] = 0
                                        _3060 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3060] = 0
                                        _3119 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3119] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _3330 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3330] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4015 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4015] = 0
                                        if not ext_call.return_data[0]:
                                            _4638 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4638] = 0
                                            mem[352] = _4638
                                            _5276 = mem[384]
                                            _5504 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5504] = 0
                                            _5609 = mem[_5276]
                                            if mem[_5276] < 0:
                                                return 3, 0, 0
                                            _5989 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5989] = _5609
                                            mem[384] = _5989
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _4809 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4809] = 0
                                            mem[352] = _4809
                                            _5503 = mem[384]
                                            _5727 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5727] = 0
                                            _5798 = mem[_5503]
                                            if mem[_5503] < 0:
                                                return 3, 0, 0
                                            _6203 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6203] = _5798
                                            mem[384] = _6203
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _3588 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3588] = 0
                                        _3713 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3713] = 0
                                        _3897 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3897] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4333 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4333] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5202 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5202] = 0
                                        if not ext_call.return_data[0]:
                                            _5987 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5987] = 0
                                            mem[352] = _5987
                                            _6614 = mem[384]
                                            _6845 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6845] = 0
                                            _6949 = mem[_6614]
                                            if mem[_6614] < 0:
                                                return 3, 0, 0
                                            _7438 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7438] = _6949
                                            mem[384] = _7438
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6200 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6200] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _6200
                                            _6844 = mem[384]
                                            _7111 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7111] = 0
                                            _7188 = mem[_6844]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6844] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7668 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7668] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7188
                                            mem[384] = _7668
                                else:
                                    require markets[stor6[idx]].field_1792
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2280 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2280] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2341 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2341] = 10^18
                                    _2370 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2370] = 0
                                    _2416 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2416] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _2503 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2503] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _2624 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2624] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3014 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3014] = 0
                                            _3059 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3059] = 0
                                            _3118 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3118] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _3328 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3328] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4014 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4014] = 0
                                            if not ext_call.return_data[0]:
                                                _4637 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4637] = 0
                                                mem[352] = _4637
                                                _5273 = mem[384]
                                                _5501 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5501] = 0
                                                _5607 = mem[_5273]
                                                if mem[_5273] < 0:
                                                    return 3, 0, 0
                                                _5986 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5986] = _5607
                                                mem[384] = _5986
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _4806 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4806] = 0
                                                mem[352] = _4806
                                                _5500 = mem[384]
                                                _5724 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5724] = 0
                                                _5796 = mem[_5500]
                                                if mem[_5500] < 0:
                                                    return 3, 0, 0
                                                _6199 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6199] = _5796
                                                mem[384] = _6199
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _3587 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3587] = 0
                                            _3711 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3711] = 0
                                            _3894 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3894] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4331 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4331] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5201 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5201] = 0
                                            if not ext_call.return_data[0]:
                                                _5984 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5984] = 0
                                                mem[352] = _5984
                                                _6612 = mem[384]
                                                _6842 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6842] = 0
                                                _6947 = mem[_6612]
                                                if mem[_6612] < 0:
                                                    return 3, 0, 0
                                                _7434 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7434] = _6947
                                                mem[384] = _7434
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6196 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6196] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _6196
                                                _6841 = mem[384]
                                                _7110 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7110] = 0
                                                _7184 = mem[_6841]
                                                if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_6841] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7666 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7666] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7184
                                                mem[384] = _7666
                                    else:
                                        require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                        if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _2663 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2663] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3058 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3058] = 0
                                            _3109 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3109] = 0
                                            _3195 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3195] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _3453 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3453] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4174 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4174] = 0
                                            if not ext_call.return_data[0]:
                                                _4804 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4804] = 0
                                                mem[352] = _4804
                                                _5498 = mem[384]
                                                _5721 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5721] = 0
                                                _5794 = mem[_5498]
                                                if mem[_5498] < 0:
                                                    return 3, 0, 0
                                                _6195 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6195] = _5794
                                                mem[384] = _6195
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _4998 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4998] = 0
                                                mem[352] = _4998
                                                _5720 = mem[384]
                                                _5921 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5921] = 0
                                                _5983 = mem[_5720]
                                                if mem[_5720] < 0:
                                                    return 3, 0, 0
                                                _6394 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6394] = _5983
                                                mem[384] = _6394
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _3710 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3710] = 0
                                            _3852 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3852] = 0
                                            _4072 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4072] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4485 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4485] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5405 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5405] = 0
                                            if not ext_call.return_data[0]:
                                                _6193 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6193] = 0
                                                mem[352] = _6193
                                                _6839 = mem[384]
                                                _7109 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7109] = 0
                                                _7182 = mem[_6839]
                                                if mem[_6839] < 0:
                                                    return 3, 0, 0
                                                _7662 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7662] = _7182
                                                mem[384] = _7662
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6391 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6391] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _6391
                                                _7108 = mem[384]
                                                _7355 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7355] = 0
                                                _7430 = mem[_7108]
                                                if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_7108] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7822 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7822] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7430
                                                mem[384] = _7822
                        else:
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0]:
                                return 3, 0, 0
                            _1775 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1775] = 0
                            mem[224] = _1775
                            _1863 = mem[256]
                            _1900 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1900] = 0
                            _1905 = mem[_1863]
                            if mem[_1863] < 0:
                                return 3, 0, 0
                            _1977 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1977] = _1905
                            mem[256] = _1977
                            if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                                _2100 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2100] = 0
                                _2141 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2141] = 0
                                _2167 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2167] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2199 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2199] = markets[stor6[idx]].field_1792
                                _2228 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2228] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2279 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2279] = 0
                                    _2340 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2340] = 10^18
                                    _2369 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2369] = 0
                                    _2414 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2414] = 10^18
                                    _2502 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2502] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2661 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2661] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3056 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3056] = 0
                                        _3108 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3108] = 0
                                        _3191 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3191] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _3448 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3448] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4173 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4173] = 0
                                        if not ext_call.return_data[0]:
                                            _4800 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4800] = 0
                                            mem[352] = _4800
                                            _5492 = mem[384]
                                            _5715 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5715] = 0
                                            _5790 = mem[_5492]
                                            if mem[_5492] < 0:
                                                return 3, 0, 0
                                            _6188 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6188] = _5790
                                            mem[384] = _6188
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _4994 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4994] = 0
                                            mem[352] = _4994
                                            _5714 = mem[384]
                                            _5918 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5918] = 0
                                            _5978 = mem[_5714]
                                            if mem[_5714] < 0:
                                                return 3, 0, 0
                                            _6390 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6390] = _5978
                                            mem[384] = _6390
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _3707 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3707] = 0
                                        _3849 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3849] = 0
                                        _4065 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4065] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4482 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4482] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5404 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5404] = 0
                                        if not ext_call.return_data[0]:
                                            _6186 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6186] = 0
                                            mem[352] = _6186
                                            _6834 = mem[384]
                                            _7105 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7105] = 0
                                            _7176 = mem[_6834]
                                            if mem[_6834] < 0:
                                                return 3, 0, 0
                                            _7656 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7656] = _7176
                                            mem[384] = _7656
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6387 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6387] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _6387
                                            _7104 = mem[384]
                                            _7354 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7354] = 0
                                            _7422 = mem[_7104]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_7104] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7820 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7820] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7422
                                            mem[384] = _7820
                                else:
                                    require markets[stor6[idx]].field_1792
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2303 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2303] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2368 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2368] = 10^18
                                    _2390 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2390] = 0
                                    _2442 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2442] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _2536 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2536] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _2660 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2660] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3055 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3055] = 0
                                            _3107 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3107] = 0
                                            _3190 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3190] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _3446 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3446] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4172 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4172] = 0
                                            if not ext_call.return_data[0]:
                                                _4799 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4799] = 0
                                                mem[352] = _4799
                                                _5489 = mem[384]
                                                _5712 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5712] = 0
                                                _5788 = mem[_5489]
                                                if mem[_5489] < 0:
                                                    return 3, 0, 0
                                                _6185 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6185] = _5788
                                                mem[384] = _6185
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _4991 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4991] = 0
                                                mem[352] = _4991
                                                _5711 = mem[384]
                                                _5915 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5915] = 0
                                                _5976 = mem[_5711]
                                                if mem[_5711] < 0:
                                                    return 3, 0, 0
                                                _6386 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6386] = _5976
                                                mem[384] = _6386
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _3706 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3706] = 0
                                            _3847 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3847] = 0
                                            _4062 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4062] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4480 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4480] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5403 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5403] = 0
                                            if not ext_call.return_data[0]:
                                                _6183 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6183] = 0
                                                mem[352] = _6183
                                                _6832 = mem[384]
                                                _7102 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7102] = 0
                                                _7174 = mem[_6832]
                                                if mem[_6832] < 0:
                                                    return 3, 0, 0
                                                _7652 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7652] = _7174
                                                mem[384] = _7652
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6383 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6383] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _6383
                                                _7101 = mem[384]
                                                _7353 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7353] = 0
                                                _7418 = mem[_7101]
                                                if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_7101] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7818 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7818] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7418
                                                mem[384] = _7818
                                    else:
                                        require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                        if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _2693 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2693] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3106 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3106] = 0
                                            _3169 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3169] = 0
                                            _3293 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3293] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _3576 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3576] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4327 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4327] = 0
                                            if not ext_call.return_data[0]:
                                                _4989 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4989] = 0
                                                mem[352] = _4989
                                                _5709 = mem[384]
                                                _5912 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5912] = 0
                                                _5974 = mem[_5709]
                                                if mem[_5709] < 0:
                                                    return 3, 0, 0
                                                _6382 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6382] = _5974
                                                mem[384] = _6382
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _5195 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5195] = 0
                                                mem[352] = _5195
                                                _5911 = mem[384]
                                                _6103 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6103] = 0
                                                _6182 = mem[_5911]
                                                if mem[_5911] < 0:
                                                    return 3, 0, 0
                                                _6555 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6555] = _6182
                                                mem[384] = _6555
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _3846 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3846] = 0
                                            _4008 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4008] = 0
                                            _4250 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4250] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4632 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4632] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5603 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5603] = 0
                                            if not ext_call.return_data[0]:
                                                _6380 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6380] = 0
                                                mem[352] = _6380
                                                _7099 = mem[384]
                                                _7352 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7352] = 0
                                                _7416 = mem[_7099]
                                                if mem[_7099] < 0:
                                                    return 3, 0, 0
                                                _7814 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7814] = _7416
                                                mem[384] = _7814
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6552 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6552] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _6552
                                                _7351 = mem[384]
                                                _7565 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7565] = 0
                                                _7648 = mem[_7351]
                                                if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_7351] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7908 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7908] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _7648
                                                mem[384] = _7908
                    else:
                        require supplyBalances[address(arg1)][stor6[idx]].field_0
                        if supplyBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18:
                            return 3, 0, 0
                        if not supplyBalances[address(arg1)][stor6[idx]].field_256:
                            return 5, 0, 0
                        require supplyBalances[address(arg1)][stor6[idx]].field_256
                        mem[192] = supplyBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256
                        _1596 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1596] = 0
                        _1618 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1618] = 0
                        _1654 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1654] = 0
                        if not oracleAddress:
                            return 24, 0, 0
                        mem[mem[64] + 4] = collateralMarkets[idx]
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0x5e9a523c with:
                             gas gas_remaining wei
                            args collateralMarkets[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1721 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1721] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _1820 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1820] = 0
                        if not ext_call.return_data[0]:
                            _1936 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1936] = 0
                            mem[224] = _1936
                            _2014 = mem[256]
                            _2053 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2053] = 0
                            _2062 = mem[_2014]
                            if mem[_2014] < 0:
                                return 3, 0, 0
                            _2138 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2138] = _2062
                            mem[256] = _2138
                            if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                                _2198 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2198] = 0
                                _2227 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2227] = 0
                                _2248 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2248] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2302 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2302] = markets[stor6[idx]].field_1792
                                _2328 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2328] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2412 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2412] = 0
                                    _2486 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2486] = 10^18
                                    _2522 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2522] = 0
                                    _2586 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2586] = 10^18
                                    _2692 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2692] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2817 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2817] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3573 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3573] = 0
                                        _3702 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3702] = 0
                                        _3885 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3885] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4323 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4323] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5193 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5193] = 0
                                        if not ext_call.return_data[0]:
                                            _5969 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5969] = 0
                                            mem[352] = _5969
                                            _6601 = mem[384]
                                            _6827 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6827] = 0
                                            _6941 = mem[_6601]
                                            if mem[_6601] < 0:
                                                return 3, 0, 0
                                            _7410 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7410] = _6941
                                            mem[384] = _7410
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6178 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6178] = 0
                                            mem[352] = _6178
                                            _6826 = mem[384]
                                            _7097 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7097] = 0
                                            _7169 = mem[_6826]
                                            if mem[_6826] < 0:
                                                return 3, 0, 0
                                            _7646 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7646] = _7169
                                            mem[384] = _7646
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4628 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4628] = 0
                                        _4795 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4795] = 0
                                        _5057 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5057] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _5601 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5601] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6551 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6551] = 0
                                        if not ext_call.return_data[0]:
                                            _7408 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7408] = 0
                                            mem[352] = _7408
                                            _7934 = mem[384]
                                            _8056 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8056] = 0
                                            _8097 = mem[_7934]
                                            if mem[_7934] < 0:
                                                return 3, 0, 0
                                            _8414 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8414] = _8097
                                            mem[384] = _8414
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7643 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7643] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _7643
                                            _8055 = mem[384]
                                            _8217 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8217] = 0
                                            _8248 = mem[_8055]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8055] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8545 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8545] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8248
                                            mem[384] = _8545
                                else:
                                    require markets[stor6[idx]].field_1792
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2439 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2439] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2521 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2521] = 10^18
                                    _2554 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2554] = 0
                                    _2622 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2622] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _2725 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2725] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _2816 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2816] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3572 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3572] = 0
                                            _3701 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3701] = 0
                                            _3884 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3884] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4321 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4321] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5192 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5192] = 0
                                            if not ext_call.return_data[0]:
                                                _5968 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5968] = 0
                                                mem[352] = _5968
                                                _6598 = mem[384]
                                                _6824 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6824] = 0
                                                _6939 = mem[_6598]
                                                if mem[_6598] < 0:
                                                    return 3, 0, 0
                                                _7407 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7407] = _6939
                                                mem[384] = _7407
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6175 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6175] = 0
                                                mem[352] = _6175
                                                _6823 = mem[384]
                                                _7094 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7094] = 0
                                                _7167 = mem[_6823]
                                                if mem[_6823] < 0:
                                                    return 3, 0, 0
                                                _7642 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7642] = _7167
                                                mem[384] = _7642
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4627 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4627] = 0
                                            _4793 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4793] = 0
                                            _5054 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5054] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _5599 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5599] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6550 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6550] = 0
                                            if not ext_call.return_data[0]:
                                                _7405 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7405] = 0
                                                mem[352] = _7405
                                                _7932 = mem[384]
                                                _8053 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8053] = 0
                                                _8095 = mem[_7932]
                                                if mem[_7932] < 0:
                                                    return 3, 0, 0
                                                _8410 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8410] = _8095
                                                mem[384] = _8410
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7639 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7639] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _7639
                                                _8052 = mem[384]
                                                _8216 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8216] = 0
                                                _8244 = mem[_8052]
                                                if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8052] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8543 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8543] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8244
                                                mem[384] = _8543
                                    else:
                                        require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                        if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _2856 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2856] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3700 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3700] = 0
                                            _3845 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3845] = 0
                                            _4054 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4054] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4471 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4471] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5399 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5399] = 0
                                            if not ext_call.return_data[0]:
                                                _6173 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6173] = 0
                                                mem[352] = _6173
                                                _6821 = mem[384]
                                                _7091 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7091] = 0
                                                _7165 = mem[_6821]
                                                if mem[_6821] < 0:
                                                    return 3, 0, 0
                                                _7638 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7638] = _7165
                                                mem[384] = _7638
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6375 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6375] = 0
                                                mem[352] = _6375
                                                _7090 = mem[384]
                                                _7349 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7349] = 0
                                                _7404 = mem[_7090]
                                                if mem[_7090] < 0:
                                                    return 3, 0, 0
                                                _7812 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7812] = _7404
                                                mem[384] = _7812
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4792 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4792] = 0
                                            _4984 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4984] = 0
                                            _5254 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5254] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _5783 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5783] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6730 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6730] = 0
                                            if not ext_call.return_data[0]:
                                                _7636 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7636] = 0
                                                mem[352] = _7636
                                                _8050 = mem[384]
                                                _8215 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8215] = 0
                                                _8242 = mem[_8050]
                                                if mem[_8050] < 0:
                                                    return 3, 0, 0
                                                _8539 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8539] = _8242
                                                mem[384] = _8539
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7809 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7809] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _7809
                                                _8214 = mem[384]
                                                _8378 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8378] = 0
                                                _8406 = mem[_8214]
                                                if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8214] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8609 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8609] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8406
                                                mem[384] = _8609
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * supplyBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != supplyBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256:
                                return 3, 0, 0
                            _1974 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1974] = ext_call.return_data[0] * supplyBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256
                            mem[224] = _1974
                            _2052 = mem[256]
                            _2096 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2096] = 0
                            _2099 = mem[_2052]
                            if (ext_call.return_data[0] * supplyBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256) + mem[_2052] < ext_call.return_data[0] * supplyBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256:
                                return 3, 0, 0
                            _2166 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2166] = (ext_call.return_data[0] * supplyBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 / supplyBalances[address(arg1)][stor6[idx]].field_256) + _2099
                            mem[256] = _2166
                            if borrowBalances[address(arg1)][stor6[idx]].field_0 > 0:
                                _2224 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2224] = 0
                                _2247 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2247] = 0
                                _2254 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2254] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2327 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2327] = markets[stor6[idx]].field_1792
                                _2352 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2352] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2438 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2438] = 0
                                    _2520 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2520] = 10^18
                                    _2553 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2553] = 0
                                    _2620 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2620] = 10^18
                                    _2724 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2724] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _2854 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2854] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3698 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3698] = 0
                                        _3844 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3844] = 0
                                        _4050 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4050] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _4466 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4466] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5398 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5398] = 0
                                        if not ext_call.return_data[0]:
                                            _6169 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6169] = 0
                                            mem[352] = _6169
                                            _6815 = mem[384]
                                            _7085 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7085] = 0
                                            _7161 = mem[_6815]
                                            if mem[_6815] < 0:
                                                return 3, 0, 0
                                            _7631 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7631] = _7161
                                            mem[384] = _7631
                                        else:
                                            require ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6371 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6371] = 0
                                            mem[352] = _6371
                                            _7084 = mem[384]
                                            _7346 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7346] = 0
                                            _7399 = mem[_7084]
                                            if mem[_7084] < 0:
                                                return 3, 0, 0
                                            _7808 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7808] = _7399
                                            mem[384] = _7808
                                    else:
                                        require borrowBalances[address(arg1)][stor6[idx]].field_0
                                        if borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        require borrowBalances[address(arg1)][stor6[idx]].field_256
                                        mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4789 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4789] = 0
                                        _4981 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4981] = 0
                                        _5247 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5247] = 0
                                        if not oracleAddress:
                                            return 24, 0, 0
                                        mem[mem[64] + 4] = collateralMarkets[idx]
                                        require ext_code.size(oracleAddress)
                                        call oracleAddress.0x5e9a523c with:
                                             gas gas_remaining wei
                                            args collateralMarkets[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _5780 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5780] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6729 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6729] = 0
                                        if not ext_call.return_data[0]:
                                            _7629 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7629] = 0
                                            mem[352] = _7629
                                            _8045 = mem[384]
                                            _8211 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8211] = 0
                                            _8236 = mem[_8045]
                                            if mem[_8045] < 0:
                                                return 3, 0, 0
                                            _8533 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8533] = _8236
                                            mem[384] = _8533
                                        else:
                                            require ext_call.return_data[0]
                                            if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7805 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7805] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[352] = _7805
                                            _8210 = mem[384]
                                            _8377 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8377] = 0
                                            _8398 = mem[_8210]
                                            if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8210] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8607 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8607] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * 10^18 * markets[stor6[idx]].field_2048 / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8398
                                            mem[384] = _8607
                                else:
                                    require markets[stor6[idx]].field_1792
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2468 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2468] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2552 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2552] = 10^18
                                    _2580 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2580] = 0
                                    _2659 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2659] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _2749 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2749] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _2853 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2853] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3697 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3697] = 0
                                            _3843 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3843] = 0
                                            _4049 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4049] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4464 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4464] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5397 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5397] = 0
                                            if not ext_call.return_data[0]:
                                                _6168 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6168] = 0
                                                mem[352] = _6168
                                                _6812 = mem[384]
                                                _7082 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7082] = 0
                                                _7159 = mem[_6812]
                                                if mem[_6812] < 0:
                                                    return 3, 0, 0
                                                _7628 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7628] = _7159
                                                mem[384] = _7628
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6368 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6368] = 0
                                                mem[352] = _6368
                                                _7081 = mem[384]
                                                _7343 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7343] = 0
                                                _7397 = mem[_7081]
                                                if mem[_7081] < 0:
                                                    return 3, 0, 0
                                                _7804 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7804] = _7397
                                                mem[384] = _7804
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4788 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4788] = 0
                                            _4979 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4979] = 0
                                            _5244 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5244] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _5778 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5778] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6728 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6728] = 0
                                            if not ext_call.return_data[0]:
                                                _7626 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7626] = 0
                                                mem[352] = _7626
                                                _8043 = mem[384]
                                                _8208 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8208] = 0
                                                _8234 = mem[_8043]
                                                if mem[_8043] < 0:
                                                    return 3, 0, 0
                                                _8529 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8529] = _8234
                                                mem[384] = _8529
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7801 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7801] = ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _7801
                                                _8207 = mem[384]
                                                _8376 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8376] = 0
                                                _8394 = mem[_8207]
                                                if (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8207] < ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8605 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8605] = (ext_call.return_data[0] * 0 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8394
                                                mem[384] = _8605
                                    else:
                                        require (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                        if (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) + (10^18 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _2895 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2895] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3842 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3842] = 0
                                            _4007 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4007] = 0
                                            _4237 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4237] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _4616 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4616] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5595 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5595] = 0
                                            if not ext_call.return_data[0]:
                                                _6366 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6366] = 0
                                                mem[352] = _6366
                                                _7079 = mem[384]
                                                _7340 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7340] = 0
                                                _7395 = mem[_7079]
                                                if mem[_7079] < 0:
                                                    return 3, 0, 0
                                                _7800 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7800] = _7395
                                                mem[384] = _7800
                                            else:
                                                require ext_call.return_data[0]
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6544 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6544] = 0
                                                mem[352] = _6544
                                                _7339 = mem[384]
                                                _7560 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7560] = 0
                                                _7625 = mem[_7339]
                                                if mem[_7339] < 0:
                                                    return 3, 0, 0
                                                _7906 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7906] = _7625
                                                mem[384] = _7906
                                        else:
                                            require borrowBalances[address(arg1)][stor6[idx]].field_0
                                            if borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            require borrowBalances[address(arg1)][stor6[idx]].field_256
                                            mem[320] = borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4978 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4978] = 0
                                            _5186 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5186] = 0
                                            _5467 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5467] = 0
                                            if not oracleAddress:
                                                return 24, 0, 0
                                            mem[mem[64] + 4] = collateralMarkets[idx]
                                            require ext_code.size(oracleAddress)
                                            call oracleAddress.0x5e9a523c with:
                                                 gas gas_remaining wei
                                                args collateralMarkets[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _5963 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5963] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6935 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6935] = 0
                                            if not ext_call.return_data[0]:
                                                _7798 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7798] = 0
                                                mem[352] = _7798
                                                _8205 = mem[384]
                                                _8375 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8375] = 0
                                                _8392 = mem[_8205]
                                                if mem[_8205] < 0:
                                                    return 3, 0, 0
                                                _8601 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8601] = _8392
                                                mem[384] = _8601
                                            else:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256 / ext_call.return_data[0] != borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7903 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7903] = ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                                mem[352] = _7903
                                                _8374 = mem[384]
                                                _8503 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8503] = 0
                                                _8525 = mem[_8374]
                                                if (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + mem[_8374] < ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8627 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8627] = (ext_call.return_data[0] * borrowBalances[address(arg1)][stor6[idx]].field_0 * (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 / borrowBalances[address(arg1)][stor6[idx]].field_256) + _8525
                                                mem[384] = _8627
        s = sha3(collateralMarkets[idx], sha3(address(arg1), 4))
        s = sha3(collateralMarkets[idx], sha3(address(arg1), 3))
        s = sha3(collateralMarkets[idx], 5)
        idx = idx + 1
        continue 
    return 0, mem[mem[256]], mem[mem[384]]
}



}
