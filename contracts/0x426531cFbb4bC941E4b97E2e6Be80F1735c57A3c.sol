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
    if markets[address(arg1)].field_1536 + ext_call.return_data[0] < ext_call.return_data[0]:
        emit Failure(3, 18, 0);
        return 3
    if markets[address(arg1)].field_768 > markets[address(arg1)].field_1536 + ext_call.return_data[0]:
        emit Failure(4, 18, 0);
        return 4
    if arg2 > markets[address(arg1)].field_1536 + ext_call.return_data[0] - markets[address(arg1)].field_768:
        emit Failure(19, 17, 0);
        return 19
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not return_data.size:
        emit EquityWithdrawn(address(arg1), markets[address(arg1)].field_1536 + ext_call.return_data[0] - markets[address(arg1)].field_768, arg2, adminAddress);
        return 0
    require return_data.size == 32
    if ext_call.return_data[0]:
        emit EquityWithdrawn(address(arg1), markets[address(arg1)].field_1536 + ext_call.return_data[0] - markets[address(arg1)].field_768, arg2, adminAddress);
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
        require 10^18 * markets[address(arg2)].field_2048 / 10^18 * borrowBalances[address(arg1)][address(arg2)].field_0 / borrowBalances[address(arg1)][address(arg2)].field_0 == 10^18 * markets[address(arg2)].field_2048 / 10^18
        require borrowBalances[address(arg1)][address(arg2)].field_256
        return (10^18 * markets[address(arg2)].field_2048 / 10^18 * borrowBalances[address(arg1)][address(arg2)].field_0 / borrowBalances[address(arg1)][address(arg2)].field_256)
    require (block.number * markets[address(arg2)].field_1792) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1792) / markets[address(arg2)].field_1792 == block.number - markets[address(arg2)].field_256
    if not (block.number * markets[address(arg2)].field_1792) + (-1 * markets[address(arg2)].field_256 * markets[address(arg2)].field_1792) + 10^18:
        if not borrowBalances[address(arg1)][address(arg2)].field_0:
            return 0
        require 0 / 10^18 * borrowBalances[address(arg1)][address(arg2)].field_0 / borrowBalances[address(arg1)][address(arg2)].field_0 == 0 / 10^18
        require borrowBalances[address(arg1)][address(arg2)].field_256
        return (0 / borrowBalances[address(arg1)][address(arg2)].field_256)
    require (10^18 * markets[address(arg2)].field_2048) + (block.number * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) / (block.number * markets[address(arg2)].field_1792) + (-1 * markets[address(arg2)].field_256 * markets[address(arg2)].field_1792) + 10^18 == markets[address(arg2)].field_2048
    if not borrowBalances[address(arg1)][address(arg2)].field_0:
        return 0
    require (10^18 * markets[address(arg2)].field_2048) + (block.number * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) / 10^18 * borrowBalances[address(arg1)][address(arg2)].field_0 / borrowBalances[address(arg1)][address(arg2)].field_0 == (10^18 * markets[address(arg2)].field_2048) + (block.number * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) / 10^18
    require borrowBalances[address(arg1)][address(arg2)].field_256
    return ((10^18 * markets[address(arg2)].field_2048) + (block.number * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1792 * markets[address(arg2)].field_2048) / 10^18 * borrowBalances[address(arg1)][address(arg2)].field_0 / borrowBalances[address(arg1)][address(arg2)].field_256)
}

function getSupplyBalance(address arg1, address arg2) {
    require markets[address(arg2)].field_256 <= block.number
    if not markets[address(arg2)].field_1024:
        require 10^18 * markets[address(arg2)].field_1280 / 10^18 == markets[address(arg2)].field_1280
        if not supplyBalances[address(arg1)][address(arg2)].field_0:
            return 0
        require 10^18 * markets[address(arg2)].field_1280 / 10^18 * supplyBalances[address(arg1)][address(arg2)].field_0 / supplyBalances[address(arg1)][address(arg2)].field_0 == 10^18 * markets[address(arg2)].field_1280 / 10^18
        require supplyBalances[address(arg1)][address(arg2)].field_256
        return (10^18 * markets[address(arg2)].field_1280 / 10^18 * supplyBalances[address(arg1)][address(arg2)].field_0 / supplyBalances[address(arg1)][address(arg2)].field_256)
    require (block.number * markets[address(arg2)].field_1024) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1024) / markets[address(arg2)].field_1024 == block.number - markets[address(arg2)].field_256
    if not (block.number * markets[address(arg2)].field_1024) + (-1 * markets[address(arg2)].field_256 * markets[address(arg2)].field_1024) + 10^18:
        if not supplyBalances[address(arg1)][address(arg2)].field_0:
            return 0
        require 0 / 10^18 * supplyBalances[address(arg1)][address(arg2)].field_0 / supplyBalances[address(arg1)][address(arg2)].field_0 == 0 / 10^18
        require supplyBalances[address(arg1)][address(arg2)].field_256
        return (0 / supplyBalances[address(arg1)][address(arg2)].field_256)
    require (10^18 * markets[address(arg2)].field_1280) + (block.number * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) / (block.number * markets[address(arg2)].field_1024) + (-1 * markets[address(arg2)].field_256 * markets[address(arg2)].field_1024) + 10^18 == markets[address(arg2)].field_1280
    if not supplyBalances[address(arg1)][address(arg2)].field_0:
        return 0
    require (10^18 * markets[address(arg2)].field_1280) + (block.number * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) / 10^18 * supplyBalances[address(arg1)][address(arg2)].field_0 / supplyBalances[address(arg1)][address(arg2)].field_0 == (10^18 * markets[address(arg2)].field_1280) + (block.number * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) / 10^18
    require supplyBalances[address(arg1)][address(arg2)].field_256
    return ((10^18 * markets[address(arg2)].field_1280) + (block.number * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) - (markets[address(arg2)].field_256 * markets[address(arg2)].field_1024 * markets[address(arg2)].field_1280) / 10^18 * supplyBalances[address(arg1)][address(arg2)].field_0 / supplyBalances[address(arg1)][address(arg2)].field_256)
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
        if not supplyBalances[msg.sender][address(arg1)].field_0:
            if arg2 < 0:
                emit Failure(3, 68, 0);
                return 3
            if arg2 + markets[address(arg1)].field_768 < markets[address(arg1)].field_768:
                emit Failure(3, 70, 0);
                return 3
            if supplyBalances[msg.sender][address(arg1)].field_0 > arg2 + markets[address(arg1)].field_768:
                emit Failure(4, 70, 0);
                return 4
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                emit Failure(3, 69, 0);
                return 3
            require ext_code.size(markets[address(arg1)].field_512)
            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
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
                    args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    emit Failure(1, 65, ext_call.return_data[0]);
                    return 1
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        emit Failure(9, 71, 0);
                        return 9
                markets[address(arg1)].field_256 = block.number
                markets[address(arg1)].field_768 = arg2 + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                markets[address(arg1)].field_1792 = ext_call.return_data[32]
                markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
            else:
                if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                    emit Failure(3, 64, 0);
                    return 3
                if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = arg2 + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 0
                else:
                    if (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                        emit Failure(3, 64, 0);
                        return 3
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = arg2 + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
            supplyBalances[msg.sender][address(arg1)].field_0 = arg2
            supplyBalances[msg.sender][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_1280 / 10^18
            emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[msg.sender][address(arg1)].field_0, arg2);
        else:
            if 10^18 * markets[address(arg1)].field_1280 / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_0 != 10^18 * markets[address(arg1)].field_1280 / 10^18:
                emit Failure(3, 61, 0);
                return 3
            if not supplyBalances[msg.sender][address(arg1)].field_256:
                emit Failure(5, 61, 0);
                return 5
            if arg2 + (10^18 * markets[address(arg1)].field_1280 / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) < 10^18 * markets[address(arg1)].field_1280 / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256:
                emit Failure(3, 68, 0);
                return 3
            if arg2 + (10^18 * markets[address(arg1)].field_1280 / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 < markets[address(arg1)].field_768:
                emit Failure(3, 70, 0);
                return 3
            if supplyBalances[msg.sender][address(arg1)].field_0 > arg2 + (10^18 * markets[address(arg1)].field_1280 / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768:
                emit Failure(4, 70, 0);
                return 4
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                emit Failure(3, 69, 0);
                return 3
            require ext_code.size(markets[address(arg1)].field_512)
            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
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
                    args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    emit Failure(1, 65, ext_call.return_data[0]);
                    return 1
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        emit Failure(9, 71, 0);
                        return 9
                markets[address(arg1)].field_256 = block.number
                markets[address(arg1)].field_768 = arg2 + (10^18 * markets[address(arg1)].field_1280 / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                markets[address(arg1)].field_1792 = ext_call.return_data[32]
                markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
            else:
                if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                    emit Failure(3, 64, 0);
                    return 3
                if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = arg2 + (10^18 * markets[address(arg1)].field_1280 / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 0
                else:
                    if (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                        emit Failure(3, 64, 0);
                        return 3
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = arg2 + (10^18 * markets[address(arg1)].field_1280 / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
            supplyBalances[msg.sender][address(arg1)].field_0 = arg2 + (10^18 * markets[address(arg1)].field_1280 / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256)
            supplyBalances[msg.sender][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_1280 / 10^18
            emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[msg.sender][address(arg1)].field_0, arg2 + (10^18 * markets[address(arg1)].field_1280 / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256));
    else:
        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
            emit Failure(3, 66, 0);
            return 3
        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
            if not supplyBalances[msg.sender][address(arg1)].field_0:
                if arg2 < 0:
                    emit Failure(3, 68, 0);
                    return 3
                if arg2 + markets[address(arg1)].field_768 < markets[address(arg1)].field_768:
                    emit Failure(3, 70, 0);
                    return 3
                if supplyBalances[msg.sender][address(arg1)].field_0 > arg2 + markets[address(arg1)].field_768:
                    emit Failure(4, 70, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                    emit Failure(3, 69, 0);
                    return 3
                require ext_code.size(markets[address(arg1)].field_512)
                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
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
                        args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = arg2 + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 0
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                else:
                    if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 64, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = arg2 + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                    else:
                        if (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                            emit Failure(3, 64, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = arg2 + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                supplyBalances[msg.sender][address(arg1)].field_0 = arg2
                supplyBalances[msg.sender][address(arg1)].field_256 = 0
                emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[msg.sender][address(arg1)].field_0, arg2);
            else:
                if 0 / supplyBalances[msg.sender][address(arg1)].field_0:
                    emit Failure(3, 61, 0);
                    return 3
                if not supplyBalances[msg.sender][address(arg1)].field_256:
                    emit Failure(5, 61, 0);
                    return 5
                if arg2 + (0 / supplyBalances[msg.sender][address(arg1)].field_256) < 0 / supplyBalances[msg.sender][address(arg1)].field_256:
                    emit Failure(3, 68, 0);
                    return 3
                if arg2 + (0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 < markets[address(arg1)].field_768:
                    emit Failure(3, 70, 0);
                    return 3
                if supplyBalances[msg.sender][address(arg1)].field_0 > arg2 + (0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768:
                    emit Failure(4, 70, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                    emit Failure(3, 69, 0);
                    return 3
                require ext_code.size(markets[address(arg1)].field_512)
                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
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
                        args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = arg2 + (0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 0
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                else:
                    if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 64, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = arg2 + (0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                    else:
                        if (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                            emit Failure(3, 64, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = arg2 + (0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                supplyBalances[msg.sender][address(arg1)].field_0 = arg2 + (0 / supplyBalances[msg.sender][address(arg1)].field_256)
                supplyBalances[msg.sender][address(arg1)].field_256 = 0
                emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[msg.sender][address(arg1)].field_0, arg2 + (0 / supplyBalances[msg.sender][address(arg1)].field_256));
        else:
            if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                emit Failure(3, 66, 0);
                return 3
            if not supplyBalances[msg.sender][address(arg1)].field_0:
                if arg2 < 0:
                    emit Failure(3, 68, 0);
                    return 3
                if arg2 + markets[address(arg1)].field_768 < markets[address(arg1)].field_768:
                    emit Failure(3, 70, 0);
                    return 3
                if supplyBalances[msg.sender][address(arg1)].field_0 > arg2 + markets[address(arg1)].field_768:
                    emit Failure(4, 70, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                    emit Failure(3, 69, 0);
                    return 3
                require ext_code.size(markets[address(arg1)].field_512)
                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
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
                        args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = arg2 + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                else:
                    if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 64, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = arg2 + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                    else:
                        if (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                            emit Failure(3, 64, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = arg2 + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                supplyBalances[msg.sender][address(arg1)].field_0 = arg2
                supplyBalances[msg.sender][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[msg.sender][address(arg1)].field_0, arg2);
            else:
                if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_0 != (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18:
                    emit Failure(3, 61, 0);
                    return 3
                if not supplyBalances[msg.sender][address(arg1)].field_256:
                    emit Failure(5, 61, 0);
                    return 5
                if arg2 + ((10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) < (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256:
                    emit Failure(3, 68, 0);
                    return 3
                if arg2 + ((10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 < markets[address(arg1)].field_768:
                    emit Failure(3, 70, 0);
                    return 3
                if supplyBalances[msg.sender][address(arg1)].field_0 > arg2 + ((10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768:
                    emit Failure(4, 70, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                    emit Failure(3, 69, 0);
                    return 3
                require ext_code.size(markets[address(arg1)].field_512)
                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
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
                        args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 65, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 71, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_768 = arg2 + ((10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                else:
                    if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 64, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = arg2 + ((10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                    else:
                        if (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                            emit Failure(3, 64, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], markets[address(arg1)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 65, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 71, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_768 = arg2 + ((10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256) + markets[address(arg1)].field_768 - supplyBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                supplyBalances[msg.sender][address(arg1)].field_0 = arg2 + ((10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256)
                supplyBalances[msg.sender][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                emit SupplyReceived(msg.sender, address(arg1), arg2, supplyBalances[msg.sender][address(arg1)].field_0, arg2 + ((10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18 * supplyBalances[msg.sender][address(arg1)].field_0 / supplyBalances[msg.sender][address(arg1)].field_256));
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
        if not borrowBalances[msg.sender][address(arg1)].field_0:
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
                if -arg2 + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                    emit Failure(3, 49, 0);
                    return 3
                if borrowBalances[msg.sender][address(arg1)].field_0 > -arg2 + markets[address(arg1)].field_1536:
                    emit Failure(4, 49, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
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
                        args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 47, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 45, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 51, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_1536 = -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                else:
                    if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 46, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                    else:
                        if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                markets[address(arg1)].field_1792 = ext_call.return_data[32]
                markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                borrowBalances[msg.sender][address(arg1)].field_0 = -arg2
                borrowBalances[msg.sender][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[msg.sender][address(arg1)].field_0, -arg2);
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
                    if borrowBalances[msg.sender][address(arg1)].field_0 > markets[address(arg1)].field_1536:
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
                            args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    borrowBalances[msg.sender][address(arg1)].field_0 = 0
                    borrowBalances[msg.sender][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), 0, borrowBalances[msg.sender][address(arg1)].field_0, 0);
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
                    if -ext_call.return_data[0] + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[msg.sender][address(arg1)].field_0 > -ext_call.return_data[0] + markets[address(arg1)].field_1536:
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
                            args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    borrowBalances[msg.sender][address(arg1)].field_0 = -ext_call.return_data[0]
                    borrowBalances[msg.sender][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[msg.sender][address(arg1)].field_0, -ext_call.return_data[0]);
        else:
            if 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_0 != 10^18 * markets[address(arg1)].field_2048 / 10^18:
                emit Failure(3, 42, 0);
                return 3
            if not borrowBalances[msg.sender][address(arg1)].field_256:
                emit Failure(5, 42, 0);
                return 5
            if arg2 != -1:
                if arg2 > 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
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
                if (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                    emit Failure(3, 49, 0);
                    return 3
                if borrowBalances[msg.sender][address(arg1)].field_0 > (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536:
                    emit Failure(4, 49, 0);
                    return 4
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
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
                        args address(arg1), arg2 + ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 47, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(markets[address(arg1)].field_512)
                    call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), arg2 + ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        emit Failure(1, 45, ext_call.return_data[0]);
                        return 1
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            emit Failure(9, 51, 0);
                            return 9
                    markets[address(arg1)].field_256 = block.number
                    markets[address(arg1)].field_1536 = (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                    markets[address(arg1)].field_1024 = ext_call.return_data[32]
                    markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                else:
                    if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                        emit Failure(3, 46, 0);
                        return 3
                    if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 0
                    else:
                        if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                            emit Failure(3, 46, 0);
                            return 3
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                markets[address(arg1)].field_1792 = ext_call.return_data[32]
                markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                borrowBalances[msg.sender][address(arg1)].field_0 = (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2
                borrowBalances[msg.sender][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[msg.sender][address(arg1)].field_0, (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2);
            else:
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
                    if 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256 > 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
                        emit Failure(4, 48, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
                        emit Failure(7, 52, 0);
                        return 7
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
                        emit Failure(8, 52, 0);
                        return 8
                    if markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[msg.sender][address(arg1)].field_0 > markets[address(arg1)].field_1536:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0] < ext_call.return_data[0]:
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
                            args address(arg1), (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    borrowBalances[msg.sender][address(arg1)].field_0 = 0
                    borrowBalances[msg.sender][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256, borrowBalances[msg.sender][address(arg1)].field_0, 0);
                else:
                    if ext_call.return_data[0] > 10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
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
                    if (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[msg.sender][address(arg1)].field_0 > (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536:
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
                            args address(arg1), 2 * ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), 2 * ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    borrowBalances[msg.sender][address(arg1)].field_0 = (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0]
                    borrowBalances[msg.sender][address(arg1)].field_256 = 10^18 * markets[address(arg1)].field_2048 / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[msg.sender][address(arg1)].field_0, (10^18 * markets[address(arg1)].field_2048 / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0]);
    else:
        if (block.number * markets[address(arg1)].field_1792) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) / markets[address(arg1)].field_1792 != block.number - markets[address(arg1)].field_256:
            emit Failure(3, 44, 0);
            return 3
        if not (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18:
            if not borrowBalances[msg.sender][address(arg1)].field_0:
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
                    if -arg2 + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[msg.sender][address(arg1)].field_0 > -arg2 + markets[address(arg1)].field_1536:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
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
                            args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 0
                    borrowBalances[msg.sender][address(arg1)].field_0 = -arg2
                    borrowBalances[msg.sender][address(arg1)].field_256 = 0
                    emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[msg.sender][address(arg1)].field_0, -arg2);
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
                        if borrowBalances[msg.sender][address(arg1)].field_0 > markets[address(arg1)].field_1536:
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
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                        borrowBalances[msg.sender][address(arg1)].field_0 = 0
                        borrowBalances[msg.sender][address(arg1)].field_256 = 0
                        emit BorrowRepaid(msg.sender, address(arg1), 0, borrowBalances[msg.sender][address(arg1)].field_0, 0);
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
                        if -ext_call.return_data[0] + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[msg.sender][address(arg1)].field_0 > -ext_call.return_data[0] + markets[address(arg1)].field_1536:
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
                                args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                        borrowBalances[msg.sender][address(arg1)].field_0 = -ext_call.return_data[0]
                        borrowBalances[msg.sender][address(arg1)].field_256 = 0
                        emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[msg.sender][address(arg1)].field_0, -ext_call.return_data[0]);
            else:
                if 0 / borrowBalances[msg.sender][address(arg1)].field_0:
                    emit Failure(3, 42, 0);
                    return 3
                if not borrowBalances[msg.sender][address(arg1)].field_256:
                    emit Failure(5, 42, 0);
                    return 5
                if arg2 != -1:
                    if arg2 > 0 / borrowBalances[msg.sender][address(arg1)].field_256:
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
                    if (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[msg.sender][address(arg1)].field_0 > (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
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
                            args address(arg1), arg2 + ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = 0
                    borrowBalances[msg.sender][address(arg1)].field_0 = (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2
                    borrowBalances[msg.sender][address(arg1)].field_256 = 0
                    emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[msg.sender][address(arg1)].field_0, (0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2);
                else:
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / borrowBalances[msg.sender][address(arg1)].field_256:
                        if 0 / borrowBalances[msg.sender][address(arg1)].field_256 > 0 / borrowBalances[msg.sender][address(arg1)].field_256:
                            emit Failure(4, 48, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0 / borrowBalances[msg.sender][address(arg1)].field_256:
                            emit Failure(7, 52, 0);
                            return 7
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0 / borrowBalances[msg.sender][address(arg1)].field_256:
                            emit Failure(8, 52, 0);
                            return 8
                        if markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[msg.sender][address(arg1)].field_0 > markets[address(arg1)].field_1536:
                            emit Failure(4, 49, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0] < ext_call.return_data[0]:
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
                                args address(arg1), (0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / borrowBalances[msg.sender][address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), (0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), (0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / borrowBalances[msg.sender][address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), (0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), (0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / borrowBalances[msg.sender][address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                        borrowBalances[msg.sender][address(arg1)].field_0 = 0
                        borrowBalances[msg.sender][address(arg1)].field_256 = 0
                        emit BorrowRepaid(msg.sender, address(arg1), 0 / borrowBalances[msg.sender][address(arg1)].field_256, borrowBalances[msg.sender][address(arg1)].field_0, 0);
                    else:
                        if ext_call.return_data[0] > 0 / borrowBalances[msg.sender][address(arg1)].field_256:
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
                        if (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[msg.sender][address(arg1)].field_0 > (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536:
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
                                args address(arg1), 2 * ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = 0
                        borrowBalances[msg.sender][address(arg1)].field_0 = (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0]
                        borrowBalances[msg.sender][address(arg1)].field_256 = 0
                        emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[msg.sender][address(arg1)].field_0, (0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0]);
        else:
            if (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / (block.number * markets[address(arg1)].field_1792) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1792) + 10^18 != markets[address(arg1)].field_2048:
                emit Failure(3, 44, 0);
                return 3
            if not borrowBalances[msg.sender][address(arg1)].field_0:
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
                    if -arg2 + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[msg.sender][address(arg1)].field_0 > -arg2 + markets[address(arg1)].field_1536:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
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
                            args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = -arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                    borrowBalances[msg.sender][address(arg1)].field_0 = -arg2
                    borrowBalances[msg.sender][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[msg.sender][address(arg1)].field_0, -arg2);
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
                        if borrowBalances[msg.sender][address(arg1)].field_0 > markets[address(arg1)].field_1536:
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
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        borrowBalances[msg.sender][address(arg1)].field_0 = 0
                        borrowBalances[msg.sender][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        emit BorrowRepaid(msg.sender, address(arg1), 0, borrowBalances[msg.sender][address(arg1)].field_0, 0);
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
                        if -ext_call.return_data[0] + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[msg.sender][address(arg1)].field_0 > -ext_call.return_data[0] + markets[address(arg1)].field_1536:
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
                                args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = -ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        borrowBalances[msg.sender][address(arg1)].field_0 = -ext_call.return_data[0]
                        borrowBalances[msg.sender][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[msg.sender][address(arg1)].field_0, -ext_call.return_data[0]);
            else:
                if (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_0 != (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18:
                    emit Failure(3, 42, 0);
                    return 3
                if not borrowBalances[msg.sender][address(arg1)].field_256:
                    emit Failure(5, 42, 0);
                    return 5
                if arg2 != -1:
                    if arg2 > (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
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
                    if ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                        emit Failure(3, 49, 0);
                        return 3
                    if borrowBalances[msg.sender][address(arg1)].field_0 > ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536:
                        emit Failure(4, 49, 0);
                        return 4
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
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
                            args address(arg1), arg2 + ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 47, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(markets[address(arg1)].field_512)
                        call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 + ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0]:
                            emit Failure(1, 45, ext_call.return_data[0]);
                            return 1
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if return_data.size:
                            require return_data.size == 32
                            if not ext_call.return_data[0]:
                                emit Failure(9, 51, 0);
                                return 9
                        markets[address(arg1)].field_256 = block.number
                        markets[address(arg1)].field_1536 = ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                        markets[address(arg1)].field_1024 = ext_call.return_data[32]
                        markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                    else:
                        if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                            emit Failure(3, 46, 0);
                            return 3
                        if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 0
                        else:
                            if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                emit Failure(3, 46, 0);
                                return 3
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2 + ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2 + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                    markets[address(arg1)].field_1792 = ext_call.return_data[32]
                    markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                    borrowBalances[msg.sender][address(arg1)].field_0 = ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2
                    borrowBalances[msg.sender][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                    emit BorrowRepaid(msg.sender, address(arg1), arg2, borrowBalances[msg.sender][address(arg1)].field_0, ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - arg2);
                else:
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
                        if (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256 > (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
                            emit Failure(4, 48, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
                            emit Failure(7, 52, 0);
                            return 7
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
                            emit Failure(8, 52, 0);
                            return 8
                        if markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[msg.sender][address(arg1)].field_0 > markets[address(arg1)].field_1536:
                            emit Failure(4, 49, 0);
                            return 4
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0] < ext_call.return_data[0]:
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
                                args address(arg1), ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) + ext_call.return_data[0], markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 -= borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        borrowBalances[msg.sender][address(arg1)].field_0 = 0
                        borrowBalances[msg.sender][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        emit BorrowRepaid(msg.sender, address(arg1), (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256, borrowBalances[msg.sender][address(arg1)].field_0, 0);
                    else:
                        if ext_call.return_data[0] > (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256:
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
                        if ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 < markets[address(arg1)].field_1536:
                            emit Failure(3, 49, 0);
                            return 3
                        if borrowBalances[msg.sender][address(arg1)].field_0 > ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536:
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
                                args address(arg1), 2 * ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 47, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(markets[address(arg1)].field_512)
                            call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), 2 * ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0]:
                                emit Failure(1, 45, ext_call.return_data[0]);
                                return 1
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size:
                                require return_data.size == 32
                                if not ext_call.return_data[0]:
                                    emit Failure(9, 51, 0);
                                    return 9
                            markets[address(arg1)].field_256 = block.number
                            markets[address(arg1)].field_1536 = ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                            markets[address(arg1)].field_1024 = ext_call.return_data[32]
                            markets[address(arg1)].field_1280 = 10^18 * markets[address(arg1)].field_1280 / 10^18
                        else:
                            if (block.number * markets[address(arg1)].field_1024) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) / markets[address(arg1)].field_1024 != block.number - markets[address(arg1)].field_256:
                                emit Failure(3, 46, 0);
                                return 3
                            if not (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18:
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = 0
                            else:
                                if (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / (block.number * markets[address(arg1)].field_1024) + (-1 * markets[address(arg1)].field_256 * markets[address(arg1)].field_1024) + 10^18 != markets[address(arg1)].field_1280:
                                    emit Failure(3, 46, 0);
                                    return 3
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getSupplyRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 47, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(markets[address(arg1)].field_512)
                                call markets[address(arg1)].field_512.getBorrowRate(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), 2 * ext_call.return_data[0], ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if ext_call.return_data[0]:
                                    emit Failure(1, 45, ext_call.return_data[0]);
                                    return 1
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size:
                                    require return_data.size == 32
                                    if not ext_call.return_data[0]:
                                        emit Failure(9, 51, 0);
                                        return 9
                                markets[address(arg1)].field_256 = block.number
                                markets[address(arg1)].field_1536 = ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0] + markets[address(arg1)].field_1536 - borrowBalances[msg.sender][address(arg1)].field_0
                                markets[address(arg1)].field_1024 = ext_call.return_data[32]
                                markets[address(arg1)].field_1280 = (10^18 * markets[address(arg1)].field_1280) + (block.number * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1024 * markets[address(arg1)].field_1280) / 10^18
                        markets[address(arg1)].field_1792 = ext_call.return_data[32]
                        markets[address(arg1)].field_2048 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        borrowBalances[msg.sender][address(arg1)].field_0 = ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0]
                        borrowBalances[msg.sender][address(arg1)].field_256 = (10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18
                        emit BorrowRepaid(msg.sender, address(arg1), ext_call.return_data[0], borrowBalances[msg.sender][address(arg1)].field_0, ((10^18 * markets[address(arg1)].field_2048) + (block.number * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) - (markets[address(arg1)].field_256 * markets[address(arg1)].field_1792 * markets[address(arg1)].field_2048) / 10^18 * borrowBalances[msg.sender][address(arg1)].field_0 / borrowBalances[msg.sender][address(arg1)].field_256) - ext_call.return_data[0]);
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
            if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                _1893 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1893] = 0
                _1895 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1895] = 0
                _1897 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1897] = 0
                if markets[stor6[idx]].field_256 > block.number:
                    return 4, 0, 0
                _1899 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1899] = markets[stor6[idx]].field_1792
                _1901 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1901] = 0
                if not markets[stor6[idx]].field_1792:
                    _1905 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1905] = 0
                    _1915 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1915] = 10^18
                    _1919 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1919] = 0
                    _1933 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1933] = 10^18
                    _1939 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1939] = 0
                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                        return 3, 0, 0
                    _1960 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1960] = 10^18 * markets[stor6[idx]].field_2048
                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                        mem[320] = 0
                        _2016 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2016] = 0
                        _2023 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2023] = 0
                        _2034 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2034] = 0
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
                        _2090 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2090] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _2204 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2204] = 0
                        if not ext_call.return_data[0]:
                            _2277 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2277] = 0
                            mem[352] = _2277
                            _2337 = mem[384]
                            _2374 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2374] = 0
                            _2389 = mem[_2337]
                            if mem[_2337] < 0:
                                return 3, 0, 0
                            _2449 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2449] = _2389
                            mem[384] = _2449
                        else:
                            if 0 / ext_call.return_data[0]:
                                return 3, 0, 0
                            _2304 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2304] = 0
                            mem[352] = _2304
                            _2373 = mem[384]
                            _2411 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2411] = 0
                            _2425 = mem[_2373]
                            if mem[_2373] < 0:
                                return 3, 0, 0
                            _2479 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2479] = _2425
                            mem[384] = _2479
                    else:
                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                            return 3, 0, 0
                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                            return 5, 0, 0
                        mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                        _2114 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2114] = 0
                        _2133 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2133] = 0
                        _2170 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2170] = 0
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
                        _2247 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2247] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _2349 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2349] = 0
                        if not ext_call.return_data[0]:
                            _2461 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2461] = 0
                            mem[352] = _2461
                            _2536 = mem[384]
                            _2561 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2561] = 0
                            _2572 = mem[_2536]
                            if mem[_2536] < 0:
                                return 3, 0, 0
                            _2643 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2643] = _2572
                            mem[384] = _2643
                        else:
                            if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                return 3, 0, 0
                            _2502 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2502] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                            mem[352] = _2502
                            _2560 = mem[384]
                            _2590 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2590] = 0
                            _2606 = mem[_2560]
                            if mem[_2560] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                return 3, 0, 0
                            _2680 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2680] = _2606 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                            mem[384] = _2680
                else:
                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                        return 3, 0, 0
                    _1912 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1912] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                    _1918 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1918] = 10^18
                    _1925 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1925] = 0
                    _1937 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1937] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                    _1947 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1947] = 0
                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                        _1957 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1957] = 0
                        mem[288] = 0 / 10^18
                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                            mem[320] = 0
                            _2015 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2015] = 0
                            _2022 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2022] = 0
                            _2033 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2033] = 0
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
                            _2086 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2086] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                return 18, 0, 0
                            _2200 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2200] = 0
                            if not ext_call.return_data[0]:
                                _2276 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2276] = 0
                                mem[352] = _2276
                                _2335 = mem[384]
                                _2370 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2370] = 0
                                _2387 = mem[_2335]
                                if mem[_2335] < 0:
                                    return 3, 0, 0
                                _2447 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2447] = _2387
                                mem[384] = _2447
                            else:
                                if 0 / ext_call.return_data[0]:
                                    return 3, 0, 0
                                _2300 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2300] = 0
                                mem[352] = _2300
                                _2369 = mem[384]
                                _2408 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2408] = 0
                                _2423 = mem[_2369]
                                if mem[_2369] < 0:
                                    return 3, 0, 0
                                _2477 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2477] = _2423
                                mem[384] = _2477
                        else:
                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                return 3, 0, 0
                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                return 5, 0, 0
                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                            _2113 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2113] = 0
                            _2132 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2132] = 0
                            _2166 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2166] = 0
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
                            _2243 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2243] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                return 18, 0, 0
                            _2348 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2348] = 0
                            if not ext_call.return_data[0]:
                                _2460 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2460] = 0
                                mem[352] = _2460
                                _2534 = mem[384]
                                _2558 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2558] = 0
                                _2570 = mem[_2534]
                                if mem[_2534] < 0:
                                    return 3, 0, 0
                                _2641 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2641] = _2570
                                mem[384] = _2641
                            else:
                                if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2496 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2496] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                mem[352] = _2496
                                _2557 = mem[384]
                                _2589 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2589] = 0
                                _2604 = mem[_2557]
                                if mem[_2557] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                    return 3, 0, 0
                                _2678 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2678] = _2604 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                mem[384] = _2678
                    else:
                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                            return 3, 0, 0
                        _1969 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1969] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                            mem[320] = 0
                            _2021 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2021] = 0
                            _2027 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2027] = 0
                            _2046 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2046] = 0
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
                            _2112 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2112] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                return 18, 0, 0
                            _2228 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2228] = 0
                            if not ext_call.return_data[0]:
                                _2299 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2299] = 0
                                mem[352] = _2299
                                _2366 = mem[384]
                                _2405 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2405] = 0
                                _2421 = mem[_2366]
                                if mem[_2366] < 0:
                                    return 3, 0, 0
                                _2475 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2475] = _2421
                                mem[384] = _2475
                            else:
                                if 0 / ext_call.return_data[0]:
                                    return 3, 0, 0
                                _2330 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2330] = 0
                                mem[352] = _2330
                                _2404 = mem[384]
                                _2434 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2434] = 0
                                _2445 = mem[_2404]
                                if mem[_2404] < 0:
                                    return 3, 0, 0
                                _2513 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2513] = _2445
                                mem[384] = _2513
                        else:
                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                return 3, 0, 0
                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                return 5, 0, 0
                            mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                            _2131 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2131] = 0
                            _2151 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2151] = 0
                            _2193 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2193] = 0
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
                            _2262 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2262] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                return 18, 0, 0
                            _2385 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2385] = 0
                            if not ext_call.return_data[0]:
                                _2495 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2495] = 0
                                mem[352] = _2495
                                _2555 = mem[384]
                                _2588 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2588] = 0
                                _2602 = mem[_2555]
                                if mem[_2555] < 0:
                                    return 3, 0, 0
                                _2676 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2676] = _2602
                                mem[384] = _2676
                            else:
                                if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2527 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2527] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                mem[352] = _2527
                                _2587 = mem[384]
                                _2623 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2623] = 0
                                _2639 = mem[_2587]
                                if mem[_2587] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                    return 3, 0, 0
                                _2700 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2700] = _2639 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                mem[384] = _2700
        else:
            _1892 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1892] = 0
            _1894 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1894] = 0
            _1896 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1896] = 0
            if markets[stor6[idx]].field_256 > block.number:
                return 4, 0, 0
            _1898 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1898] = markets[stor6[idx]].field_1024
            _1900 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1900] = 0
            if not markets[stor6[idx]].field_1024:
                _1904 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1904] = 0
                _1914 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1914] = 10^18
                _1917 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1917] = 0
                _1931 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1931] = 10^18
                _1938 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1938] = 0
                if 10^18 * markets[stor6[idx]].field_1280 / 10^18 != markets[stor6[idx]].field_1280:
                    return 3, 0, 0
                _1955 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1955] = 10^18 * markets[stor6[idx]].field_1280
                mem[160] = 10^18 * markets[stor6[idx]].field_1280 / 10^18
                if not supplyBalances[address(arg1)][stor6[idx]].field_0:
                    mem[192] = 0
                    _2009 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2009] = 0
                    _2020 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2020] = 0
                    _2029 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2029] = 0
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
                    _2081 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2081] = ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        return 18, 0, 0
                    _2191 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2191] = 0
                    if not ext_call.return_data[0]:
                        _2271 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2271] = 0
                        mem[224] = _2271
                        _2325 = mem[256]
                        _2361 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2361] = 0
                        _2382 = mem[_2325]
                        if mem[_2325] < 0:
                            return 3, 0, 0
                        _2441 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2441] = _2382
                        mem[256] = _2441
                        if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                            _2581 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2581] = 0
                            _2618 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2618] = 0
                            _2657 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2657] = 0
                            if markets[stor6[idx]].field_256 > block.number:
                                return 4, 0, 0
                            _2709 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2709] = markets[stor6[idx]].field_1792
                            _2725 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2725] = 0
                            if not markets[stor6[idx]].field_1792:
                                _2788 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2788] = 0
                                _2814 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2814] = 10^18
                                _2847 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2847] = 0
                                _2916 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2916] = 10^18
                                _2993 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2993] = 0
                                if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                    return 3, 0, 0
                                _3140 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3140] = 10^18 * markets[stor6[idx]].field_2048
                                mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                    mem[320] = 0
                                    _3498 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3498] = 0
                                    _3561 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3561] = 0
                                    _3621 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3621] = 0
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
                                    _3847 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3847] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _4497 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4497] = 0
                                    if not ext_call.return_data[0]:
                                        _5151 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5151] = 0
                                        mem[352] = _5151
                                        _5523 = mem[384]
                                        _5775 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5775] = 0
                                        _5913 = mem[_5523]
                                        if mem[_5523] < 0:
                                            return 3, 0, 0
                                        _6361 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6361] = _5913
                                        mem[384] = _6361
                                    else:
                                        if 0 / ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _5316 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5316] = 0
                                        mem[352] = _5316
                                        _5774 = mem[384]
                                        _6048 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6048] = 0
                                        _6156 = mem[_5774]
                                        if mem[_5774] < 0:
                                            return 3, 0, 0
                                        _6555 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6555] = _6156
                                        mem[384] = _6555
                                else:
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                        return 3, 0, 0
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                        return 5, 0, 0
                                    mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                    _4006 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4006] = 0
                                    _4145 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4145] = 0
                                    _4322 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4322] = 0
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
                                    _4778 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4778] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _5655 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5655] = 0
                                    if not ext_call.return_data[0]:
                                        _6450 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6450] = 0
                                        mem[352] = _6450
                                        _6925 = mem[384]
                                        _7180 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7180] = 0
                                        _7271 = mem[_6925]
                                        if mem[_6925] < 0:
                                            return 3, 0, 0
                                        _7778 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7778] = _7271
                                        mem[384] = _7778
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _6666 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6666] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                        mem[352] = _6666
                                        _7179 = mem[384]
                                        _7425 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7425] = 0
                                        _7531 = mem[_7179]
                                        if mem[_7179] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _8015 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8015] = _7531 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                        mem[384] = _8015
                            else:
                                if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2805 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2805] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                _2846 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2846] = 10^18
                                _2879 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2879] = 0
                                _2936 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2936] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                _3030 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3030] = 0
                                if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                    _3137 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3137] = 0
                                    mem[288] = 0 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3497 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3497] = 0
                                        _3560 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3560] = 0
                                        _3620 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3620] = 0
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
                                        _3843 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3843] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4493 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4493] = 0
                                        if not ext_call.return_data[0]:
                                            _5150 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5150] = 0
                                            mem[352] = _5150
                                            _5521 = mem[384]
                                            _5771 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5771] = 0
                                            _5911 = mem[_5521]
                                            if mem[_5521] < 0:
                                                return 3, 0, 0
                                            _6359 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6359] = _5911
                                            mem[384] = _6359
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _5312 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5312] = 0
                                            mem[352] = _5312
                                            _5770 = mem[384]
                                            _6045 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6045] = 0
                                            _6154 = mem[_5770]
                                            if mem[_5770] < 0:
                                                return 3, 0, 0
                                            _6553 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6553] = _6154
                                            mem[384] = _6553
                                    else:
                                        if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4005 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4005] = 0
                                        _4144 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4144] = 0
                                        _4318 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4318] = 0
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
                                        _4774 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4774] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5654 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5654] = 0
                                        if not ext_call.return_data[0]:
                                            _6449 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6449] = 0
                                            mem[352] = _6449
                                            _6923 = mem[384]
                                            _7177 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7177] = 0
                                            _7269 = mem[_6923]
                                            if mem[_6923] < 0:
                                                return 3, 0, 0
                                            _7776 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7776] = _7269
                                            mem[384] = _7776
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6660 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6660] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _6660
                                            _7176 = mem[384]
                                            _7424 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7424] = 0
                                            _7529 = mem[_7176]
                                            if mem[_7176] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _8013 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8013] = _7529 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _8013
                                else:
                                    if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3184 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3184] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                    mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3559 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3559] = 0
                                        _3606 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3606] = 0
                                        _3684 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3684] = 0
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
                                        _4004 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4004] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4689 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4689] = 0
                                        if not ext_call.return_data[0]:
                                            _5311 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5311] = 0
                                            mem[352] = _5311
                                            _5767 = mem[384]
                                            _6042 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6042] = 0
                                            _6152 = mem[_5767]
                                            if mem[_5767] < 0:
                                                return 3, 0, 0
                                            _6551 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6551] = _6152
                                            mem[384] = _6551
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _5516 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5516] = 0
                                            mem[352] = _5516
                                            _6041 = mem[384]
                                            _6272 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6272] = 0
                                            _6357 = mem[_6041]
                                            if mem[_6041] < 0:
                                                return 3, 0, 0
                                            _6773 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6773] = _6357
                                            mem[384] = _6773
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4143 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4143] = 0
                                        _4257 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4257] = 0
                                        _4486 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4486] = 0
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
                                        _4987 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4987] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5909 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5909] = 0
                                        if not ext_call.return_data[0]:
                                            _6659 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6659] = 0
                                            mem[352] = _6659
                                            _7174 = mem[384]
                                            _7423 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7423] = 0
                                            _7527 = mem[_7174]
                                            if mem[_7174] < 0:
                                                return 3, 0, 0
                                            _8011 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8011] = _7527
                                            mem[384] = _8011
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6916 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6916] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _6916
                                            _7422 = mem[384]
                                            _7654 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7654] = 0
                                            _7774 = mem[_7422]
                                            if mem[_7422] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _8228 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8228] = _7774 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _8228
                    else:
                        if 0 / ext_call.return_data[0]:
                            return 3, 0, 0
                        _2293 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2293] = 0
                        mem[224] = _2293
                        _2360 = mem[256]
                        _2401 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2401] = 0
                        _2417 = mem[_2360]
                        if mem[_2360] < 0:
                            return 3, 0, 0
                        _2473 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2473] = _2417
                        mem[256] = _2473
                        if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                            _2615 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2615] = 0
                            _2656 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2656] = 0
                            _2690 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2690] = 0
                            if markets[stor6[idx]].field_256 > block.number:
                                return 4, 0, 0
                            _2724 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2724] = markets[stor6[idx]].field_1792
                            _2752 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2752] = 0
                            if not markets[stor6[idx]].field_1792:
                                _2802 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2802] = 0
                                _2845 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2845] = 10^18
                                _2878 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2878] = 0
                                _2934 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2934] = 10^18
                                _3029 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3029] = 0
                                if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                    return 3, 0, 0
                                _3180 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3180] = 10^18 * markets[stor6[idx]].field_2048
                                mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                    mem[320] = 0
                                    _3557 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3557] = 0
                                    _3605 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3605] = 0
                                    _3680 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3680] = 0
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
                                    _3999 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3999] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _4684 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4684] = 0
                                    if not ext_call.return_data[0]:
                                        _5306 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5306] = 0
                                        mem[352] = _5306
                                        _5761 = mem[384]
                                        _6035 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6035] = 0
                                        _6148 = mem[_5761]
                                        if mem[_5761] < 0:
                                            return 3, 0, 0
                                        _6547 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6547] = _6148
                                        mem[384] = _6547
                                    else:
                                        if 0 / ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _5510 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5510] = 0
                                        mem[352] = _5510
                                        _6034 = mem[384]
                                        _6269 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6269] = 0
                                        _6353 = mem[_6034]
                                        if mem[_6034] < 0:
                                            return 3, 0, 0
                                        _6771 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6771] = _6353
                                        mem[384] = _6771
                                else:
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                        return 3, 0, 0
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                        return 5, 0, 0
                                    mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                    _4141 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4141] = 0
                                    _4256 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4256] = 0
                                    _4478 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4478] = 0
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
                                    _4983 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4983] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _5906 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5906] = 0
                                    if not ext_call.return_data[0]:
                                        _6652 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6652] = 0
                                        mem[352] = _6652
                                        _7169 = mem[384]
                                        _7419 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7419] = 0
                                        _7523 = mem[_7169]
                                        if mem[_7169] < 0:
                                            return 3, 0, 0
                                        _8007 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8007] = _7523
                                        mem[384] = _8007
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _6908 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6908] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                        mem[352] = _6908
                                        _7418 = mem[384]
                                        _7651 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7651] = 0
                                        _7770 = mem[_7418]
                                        if mem[_7418] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _8226 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8226] = _7770 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                        mem[384] = _8226
                            else:
                                if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2831 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2831] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                _2877 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2877] = 10^18
                                _2903 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2903] = 0
                                _2963 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2963] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                _3071 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3071] = 0
                                if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                    _3177 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3177] = 0
                                    mem[288] = 0 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3556 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3556] = 0
                                        _3604 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3604] = 0
                                        _3679 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3679] = 0
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
                                        _3995 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3995] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4680 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4680] = 0
                                        if not ext_call.return_data[0]:
                                            _5305 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5305] = 0
                                            mem[352] = _5305
                                            _5759 = mem[384]
                                            _6031 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6031] = 0
                                            _6146 = mem[_5759]
                                            if mem[_5759] < 0:
                                                return 3, 0, 0
                                            _6545 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6545] = _6146
                                            mem[384] = _6545
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _5506 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5506] = 0
                                            mem[352] = _5506
                                            _6030 = mem[384]
                                            _6266 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6266] = 0
                                            _6351 = mem[_6030]
                                            if mem[_6030] < 0:
                                                return 3, 0, 0
                                            _6769 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6769] = _6351
                                            mem[384] = _6769
                                    else:
                                        if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4140 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4140] = 0
                                        _4255 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4255] = 0
                                        _4474 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4474] = 0
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
                                        _4979 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4979] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5905 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5905] = 0
                                        if not ext_call.return_data[0]:
                                            _6651 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6651] = 0
                                            mem[352] = _6651
                                            _7167 = mem[384]
                                            _7416 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7416] = 0
                                            _7521 = mem[_7167]
                                            if mem[_7167] < 0:
                                                return 3, 0, 0
                                            _8005 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8005] = _7521
                                            mem[384] = _8005
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6902 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6902] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _6902
                                            _7415 = mem[384]
                                            _7650 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7650] = 0
                                            _7768 = mem[_7415]
                                            if mem[_7415] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _8224 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8224] = _7768 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _8224
                                else:
                                    if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3228 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3228] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                    mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3603 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3603] = 0
                                        _3652 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3652] = 0
                                        _3773 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3773] = 0
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
                                        _4139 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4139] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4880 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4880] = 0
                                        if not ext_call.return_data[0]:
                                            _5505 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5505] = 0
                                            mem[352] = _5505
                                            _6027 = mem[384]
                                            _6263 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6263] = 0
                                            _6349 = mem[_6027]
                                            if mem[_6027] < 0:
                                                return 3, 0, 0
                                            _6767 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6767] = _6349
                                            mem[384] = _6767
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _5754 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5754] = 0
                                            mem[352] = _5754
                                            _6262 = mem[384]
                                            _6447 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6447] = 0
                                            _6543 = mem[_6262]
                                            if mem[_6262] < 0:
                                                return 3, 0, 0
                                            _7014 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7014] = _6543
                                            mem[384] = _7014
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4254 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4254] = 0
                                        _4381 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4381] = 0
                                        _4673 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4673] = 0
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
                                        _5146 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5146] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6144 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6144] = 0
                                        if not ext_call.return_data[0]:
                                            _6901 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6901] = 0
                                            mem[352] = _6901
                                            _7413 = mem[384]
                                            _7649 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7649] = 0
                                            _7766 = mem[_7413]
                                            if mem[_7413] < 0:
                                                return 3, 0, 0
                                            _8222 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8222] = _7766
                                            mem[384] = _8222
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7160 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7160] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _7160
                                            _7648 = mem[384]
                                            _7876 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7876] = 0
                                            _8003 = mem[_7648]
                                            if mem[_7648] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _8395 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8395] = _8003 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _8395
                else:
                    if 10^18 * markets[stor6[idx]].field_1280 / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_1280 / 10^18:
                        return 3, 0, 0
                    if not supplyBalances[address(arg1)][stor6[idx]].field_256:
                        return 5, 0, 0
                    mem[192] = 10^18 * markets[stor6[idx]].field_1280 / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256
                    _2107 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2107] = 0
                    _2130 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2130] = 0
                    _2157 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2157] = 0
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
                    _2238 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2238] = ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        return 18, 0, 0
                    _2344 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2344] = 0
                    if not ext_call.return_data[0]:
                        _2453 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2453] = 0
                        mem[224] = _2453
                        _2523 = mem[256]
                        _2551 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2551] = 0
                        _2566 = mem[_2523]
                        if mem[_2523] < 0:
                            return 3, 0, 0
                        _2635 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2635] = _2566
                        mem[256] = _2635
                        if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                            _2713 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2713] = 0
                            _2736 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2736] = 0
                            _2766 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2766] = 0
                            if markets[stor6[idx]].field_256 > block.number:
                                return 4, 0, 0
                            _2813 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2813] = markets[stor6[idx]].field_1792
                            _2844 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2844] = 0
                            if not markets[stor6[idx]].field_1792:
                                _2932 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2932] = 0
                                _2970 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2970] = 10^18
                                _3007 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3007] = 0
                                _3100 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3100] = 10^18
                                _3200 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3200] = 0
                                if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                    return 3, 0, 0
                                _3338 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3338] = 10^18 * markets[stor6[idx]].field_2048
                                mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                    mem[320] = 0
                                    _3990 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3990] = 0
                                    _4135 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4135] = 0
                                    _4305 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4305] = 0
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
                                    _4764 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4764] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _5647 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5647] = 0
                                    if not ext_call.return_data[0]:
                                        _6440 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6440] = 0
                                        mem[352] = _6440
                                        _6896 = mem[384]
                                        _7156 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7156] = 0
                                        _7263 = mem[_6896]
                                        if mem[_6896] < 0:
                                            return 3, 0, 0
                                        _7762 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7762] = _7263
                                        mem[384] = _7762
                                    else:
                                        if 0 / ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _6645 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6645] = 0
                                        mem[352] = _6645
                                        _7155 = mem[384]
                                        _7411 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7411] = 0
                                        _7517 = mem[_7155]
                                        if mem[_7155] < 0:
                                            return 3, 0, 0
                                        _8001 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8001] = _7517
                                        mem[384] = _8001
                                else:
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                        return 3, 0, 0
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                        return 5, 0, 0
                                    mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                    _4975 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4975] = 0
                                    _5144 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5144] = 0
                                    _5407 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5407] = 0
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
                                    _6023 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6023] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _7010 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7010] = 0
                                    if not ext_call.return_data[0]:
                                        _7869 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7869] = 0
                                        mem[352] = _7869
                                        _8332 = mem[384]
                                        _8484 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8484] = 0
                                        _8525 = mem[_8332]
                                        if mem[_8332] < 0:
                                            return 3, 0, 0
                                        _8808 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8808] = _8525
                                        mem[384] = _8808
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _8111 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8111] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                        mem[352] = _8111
                                        _8483 = mem[384]
                                        _8597 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8597] = 0
                                        _8657 = mem[_8483]
                                        if mem[_8483] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _8966 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8966] = _8657 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                        mem[384] = _8966
                            else:
                                if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2960 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2960] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                _3006 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3006] = 10^18
                                _3051 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3051] = 0
                                _3126 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3126] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                _3244 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3244] = 0
                                if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                    _3335 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3335] = 0
                                    mem[288] = 0 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3989 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3989] = 0
                                        _4134 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4134] = 0
                                        _4304 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4304] = 0
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
                                        _4760 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4760] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5643 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5643] = 0
                                        if not ext_call.return_data[0]:
                                            _6439 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6439] = 0
                                            mem[352] = _6439
                                            _6894 = mem[384]
                                            _7152 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7152] = 0
                                            _7261 = mem[_6894]
                                            if mem[_6894] < 0:
                                                return 3, 0, 0
                                            _7760 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7760] = _7261
                                            mem[384] = _7760
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6641 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6641] = 0
                                            mem[352] = _6641
                                            _7151 = mem[384]
                                            _7408 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7408] = 0
                                            _7515 = mem[_7151]
                                            if mem[_7151] < 0:
                                                return 3, 0, 0
                                            _7999 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7999] = _7515
                                            mem[384] = _7999
                                    else:
                                        if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4974 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4974] = 0
                                        _5143 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5143] = 0
                                        _5403 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5403] = 0
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
                                        _6019 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6019] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _7009 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7009] = 0
                                        if not ext_call.return_data[0]:
                                            _7868 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7868] = 0
                                            mem[352] = _7868
                                            _8330 = mem[384]
                                            _8481 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8481] = 0
                                            _8523 = mem[_8330]
                                            if mem[_8330] < 0:
                                                return 3, 0, 0
                                            _8806 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8806] = _8523
                                            mem[384] = _8806
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8105 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8105] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _8105
                                            _8480 = mem[384]
                                            _8596 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8596] = 0
                                            _8655 = mem[_8480]
                                            if mem[_8480] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _8964 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8964] = _8655 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _8964
                                else:
                                    if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3391 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3391] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                    mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _4133 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4133] = 0
                                        _4253 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4253] = 0
                                        _4465 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4465] = 0
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
                                        _4973 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4973] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5900 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5900] = 0
                                        if not ext_call.return_data[0]:
                                            _6640 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6640] = 0
                                            mem[352] = _6640
                                            _7148 = mem[384]
                                            _7405 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7405] = 0
                                            _7513 = mem[_7148]
                                            if mem[_7148] < 0:
                                                return 3, 0, 0
                                            _7997 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7997] = _7513
                                            mem[384] = _7997
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6889 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6889] = 0
                                            mem[352] = _6889
                                            _7404 = mem[384]
                                            _7645 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7645] = 0
                                            _7758 = mem[_7404]
                                            if mem[_7404] < 0:
                                                return 3, 0, 0
                                            _8220 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8220] = _7758
                                            mem[384] = _8220
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _5142 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5142] = 0
                                        _5304 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5304] = 0
                                        _5636 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5636] = 0
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
                                        _6256 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6256] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _7259 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7259] = 0
                                        if not ext_call.return_data[0]:
                                            _8104 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8104] = 0
                                            mem[352] = _8104
                                            _8478 = mem[384]
                                            _8595 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8595] = 0
                                            _8653 = mem[_8478]
                                            if mem[_8478] < 0:
                                                return 3, 0, 0
                                            _8962 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8962] = _8653
                                            mem[384] = _8962
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8323 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8323] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _8323
                                            _8594 = mem[384]
                                            _8723 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8723] = 0
                                            _8804 = mem[_8594]
                                            if mem[_8594] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _9085 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_9085] = _8804 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _9085
                    else:
                        if 10^18 * markets[stor6[idx]].field_1280 / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_1280 / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256:
                            return 3, 0, 0
                        _2487 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2487] = 10^18 * markets[stor6[idx]].field_1280 / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                        mem[224] = _2487
                        _2550 = mem[256]
                        _2580 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2580] = 0
                        _2598 = mem[_2550]
                        if mem[_2550] + (10^18 * markets[stor6[idx]].field_1280 / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_1280 / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                            return 3, 0, 0
                        _2674 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2674] = _2598 + (10^18 * markets[stor6[idx]].field_1280 / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                        mem[256] = _2674
                        if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                            _2733 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2733] = 0
                            _2765 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2765] = 0
                            _2782 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2782] = 0
                            if markets[stor6[idx]].field_256 > block.number:
                                return 4, 0, 0
                            _2843 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2843] = markets[stor6[idx]].field_1792
                            _2876 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2876] = 0
                            if not markets[stor6[idx]].field_1792:
                                _2957 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2957] = 0
                                _3005 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3005] = 10^18
                                _3050 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3050] = 0
                                _3124 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3124] = 10^18
                                _3243 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3243] = 0
                                if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                    return 3, 0, 0
                                _3387 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3387] = 10^18 * markets[stor6[idx]].field_2048
                                mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                    mem[320] = 0
                                    _4131 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4131] = 0
                                    _4252 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4252] = 0
                                    _4461 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4461] = 0
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
                                    _4968 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4968] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _5895 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5895] = 0
                                    if not ext_call.return_data[0]:
                                        _6635 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6635] = 0
                                        mem[352] = _6635
                                        _7142 = mem[384]
                                        _7398 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7398] = 0
                                        _7509 = mem[_7142]
                                        if mem[_7142] < 0:
                                            return 3, 0, 0
                                        _7993 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7993] = _7509
                                        mem[384] = _7993
                                    else:
                                        if 0 / ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _6883 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6883] = 0
                                        mem[352] = _6883
                                        _7397 = mem[384]
                                        _7642 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7642] = 0
                                        _7754 = mem[_7397]
                                        if mem[_7397] < 0:
                                            return 3, 0, 0
                                        _8218 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8218] = _7754
                                        mem[384] = _8218
                                else:
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                        return 3, 0, 0
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                        return 5, 0, 0
                                    mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                    _5140 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5140] = 0
                                    _5303 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5303] = 0
                                    _5628 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5628] = 0
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
                                    _6252 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6252] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 18, 0, 0
                                    _7256 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7256] = 0
                                    if not ext_call.return_data[0]:
                                        _8097 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8097] = 0
                                        mem[352] = _8097
                                        _8473 = mem[384]
                                        _8591 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8591] = 0
                                        _8649 = mem[_8473]
                                        if mem[_8473] < 0:
                                            return 3, 0, 0
                                        _8958 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8958] = _8649
                                        mem[384] = _8958
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 3, 0, 0
                                        _8315 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8315] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                        mem[352] = _8315
                                        _8590 = mem[384]
                                        _8720 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_8720] = 0
                                        _8800 = mem[_8590]
                                        if mem[_8590] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                            return 3, 0, 0
                                        _9083 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_9083] = _8800 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                        mem[384] = _9083
                            else:
                                if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                    return 3, 0, 0
                                _2991 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2991] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                _3049 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3049] = 10^18
                                _3085 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3085] = 0
                                _3159 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3159] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                _3277 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3277] = 0
                                if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                    _3384 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3384] = 0
                                    mem[288] = 0 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _4130 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4130] = 0
                                        _4251 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4251] = 0
                                        _4460 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4460] = 0
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
                                        _4964 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4964] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5891 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5891] = 0
                                        if not ext_call.return_data[0]:
                                            _6634 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6634] = 0
                                            mem[352] = _6634
                                            _7140 = mem[384]
                                            _7394 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7394] = 0
                                            _7507 = mem[_7140]
                                            if mem[_7140] < 0:
                                                return 3, 0, 0
                                            _7991 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7991] = _7507
                                            mem[384] = _7991
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6879 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6879] = 0
                                            mem[352] = _6879
                                            _7393 = mem[384]
                                            _7639 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7639] = 0
                                            _7752 = mem[_7393]
                                            if mem[_7393] < 0:
                                                return 3, 0, 0
                                            _8216 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8216] = _7752
                                            mem[384] = _8216
                                    else:
                                        if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _5139 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5139] = 0
                                        _5302 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5302] = 0
                                        _5624 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5624] = 0
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
                                        _6248 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6248] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _7255 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7255] = 0
                                        if not ext_call.return_data[0]:
                                            _8096 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8096] = 0
                                            mem[352] = _8096
                                            _8471 = mem[384]
                                            _8588 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8588] = 0
                                            _8647 = mem[_8471]
                                            if mem[_8471] < 0:
                                                return 3, 0, 0
                                            _8956 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8956] = _8647
                                            mem[384] = _8956
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8309 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8309] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _8309
                                            _8587 = mem[384]
                                            _8719 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8719] = 0
                                            _8798 = mem[_8587]
                                            if mem[_8587] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _9081 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_9081] = _8798 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _9081
                                else:
                                    if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3455 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3455] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                    mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _4250 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4250] = 0
                                        _4380 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4380] = 0
                                        _4659 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4659] = 0
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
                                        _5138 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5138] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6137 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6137] = 0
                                        if not ext_call.return_data[0]:
                                            _6878 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6878] = 0
                                            mem[352] = _6878
                                            _7390 = mem[384]
                                            _7636 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7636] = 0
                                            _7750 = mem[_7390]
                                            if mem[_7390] < 0:
                                                return 3, 0, 0
                                            _8214 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8214] = _7750
                                            mem[384] = _8214
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _7135 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7135] = 0
                                            mem[352] = _7135
                                            _7635 = mem[384]
                                            _7866 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7866] = 0
                                            _7989 = mem[_7635]
                                            if mem[_7635] < 0:
                                                return 3, 0, 0
                                            _8391 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8391] = _7989
                                            mem[384] = _8391
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _5301 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5301] = 0
                                        _5503 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5503] = 0
                                        _5884 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5884] = 0
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
                                        _6435 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6435] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _7505 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7505] = 0
                                        if not ext_call.return_data[0]:
                                            _8308 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8308] = 0
                                            mem[352] = _8308
                                            _8585 = mem[384]
                                            _8718 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8718] = 0
                                            _8796 = mem[_8585]
                                            if mem[_8585] < 0:
                                                return 3, 0, 0
                                            _9079 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_9079] = _8796
                                            mem[384] = _9079
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8464 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8464] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _8464
                                            _8717 = mem[384]
                                            _8874 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8874] = 0
                                            _8954 = mem[_8717]
                                            if mem[_8717] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _9143 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_9143] = _8954 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _9143
            else:
                if (block.number * markets[stor6[idx]].field_1024) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024) / markets[stor6[idx]].field_1024 != block.number - markets[stor6[idx]].field_256:
                    return 3, 0, 0
                _1908 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1908] = (block.number * markets[stor6[idx]].field_1024) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024)
                _1916 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1916] = 10^18
                _1924 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1924] = 0
                _1935 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1935] = (block.number * markets[stor6[idx]].field_1024) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024) + 10^18
                _1946 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1946] = 0
                if not (block.number * markets[stor6[idx]].field_1024) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024) + 10^18:
                    _1952 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1952] = 0
                    mem[160] = 0 / 10^18
                    if not supplyBalances[address(arg1)][stor6[idx]].field_0:
                        mem[192] = 0
                        _2008 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2008] = 0
                        _2019 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2019] = 0
                        _2028 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2028] = 0
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
                        _2077 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2077] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _2187 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2187] = 0
                        if not ext_call.return_data[0]:
                            _2270 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2270] = 0
                            mem[224] = _2270
                            _2323 = mem[256]
                            _2357 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2357] = 0
                            _2380 = mem[_2323]
                            if mem[_2323] < 0:
                                return 3, 0, 0
                            _2439 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2439] = _2380
                            mem[256] = _2439
                            if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                                _2579 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2579] = 0
                                _2614 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2614] = 0
                                _2653 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2653] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2708 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2708] = markets[stor6[idx]].field_1792
                                _2723 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2723] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2787 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2787] = 0
                                    _2812 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2812] = 10^18
                                    _2842 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2842] = 0
                                    _2912 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2912] = 10^18
                                    _2988 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2988] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3134 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3134] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3484 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3484] = 0
                                        _3550 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3550] = 0
                                        _3615 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3615] = 0
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
                                        _3825 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3825] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4458 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4458] = 0
                                        if not ext_call.return_data[0]:
                                            _5130 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5130] = 0
                                            mem[352] = _5130
                                            _5498 = mem[384]
                                            _5743 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5743] = 0
                                            _5881 = mem[_5498]
                                            if mem[_5498] < 0:
                                                return 3, 0, 0
                                            _6340 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6340] = _5881
                                            mem[384] = _6340
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _5295 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5295] = 0
                                            mem[352] = _5295
                                            _5742 = mem[384]
                                            _6010 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6010] = 0
                                            _6131 = mem[_5742]
                                            if mem[_5742] < 0:
                                                return 3, 0, 0
                                            _6536 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6536] = _6131
                                            mem[384] = _6536
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _3976 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3976] = 0
                                        _4125 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4125] = 0
                                        _4295 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4295] = 0
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
                                        _4750 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4750] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5620 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5620] = 0
                                        if not ext_call.return_data[0]:
                                            _6427 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6427] = 0
                                            mem[352] = _6427
                                            _6874 = mem[384]
                                            _7133 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7133] = 0
                                            _7251 = mem[_6874]
                                            if mem[_6874] < 0:
                                                return 3, 0, 0
                                            _7746 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7746] = _7251
                                            mem[384] = _7746
                                        else:
                                            if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6626 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6626] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _6626
                                            _7132 = mem[384]
                                            _7386 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7386] = 0
                                            _7502 = mem[_7132]
                                            if mem[_7132] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _7987 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7987] = _7502 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _7987
                                else:
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2800 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2800] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2841 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2841] = 10^18
                                    _2875 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2875] = 0
                                    _2931 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2931] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _3026 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3026] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _3131 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3131] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3483 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3483] = 0
                                            _3549 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3549] = 0
                                            _3614 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3614] = 0
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
                                            _3821 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3821] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4454 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4454] = 0
                                            if not ext_call.return_data[0]:
                                                _5129 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5129] = 0
                                                mem[352] = _5129
                                                _5496 = mem[384]
                                                _5739 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5739] = 0
                                                _5879 = mem[_5496]
                                                if mem[_5496] < 0:
                                                    return 3, 0, 0
                                                _6338 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6338] = _5879
                                                mem[384] = _6338
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _5291 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5291] = 0
                                                mem[352] = _5291
                                                _5738 = mem[384]
                                                _6007 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6007] = 0
                                                _6129 = mem[_5738]
                                                if mem[_5738] < 0:
                                                    return 3, 0, 0
                                                _6534 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6534] = _6129
                                                mem[384] = _6534
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _3975 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3975] = 0
                                            _4124 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4124] = 0
                                            _4291 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4291] = 0
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
                                            _4746 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4746] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5619 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5619] = 0
                                            if not ext_call.return_data[0]:
                                                _6426 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6426] = 0
                                                mem[352] = _6426
                                                _6872 = mem[384]
                                                _7130 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7130] = 0
                                                _7249 = mem[_6872]
                                                if mem[_6872] < 0:
                                                    return 3, 0, 0
                                                _7744 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7744] = _7249
                                                mem[384] = _7744
                                            else:
                                                if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6620 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6620] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _6620
                                                _7129 = mem[384]
                                                _7385 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7385] = 0
                                                _7500 = mem[_7129]
                                                if mem[_7129] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _7985 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7985] = _7500 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _7985
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _3174 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3174] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3548 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3548] = 0
                                            _3599 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3599] = 0
                                            _3671 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3671] = 0
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
                                            _3974 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3974] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4655 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4655] = 0
                                            if not ext_call.return_data[0]:
                                                _5290 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5290] = 0
                                                mem[352] = _5290
                                                _5735 = mem[384]
                                                _6004 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6004] = 0
                                                _6127 = mem[_5735]
                                                if mem[_5735] < 0:
                                                    return 3, 0, 0
                                                _6532 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6532] = _6127
                                                mem[384] = _6532
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _5491 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5491] = 0
                                                mem[352] = _5491
                                                _6003 = mem[384]
                                                _6244 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6244] = 0
                                                _6336 = mem[_6003]
                                                if mem[_6003] < 0:
                                                    return 3, 0, 0
                                                _6758 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6758] = _6336
                                                mem[384] = _6758
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4123 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4123] = 0
                                            _4249 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4249] = 0
                                            _4447 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4447] = 0
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
                                            _4957 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4957] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5877 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5877] = 0
                                            if not ext_call.return_data[0]:
                                                _6619 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6619] = 0
                                                mem[352] = _6619
                                                _7127 = mem[384]
                                                _7384 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7384] = 0
                                                _7498 = mem[_7127]
                                                if mem[_7127] < 0:
                                                    return 3, 0, 0
                                                _7983 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7983] = _7498
                                                mem[384] = _7983
                                            else:
                                                if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6865 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6865] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _6865
                                                _7383 = mem[384]
                                                _7626 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7626] = 0
                                                _7742 = mem[_7383]
                                                if mem[_7383] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _8212 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8212] = _7742 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _8212
                        else:
                            if 0 / ext_call.return_data[0]:
                                return 3, 0, 0
                            _2289 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2289] = 0
                            mem[224] = _2289
                            _2356 = mem[256]
                            _2398 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2398] = 0
                            _2415 = mem[_2356]
                            if mem[_2356] < 0:
                                return 3, 0, 0
                            _2471 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2471] = _2415
                            mem[256] = _2471
                            if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                                _2611 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2611] = 0
                                _2652 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2652] = 0
                                _2687 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2687] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2722 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2722] = markets[stor6[idx]].field_1792
                                _2751 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2751] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2797 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2797] = 0
                                    _2840 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2840] = 10^18
                                    _2874 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2874] = 0
                                    _2929 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2929] = 10^18
                                    _3025 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3025] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3170 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3170] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3546 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3546] = 0
                                        _3598 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3598] = 0
                                        _3667 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3667] = 0
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
                                        _3969 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3969] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4650 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4650] = 0
                                        if not ext_call.return_data[0]:
                                            _5285 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5285] = 0
                                            mem[352] = _5285
                                            _5729 = mem[384]
                                            _5997 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5997] = 0
                                            _6123 = mem[_5729]
                                            if mem[_5729] < 0:
                                                return 3, 0, 0
                                            _6528 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6528] = _6123
                                            mem[384] = _6528
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _5485 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5485] = 0
                                            mem[352] = _5485
                                            _5996 = mem[384]
                                            _6241 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6241] = 0
                                            _6332 = mem[_5996]
                                            if mem[_5996] < 0:
                                                return 3, 0, 0
                                            _6756 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6756] = _6332
                                            mem[384] = _6756
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4121 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4121] = 0
                                        _4248 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4248] = 0
                                        _4439 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4439] = 0
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
                                        _4953 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4953] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5874 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5874] = 0
                                        if not ext_call.return_data[0]:
                                            _6612 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6612] = 0
                                            mem[352] = _6612
                                            _7122 = mem[384]
                                            _7380 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7380] = 0
                                            _7494 = mem[_7122]
                                            if mem[_7122] < 0:
                                                return 3, 0, 0
                                            _7979 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7979] = _7494
                                            mem[384] = _7979
                                        else:
                                            if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6857 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6857] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _6857
                                            _7379 = mem[384]
                                            _7623 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7623] = 0
                                            _7738 = mem[_7379]
                                            if mem[_7379] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _8210 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8210] = _7738 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _8210
                                else:
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2827 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2827] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2873 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2873] = 10^18
                                    _2902 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2902] = 0
                                    _2956 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2956] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _3066 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3066] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _3167 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3167] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3545 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3545] = 0
                                            _3597 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3597] = 0
                                            _3666 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3666] = 0
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
                                            _3965 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3965] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4646 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4646] = 0
                                            if not ext_call.return_data[0]:
                                                _5284 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5284] = 0
                                                mem[352] = _5284
                                                _5727 = mem[384]
                                                _5993 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5993] = 0
                                                _6121 = mem[_5727]
                                                if mem[_5727] < 0:
                                                    return 3, 0, 0
                                                _6526 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6526] = _6121
                                                mem[384] = _6526
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _5481 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5481] = 0
                                                mem[352] = _5481
                                                _5992 = mem[384]
                                                _6238 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6238] = 0
                                                _6330 = mem[_5992]
                                                if mem[_5992] < 0:
                                                    return 3, 0, 0
                                                _6754 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6754] = _6330
                                                mem[384] = _6754
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4120 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4120] = 0
                                            _4247 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4247] = 0
                                            _4435 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4435] = 0
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
                                            _4949 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4949] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5873 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5873] = 0
                                            if not ext_call.return_data[0]:
                                                _6611 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6611] = 0
                                                mem[352] = _6611
                                                _7120 = mem[384]
                                                _7377 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7377] = 0
                                                _7492 = mem[_7120]
                                                if mem[_7120] < 0:
                                                    return 3, 0, 0
                                                _7977 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7977] = _7492
                                                mem[384] = _7977
                                            else:
                                                if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6851 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6851] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _6851
                                                _7376 = mem[384]
                                                _7622 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7622] = 0
                                                _7736 = mem[_7376]
                                                if mem[_7376] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _8208 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8208] = _7736 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _8208
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _3218 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3218] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3596 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3596] = 0
                                            _3648 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3648] = 0
                                            _3759 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3759] = 0
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
                                            _4119 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4119] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4859 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4859] = 0
                                            if not ext_call.return_data[0]:
                                                _5480 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5480] = 0
                                                mem[352] = _5480
                                                _5989 = mem[384]
                                                _6235 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6235] = 0
                                                _6328 = mem[_5989]
                                                if mem[_5989] < 0:
                                                    return 3, 0, 0
                                                _6752 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6752] = _6328
                                                mem[384] = _6752
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _5722 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5722] = 0
                                                mem[352] = _5722
                                                _6234 = mem[384]
                                                _6424 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6424] = 0
                                                _6524 = mem[_6234]
                                                if mem[_6234] < 0:
                                                    return 3, 0, 0
                                                _7001 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7001] = _6524
                                                mem[384] = _7001
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4246 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4246] = 0
                                            _4378 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4378] = 0
                                            _4639 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4639] = 0
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
                                            _5125 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5125] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6119 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6119] = 0
                                            if not ext_call.return_data[0]:
                                                _6850 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6850] = 0
                                                mem[352] = _6850
                                                _7374 = mem[384]
                                                _7621 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7621] = 0
                                                _7734 = mem[_7374]
                                                if mem[_7374] < 0:
                                                    return 3, 0, 0
                                                _8206 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8206] = _7734
                                                mem[384] = _8206
                                            else:
                                                if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7113 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7113] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _7113
                                                _7620 = mem[384]
                                                _7849 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7849] = 0
                                                _7975 = mem[_7620]
                                                if mem[_7620] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _8389 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8389] = _7975 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _8389
                    else:
                        if 0 / supplyBalances[address(arg1)][stor6[idx]].field_0:
                            return 3, 0, 0
                        if not supplyBalances[address(arg1)][stor6[idx]].field_256:
                            return 5, 0, 0
                        mem[192] = 0 / supplyBalances[address(arg1)][stor6[idx]].field_256
                        _2106 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2106] = 0
                        _2129 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2129] = 0
                        _2153 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2153] = 0
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
                        _2234 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2234] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _2343 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2343] = 0
                        if not ext_call.return_data[0]:
                            _2452 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2452] = 0
                            mem[224] = _2452
                            _2521 = mem[256]
                            _2548 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2548] = 0
                            _2564 = mem[_2521]
                            if mem[_2521] < 0:
                                return 3, 0, 0
                            _2633 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2633] = _2564
                            mem[256] = _2633
                            if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                                _2712 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2712] = 0
                                _2731 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2731] = 0
                                _2761 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2761] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2811 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2811] = markets[stor6[idx]].field_1792
                                _2839 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2839] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2927 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2927] = 0
                                    _2969 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2969] = 10^18
                                    _3001 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3001] = 0
                                    _3096 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3096] = 10^18
                                    _3199 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3199] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3332 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3332] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3960 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3960] = 0
                                        _4115 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4115] = 0
                                        _4278 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4278] = 0
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
                                        _4736 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4736] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5612 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5612] = 0
                                        if not ext_call.return_data[0]:
                                            _6417 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6417] = 0
                                            mem[352] = _6417
                                            _6845 = mem[384]
                                            _7109 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7109] = 0
                                            _7243 = mem[_6845]
                                            if mem[_6845] < 0:
                                                return 3, 0, 0
                                            _7730 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7730] = _7243
                                            mem[384] = _7730
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6605 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6605] = 0
                                            mem[352] = _6605
                                            _7108 = mem[384]
                                            _7372 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7372] = 0
                                            _7488 = mem[_7108]
                                            if mem[_7108] < 0:
                                                return 3, 0, 0
                                            _7973 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7973] = _7488
                                            mem[384] = _7973
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4945 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4945] = 0
                                        _5123 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5123] = 0
                                        _5379 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5379] = 0
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
                                        _5985 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5985] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6997 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6997] = 0
                                        if not ext_call.return_data[0]:
                                            _7842 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7842] = 0
                                            mem[352] = _7842
                                            _8296 = mem[384]
                                            _8460 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8460] = 0
                                            _8517 = mem[_8296]
                                            if mem[_8296] < 0:
                                                return 3, 0, 0
                                            _8792 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8792] = _8517
                                            mem[384] = _8792
                                        else:
                                            if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8074 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8074] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _8074
                                            _8459 = mem[384]
                                            _8579 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8579] = 0
                                            _8643 = mem[_8459]
                                            if mem[_8459] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _8952 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8952] = _8643 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _8952
                                else:
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2953 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2953] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _3000 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3000] = 10^18
                                    _3044 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3044] = 0
                                    _3122 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3122] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _3242 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3242] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _3329 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3329] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3959 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3959] = 0
                                            _4114 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4114] = 0
                                            _4277 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4277] = 0
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
                                            _4732 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4732] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5608 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5608] = 0
                                            if not ext_call.return_data[0]:
                                                _6416 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6416] = 0
                                                mem[352] = _6416
                                                _6843 = mem[384]
                                                _7105 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7105] = 0
                                                _7241 = mem[_6843]
                                                if mem[_6843] < 0:
                                                    return 3, 0, 0
                                                _7728 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7728] = _7241
                                                mem[384] = _7728
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6601 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6601] = 0
                                                mem[352] = _6601
                                                _7104 = mem[384]
                                                _7369 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7369] = 0
                                                _7486 = mem[_7104]
                                                if mem[_7104] < 0:
                                                    return 3, 0, 0
                                                _7971 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7971] = _7486
                                                mem[384] = _7971
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4944 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4944] = 0
                                            _5122 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5122] = 0
                                            _5375 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5375] = 0
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
                                            _5981 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5981] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6996 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6996] = 0
                                            if not ext_call.return_data[0]:
                                                _7841 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7841] = 0
                                                mem[352] = _7841
                                                _8294 = mem[384]
                                                _8457 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8457] = 0
                                                _8515 = mem[_8294]
                                                if mem[_8294] < 0:
                                                    return 3, 0, 0
                                                _8790 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8790] = _8515
                                                mem[384] = _8790
                                            else:
                                                if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8068 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8068] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _8068
                                                _8456 = mem[384]
                                                _8578 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8578] = 0
                                                _8641 = mem[_8456]
                                                if mem[_8456] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _8950 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8950] = _8641 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _8950
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _3381 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3381] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _4113 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4113] = 0
                                            _4245 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4245] = 0
                                            _4426 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4426] = 0
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
                                            _4943 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4943] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5868 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5868] = 0
                                            if not ext_call.return_data[0]:
                                                _6600 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6600] = 0
                                                mem[352] = _6600
                                                _7101 = mem[384]
                                                _7366 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7366] = 0
                                                _7484 = mem[_7101]
                                                if mem[_7101] < 0:
                                                    return 3, 0, 0
                                                _7969 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7969] = _7484
                                                mem[384] = _7969
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6838 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6838] = 0
                                                mem[352] = _6838
                                                _7365 = mem[384]
                                                _7617 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7617] = 0
                                                _7726 = mem[_7365]
                                                if mem[_7365] < 0:
                                                    return 3, 0, 0
                                                _8204 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8204] = _7726
                                                mem[384] = _8204
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _5121 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5121] = 0
                                            _5283 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5283] = 0
                                            _5601 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5601] = 0
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
                                            _6228 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6228] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _7239 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7239] = 0
                                            if not ext_call.return_data[0]:
                                                _8067 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8067] = 0
                                                mem[352] = _8067
                                                _8454 = mem[384]
                                                _8577 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8577] = 0
                                                _8639 = mem[_8454]
                                                if mem[_8454] < 0:
                                                    return 3, 0, 0
                                                _8948 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8948] = _8639
                                                mem[384] = _8948
                                            else:
                                                if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8287 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8287] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _8287
                                                _8576 = mem[384]
                                                _8701 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8701] = 0
                                                _8788 = mem[_8576]
                                                if mem[_8576] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _9077 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9077] = _8788 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _9077
                        else:
                            if 0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / supplyBalances[address(arg1)][stor6[idx]].field_256:
                                return 3, 0, 0
                            _2481 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2481] = 0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                            mem[224] = _2481
                            _2547 = mem[256]
                            _2578 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2578] = 0
                            _2596 = mem[_2547]
                            if mem[_2547] + (0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                return 3, 0, 0
                            _2672 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2672] = _2596 + (0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                            mem[256] = _2672
                            if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                                _2728 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2728] = 0
                                _2760 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2760] = 0
                                _2781 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2781] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2838 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2838] = markets[stor6[idx]].field_1792
                                _2872 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2872] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2950 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2950] = 0
                                    _2999 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2999] = 10^18
                                    _3043 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3043] = 0
                                    _3120 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3120] = 10^18
                                    _3241 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3241] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3377 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3377] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _4111 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4111] = 0
                                        _4244 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4244] = 0
                                        _4422 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4422] = 0
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
                                        _4938 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4938] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5863 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5863] = 0
                                        if not ext_call.return_data[0]:
                                            _6595 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6595] = 0
                                            mem[352] = _6595
                                            _7095 = mem[384]
                                            _7359 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7359] = 0
                                            _7480 = mem[_7095]
                                            if mem[_7095] < 0:
                                                return 3, 0, 0
                                            _7965 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7965] = _7480
                                            mem[384] = _7965
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6832 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6832] = 0
                                            mem[352] = _6832
                                            _7358 = mem[384]
                                            _7614 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7614] = 0
                                            _7722 = mem[_7358]
                                            if mem[_7358] < 0:
                                                return 3, 0, 0
                                            _8202 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8202] = _7722
                                            mem[384] = _8202
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _5119 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5119] = 0
                                        _5282 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5282] = 0
                                        _5593 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5593] = 0
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
                                        _6224 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6224] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _7236 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7236] = 0
                                        if not ext_call.return_data[0]:
                                            _8060 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8060] = 0
                                            mem[352] = _8060
                                            _8449 = mem[384]
                                            _8573 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8573] = 0
                                            _8635 = mem[_8449]
                                            if mem[_8449] < 0:
                                                return 3, 0, 0
                                            _8944 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8944] = _8635
                                            mem[384] = _8944
                                        else:
                                            if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8279 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8279] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _8279
                                            _8572 = mem[384]
                                            _8698 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8698] = 0
                                            _8784 = mem[_8572]
                                            if mem[_8572] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _9075 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_9075] = _8784 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _9075
                                else:
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2986 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2986] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _3042 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3042] = 10^18
                                    _3083 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3083] = 0
                                    _3157 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3157] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _3275 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3275] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _3374 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3374] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _4110 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4110] = 0
                                            _4243 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4243] = 0
                                            _4421 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4421] = 0
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
                                            _4934 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4934] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5859 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5859] = 0
                                            if not ext_call.return_data[0]:
                                                _6594 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6594] = 0
                                                mem[352] = _6594
                                                _7093 = mem[384]
                                                _7355 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7355] = 0
                                                _7478 = mem[_7093]
                                                if mem[_7093] < 0:
                                                    return 3, 0, 0
                                                _7963 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7963] = _7478
                                                mem[384] = _7963
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6828 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6828] = 0
                                                mem[352] = _6828
                                                _7354 = mem[384]
                                                _7611 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7611] = 0
                                                _7720 = mem[_7354]
                                                if mem[_7354] < 0:
                                                    return 3, 0, 0
                                                _8200 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8200] = _7720
                                                mem[384] = _8200
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _5118 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5118] = 0
                                            _5281 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5281] = 0
                                            _5589 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5589] = 0
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
                                            _6220 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6220] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _7235 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7235] = 0
                                            if not ext_call.return_data[0]:
                                                _8059 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8059] = 0
                                                mem[352] = _8059
                                                _8447 = mem[384]
                                                _8570 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8570] = 0
                                                _8633 = mem[_8447]
                                                if mem[_8447] < 0:
                                                    return 3, 0, 0
                                                _8942 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8942] = _8633
                                                mem[384] = _8942
                                            else:
                                                if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8273 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8273] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _8273
                                                _8569 = mem[384]
                                                _8697 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8697] = 0
                                                _8782 = mem[_8569]
                                                if mem[_8569] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _9073 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9073] = _8782 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _9073
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _3448 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3448] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _4242 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4242] = 0
                                            _4377 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4377] = 0
                                            _4625 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4625] = 0
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
                                            _5117 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5117] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6112 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6112] = 0
                                            if not ext_call.return_data[0]:
                                                _6827 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6827] = 0
                                                mem[352] = _6827
                                                _7351 = mem[384]
                                                _7608 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7608] = 0
                                                _7718 = mem[_7351]
                                                if mem[_7351] < 0:
                                                    return 3, 0, 0
                                                _8198 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8198] = _7718
                                                mem[384] = _8198
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _7088 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7088] = 0
                                                mem[352] = _7088
                                                _7607 = mem[384]
                                                _7839 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7839] = 0
                                                _7961 = mem[_7607]
                                                if mem[_7607] < 0:
                                                    return 3, 0, 0
                                                _8385 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8385] = _7961
                                                mem[384] = _8385
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _5280 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5280] = 0
                                            _5478 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5478] = 0
                                            _5852 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5852] = 0
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
                                            _6412 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6412] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _7476 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7476] = 0
                                            if not ext_call.return_data[0]:
                                                _8272 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8272] = 0
                                                mem[352] = _8272
                                                _8567 = mem[384]
                                                _8696 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8696] = 0
                                                _8780 = mem[_8567]
                                                if mem[_8567] < 0:
                                                    return 3, 0, 0
                                                _9071 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9071] = _8780
                                                mem[384] = _9071
                                            else:
                                                if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8440 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8440] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _8440
                                                _8695 = mem[384]
                                                _8847 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8847] = 0
                                                _8940 = mem[_8695]
                                                if mem[_8695] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _9141 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9141] = _8940 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _9141
                else:
                    if (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / (block.number * markets[stor6[idx]].field_1024) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024) + 10^18 != markets[stor6[idx]].field_1280:
                        return 3, 0, 0
                    _1964 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1964] = (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280)
                    mem[160] = (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18
                    if not supplyBalances[address(arg1)][stor6[idx]].field_0:
                        mem[192] = 0
                        _2018 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2018] = 0
                        _2026 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2026] = 0
                        _2038 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2038] = 0
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
                        _2105 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2105] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _2221 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2221] = 0
                        if not ext_call.return_data[0]:
                            _2288 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2288] = 0
                            mem[224] = _2288
                            _2353 = mem[256]
                            _2395 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2395] = 0
                            _2413 = mem[_2353]
                            if mem[_2353] < 0:
                                return 3, 0, 0
                            _2469 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2469] = _2413
                            mem[256] = _2469
                            if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                                _2610 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2610] = 0
                                _2649 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2649] = 0
                                _2684 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2684] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2721 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2721] = markets[stor6[idx]].field_1792
                                _2750 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2750] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2796 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2796] = 0
                                    _2837 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2837] = 10^18
                                    _2871 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2871] = 0
                                    _2926 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2926] = 10^18
                                    _3022 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3022] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3165 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3165] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3538 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3538] = 0
                                        _3592 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3592] = 0
                                        _3662 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3662] = 0
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
                                        _3946 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3946] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4623 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4623] = 0
                                        if not ext_call.return_data[0]:
                                            _5275 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5275] = 0
                                            mem[352] = _5275
                                            _5710 = mem[384]
                                            _5969 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5969] = 0
                                            _6106 = mem[_5710]
                                            if mem[_5710] < 0:
                                                return 3, 0, 0
                                            _6515 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6515] = _6106
                                            mem[384] = _6515
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _5472 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5472] = 0
                                            mem[352] = _5472
                                            _5968 = mem[384]
                                            _6217 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6217] = 0
                                            _6319 = mem[_5968]
                                            if mem[_5968] < 0:
                                                return 3, 0, 0
                                            _6743 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6743] = _6319
                                            mem[384] = _6743
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4104 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4104] = 0
                                        _4241 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4241] = 0
                                        _4413 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4413] = 0
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
                                        _4928 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4928] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5849 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5849] = 0
                                        if not ext_call.return_data[0]:
                                            _6587 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6587] = 0
                                            mem[352] = _6587
                                            _7084 = mem[384]
                                            _7348 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7348] = 0
                                            _7473 = mem[_7084]
                                            if mem[_7084] < 0:
                                                return 3, 0, 0
                                            _7957 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7957] = _7473
                                            mem[384] = _7957
                                        else:
                                            if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _6819 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6819] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _6819
                                            _7347 = mem[384]
                                            _7602 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7602] = 0
                                            _7714 = mem[_7347]
                                            if mem[_7347] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _8196 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8196] = _7714 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _8196
                                else:
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2823 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2823] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2870 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2870] = 10^18
                                    _2901 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2901] = 0
                                    _2949 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2949] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _3061 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3061] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _3162 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3162] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3537 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3537] = 0
                                            _3591 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3591] = 0
                                            _3661 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3661] = 0
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
                                            _3942 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3942] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4619 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4619] = 0
                                            if not ext_call.return_data[0]:
                                                _5274 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5274] = 0
                                                mem[352] = _5274
                                                _5708 = mem[384]
                                                _5965 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5965] = 0
                                                _6104 = mem[_5708]
                                                if mem[_5708] < 0:
                                                    return 3, 0, 0
                                                _6513 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6513] = _6104
                                                mem[384] = _6513
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _5468 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5468] = 0
                                                mem[352] = _5468
                                                _5964 = mem[384]
                                                _6214 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6214] = 0
                                                _6317 = mem[_5964]
                                                if mem[_5964] < 0:
                                                    return 3, 0, 0
                                                _6741 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6741] = _6317
                                                mem[384] = _6741
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4103 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4103] = 0
                                            _4240 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4240] = 0
                                            _4409 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4409] = 0
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
                                            _4924 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4924] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5848 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5848] = 0
                                            if not ext_call.return_data[0]:
                                                _6586 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6586] = 0
                                                mem[352] = _6586
                                                _7082 = mem[384]
                                                _7345 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7345] = 0
                                                _7471 = mem[_7082]
                                                if mem[_7082] < 0:
                                                    return 3, 0, 0
                                                _7955 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7955] = _7471
                                                mem[384] = _7955
                                            else:
                                                if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _6813 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6813] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _6813
                                                _7344 = mem[384]
                                                _7601 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7601] = 0
                                                _7712 = mem[_7344]
                                                if mem[_7344] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _8194 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8194] = _7712 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _8194
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _3210 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3210] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3590 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3590] = 0
                                            _3644 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3644] = 0
                                            _3751 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3751] = 0
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
                                            _4102 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4102] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4841 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4841] = 0
                                            if not ext_call.return_data[0]:
                                                _5467 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5467] = 0
                                                mem[352] = _5467
                                                _5961 = mem[384]
                                                _6211 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6211] = 0
                                                _6315 = mem[_5961]
                                                if mem[_5961] < 0:
                                                    return 3, 0, 0
                                                _6739 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6739] = _6315
                                                mem[384] = _6739
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _5703 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5703] = 0
                                                mem[352] = _5703
                                                _6210 = mem[384]
                                                _6409 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6409] = 0
                                                _6511 = mem[_6210]
                                                if mem[_6210] < 0:
                                                    return 3, 0, 0
                                                _6990 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6990] = _6511
                                                mem[384] = _6990
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4239 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4239] = 0
                                            _4376 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4376] = 0
                                            _4612 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4612] = 0
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
                                            _5110 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5110] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6102 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6102] = 0
                                            if not ext_call.return_data[0]:
                                                _6812 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6812] = 0
                                                mem[352] = _6812
                                                _7342 = mem[384]
                                                _7600 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7600] = 0
                                                _7710 = mem[_7342]
                                                if mem[_7342] < 0:
                                                    return 3, 0, 0
                                                _8192 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8192] = _7710
                                                mem[384] = _8192
                                            else:
                                                if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7075 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7075] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _7075
                                                _7599 = mem[384]
                                                _7830 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7830] = 0
                                                _7953 = mem[_7599]
                                                if mem[_7599] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _8383 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8383] = _7953 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _8383
                        else:
                            if 0 / ext_call.return_data[0]:
                                return 3, 0, 0
                            _2318 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2318] = 0
                            mem[224] = _2318
                            _2394 = mem[256]
                            _2430 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2430] = 0
                            _2437 = mem[_2394]
                            if mem[_2394] < 0:
                                return 3, 0, 0
                            _2511 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2511] = _2437
                            mem[256] = _2511
                            if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                                _2646 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2646] = 0
                                _2683 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2683] = 0
                                _2703 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2703] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2749 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2749] = markets[stor6[idx]].field_1792
                                _2775 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2775] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2820 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2820] = 0
                                    _2869 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2869] = 10^18
                                    _2900 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2900] = 0
                                    _2947 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2947] = 10^18
                                    _3060 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3060] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3206 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3206] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _3588 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3588] = 0
                                        _3643 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3643] = 0
                                        _3747 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3747] = 0
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
                                        _4097 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4097] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _4836 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4836] = 0
                                        if not ext_call.return_data[0]:
                                            _5462 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5462] = 0
                                            mem[352] = _5462
                                            _5955 = mem[384]
                                            _6204 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6204] = 0
                                            _6311 = mem[_5955]
                                            if mem[_5955] < 0:
                                                return 3, 0, 0
                                            _6735 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6735] = _6311
                                            mem[384] = _6735
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _5697 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5697] = 0
                                            mem[352] = _5697
                                            _6203 = mem[384]
                                            _6406 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6406] = 0
                                            _6507 = mem[_6203]
                                            if mem[_6203] < 0:
                                                return 3, 0, 0
                                            _6988 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6988] = _6507
                                            mem[384] = _6988
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _4237 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4237] = 0
                                        _4375 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4375] = 0
                                        _4604 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4604] = 0
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
                                        _5106 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5106] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6099 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6099] = 0
                                        if not ext_call.return_data[0]:
                                            _6805 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6805] = 0
                                            mem[352] = _6805
                                            _7337 = mem[384]
                                            _7596 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7596] = 0
                                            _7706 = mem[_7337]
                                            if mem[_7337] < 0:
                                                return 3, 0, 0
                                            _8188 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8188] = _7706
                                            mem[384] = _8188
                                        else:
                                            if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _7067 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7067] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _7067
                                            _7595 = mem[384]
                                            _7827 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7827] = 0
                                            _7949 = mem[_7595]
                                            if mem[_7595] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _8381 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8381] = _7949 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _8381
                                else:
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2854 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2854] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _2899 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2899] = 10^18
                                    _2922 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2922] = 0
                                    _2983 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2983] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _3092 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3092] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _3203 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3203] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3587 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3587] = 0
                                            _3642 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3642] = 0
                                            _3746 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3746] = 0
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
                                            _4093 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4093] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _4832 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4832] = 0
                                            if not ext_call.return_data[0]:
                                                _5461 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5461] = 0
                                                mem[352] = _5461
                                                _5953 = mem[384]
                                                _6200 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6200] = 0
                                                _6309 = mem[_5953]
                                                if mem[_5953] < 0:
                                                    return 3, 0, 0
                                                _6733 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6733] = _6309
                                                mem[384] = _6733
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _5693 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5693] = 0
                                                mem[352] = _5693
                                                _6199 = mem[384]
                                                _6403 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6403] = 0
                                                _6505 = mem[_6199]
                                                if mem[_6199] < 0:
                                                    return 3, 0, 0
                                                _6986 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6986] = _6505
                                                mem[384] = _6986
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4236 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4236] = 0
                                            _4374 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4374] = 0
                                            _4600 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4600] = 0
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
                                            _5102 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5102] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6098 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6098] = 0
                                            if not ext_call.return_data[0]:
                                                _6804 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6804] = 0
                                                mem[352] = _6804
                                                _7335 = mem[384]
                                                _7593 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7593] = 0
                                                _7704 = mem[_7335]
                                                if mem[_7335] < 0:
                                                    return 3, 0, 0
                                                _8186 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8186] = _7704
                                                mem[384] = _8186
                                            else:
                                                if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7061 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7061] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _7061
                                                _7592 = mem[384]
                                                _7826 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7826] = 0
                                                _7947 = mem[_7592]
                                                if mem[_7592] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _8379 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8379] = _7947 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _8379
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _3252 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3252] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _3641 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3641] = 0
                                            _3709 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3709] = 0
                                            _3879 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3879] = 0
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
                                            _4235 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4235] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5026 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5026] = 0
                                            if not ext_call.return_data[0]:
                                                _5692 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5692] = 0
                                                mem[352] = _5692
                                                _6196 = mem[384]
                                                _6400 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6400] = 0
                                                _6503 = mem[_6196]
                                                if mem[_6196] < 0:
                                                    return 3, 0, 0
                                                _6984 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6984] = _6503
                                                mem[384] = _6984
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _5948 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5948] = 0
                                                mem[352] = _5948
                                                _6399 = mem[384]
                                                _6584 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6584] = 0
                                                _6731 = mem[_6399]
                                                if mem[_6399] < 0:
                                                    return 3, 0, 0
                                                _7231 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7231] = _6731
                                                mem[384] = _7231
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _4373 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4373] = 0
                                            _4534 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4534] = 0
                                            _4825 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4825] = 0
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
                                            _5270 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5270] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6307 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6307] = 0
                                            if not ext_call.return_data[0]:
                                                _7060 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7060] = 0
                                                mem[352] = _7060
                                                _7590 = mem[384]
                                                _7825 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7825] = 0
                                                _7945 = mem[_7590]
                                                if mem[_7590] < 0:
                                                    return 3, 0, 0
                                                _8377 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8377] = _7945
                                                mem[384] = _8377
                                            else:
                                                if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _7328 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7328] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _7328
                                                _7824 = mem[384]
                                                _8044 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8044] = 0
                                                _8184 = mem[_7824]
                                                if mem[_7824] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _8511 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8511] = _8184 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _8511
                    else:
                        if (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18:
                            return 3, 0, 0
                        if not supplyBalances[address(arg1)][stor6[idx]].field_256:
                            return 5, 0, 0
                        mem[192] = (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256
                        _2128 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2128] = 0
                        _2150 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2150] = 0
                        _2180 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2180] = 0
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
                        _2257 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2257] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 18, 0, 0
                        _2378 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2378] = 0
                        if not ext_call.return_data[0]:
                            _2480 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2480] = 0
                            mem[224] = _2480
                            _2545 = mem[256]
                            _2577 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2577] = 0
                            _2594 = mem[_2545]
                            if mem[_2545] < 0:
                                return 3, 0, 0
                            _2670 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2670] = _2594
                            mem[256] = _2670
                            if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                                _2727 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2727] = 0
                                _2756 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2756] = 0
                                _2779 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2779] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2836 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2836] = markets[stor6[idx]].field_1792
                                _2868 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2868] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2945 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2945] = 0
                                    _2998 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2998] = 10^18
                                    _3038 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3038] = 0
                                    _3118 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3118] = 10^18
                                    _3240 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3240] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3372 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3372] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _4088 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4088] = 0
                                        _4231 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4231] = 0
                                        _4396 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4396] = 0
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
                                        _4914 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4914] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _5841 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5841] = 0
                                        if not ext_call.return_data[0]:
                                            _6577 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6577] = 0
                                            mem[352] = _6577
                                            _7055 = mem[384]
                                            _7324 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7324] = 0
                                            _7465 = mem[_7055]
                                            if mem[_7055] < 0:
                                                return 3, 0, 0
                                            _7941 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7941] = _7465
                                            mem[384] = _7941
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _6798 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6798] = 0
                                            mem[352] = _6798
                                            _7323 = mem[384]
                                            _7588 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7588] = 0
                                            _7700 = mem[_7323]
                                            if mem[_7323] < 0:
                                                return 3, 0, 0
                                            _8182 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8182] = _7700
                                            mem[384] = _8182
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _5098 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5098] = 0
                                        _5268 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5268] = 0
                                        _5573 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5573] = 0
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
                                        _6192 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6192] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _7227 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7227] = 0
                                        if not ext_call.return_data[0]:
                                            _8037 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8037] = 0
                                            mem[352] = _8037
                                            _8428 = mem[384]
                                            _8562 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8562] = 0
                                            _8629 = mem[_8428]
                                            if mem[_8428] < 0:
                                                return 3, 0, 0
                                            _8936 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8936] = _8629
                                            mem[384] = _8936
                                        else:
                                            if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8250 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8250] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _8250
                                            _8561 = mem[384]
                                            _8689 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8689] = 0
                                            _8776 = mem[_8561]
                                            if mem[_8561] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _9069 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_9069] = _8776 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _9069
                                else:
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _2980 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2980] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _3037 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3037] = 10^18
                                    _3078 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3078] = 0
                                    _3155 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3155] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _3274 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3274] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _3369 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3369] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _4087 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4087] = 0
                                            _4230 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4230] = 0
                                            _4395 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4395] = 0
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
                                            _4910 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4910] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _5837 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5837] = 0
                                            if not ext_call.return_data[0]:
                                                _6576 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6576] = 0
                                                mem[352] = _6576
                                                _7053 = mem[384]
                                                _7320 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7320] = 0
                                                _7463 = mem[_7053]
                                                if mem[_7053] < 0:
                                                    return 3, 0, 0
                                                _7939 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7939] = _7463
                                                mem[384] = _7939
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _6794 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6794] = 0
                                                mem[352] = _6794
                                                _7319 = mem[384]
                                                _7585 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7585] = 0
                                                _7698 = mem[_7319]
                                                if mem[_7319] < 0:
                                                    return 3, 0, 0
                                                _8180 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8180] = _7698
                                                mem[384] = _8180
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _5097 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5097] = 0
                                            _5267 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5267] = 0
                                            _5569 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5569] = 0
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
                                            _6188 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6188] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _7226 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7226] = 0
                                            if not ext_call.return_data[0]:
                                                _8036 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8036] = 0
                                                mem[352] = _8036
                                                _8426 = mem[384]
                                                _8559 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8559] = 0
                                                _8627 = mem[_8426]
                                                if mem[_8426] < 0:
                                                    return 3, 0, 0
                                                _8934 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8934] = _8627
                                                mem[384] = _8934
                                            else:
                                                if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8244 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8244] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _8244
                                                _8558 = mem[384]
                                                _8688 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8688] = 0
                                                _8774 = mem[_8558]
                                                if mem[_8558] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _9067 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9067] = _8774 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _9067
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _3443 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3443] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _4229 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4229] = 0
                                            _4372 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4372] = 0
                                            _4591 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4591] = 0
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
                                            _5096 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5096] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6093 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6093] = 0
                                            if not ext_call.return_data[0]:
                                                _6793 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6793] = 0
                                                mem[352] = _6793
                                                _7316 = mem[384]
                                                _7582 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7582] = 0
                                                _7696 = mem[_7316]
                                                if mem[_7316] < 0:
                                                    return 3, 0, 0
                                                _8178 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8178] = _7696
                                                mem[384] = _8178
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _7048 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7048] = 0
                                                mem[352] = _7048
                                                _7581 = mem[384]
                                                _7821 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7821] = 0
                                                _7937 = mem[_7581]
                                                if mem[_7581] < 0:
                                                    return 3, 0, 0
                                                _8375 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8375] = _7937
                                                mem[384] = _8375
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _5266 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5266] = 0
                                            _5460 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5460] = 0
                                            _5830 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5830] = 0
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
                                            _6393 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6393] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _7461 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7461] = 0
                                            if not ext_call.return_data[0]:
                                                _8243 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8243] = 0
                                                mem[352] = _8243
                                                _8556 = mem[384]
                                                _8687 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8687] = 0
                                                _8772 = mem[_8556]
                                                if mem[_8556] < 0:
                                                    return 3, 0, 0
                                                _9065 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9065] = _8772
                                                mem[384] = _9065
                                            else:
                                                if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8419 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8419] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _8419
                                                _8686 = mem[384]
                                                _8832 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8832] = 0
                                                _8932 = mem[_8686]
                                                if mem[_8686] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _9139 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9139] = _8932 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _9139
                        else:
                            if (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256:
                                return 3, 0, 0
                            _2514 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2514] = (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                            mem[224] = _2514
                            _2576 = mem[256]
                            _2609 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2609] = 0
                            _2631 = mem[_2576]
                            if mem[_2576] + ((10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                return 3, 0, 0
                            _2698 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2698] = _2631 + ((10^18 * markets[stor6[idx]].field_1280) + (block.number * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1024 * markets[stor6[idx]].field_1280) / 10^18 * supplyBalances[address(arg1)][stor6[idx]].field_0 / supplyBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                            mem[256] = _2698
                            if 0 < borrowBalances[address(arg1)][stor6[idx]].field_0:
                                _2753 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2753] = 0
                                _2778 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2778] = 0
                                _2786 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2786] = 0
                                if markets[stor6[idx]].field_256 > block.number:
                                    return 4, 0, 0
                                _2867 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2867] = markets[stor6[idx]].field_1792
                                _2898 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2898] = 0
                                if not markets[stor6[idx]].field_1792:
                                    _2977 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2977] = 0
                                    _3036 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3036] = 10^18
                                    _3077 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3077] = 0
                                    _3153 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3153] = 10^18
                                    _3273 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3273] = 0
                                    if 10^18 * markets[stor6[idx]].field_2048 / 10^18 != markets[stor6[idx]].field_2048:
                                        return 3, 0, 0
                                    _3439 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3439] = 10^18 * markets[stor6[idx]].field_2048
                                    mem[288] = 10^18 * markets[stor6[idx]].field_2048 / 10^18
                                    if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                        mem[320] = 0
                                        _4227 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4227] = 0
                                        _4371 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4371] = 0
                                        _4587 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4587] = 0
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
                                        _5091 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5091] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _6088 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6088] = 0
                                        if not ext_call.return_data[0]:
                                            _6788 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6788] = 0
                                            mem[352] = _6788
                                            _7310 = mem[384]
                                            _7575 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7575] = 0
                                            _7692 = mem[_7310]
                                            if mem[_7310] < 0:
                                                return 3, 0, 0
                                            _8174 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8174] = _7692
                                            mem[384] = _8174
                                        else:
                                            if 0 / ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _7042 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7042] = 0
                                            mem[352] = _7042
                                            _7574 = mem[384]
                                            _7818 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7818] = 0
                                            _7933 = mem[_7574]
                                            if mem[_7574] < 0:
                                                return 3, 0, 0
                                            _8373 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8373] = _7933
                                            mem[384] = _8373
                                    else:
                                        if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != 10^18 * markets[stor6[idx]].field_2048 / 10^18:
                                            return 3, 0, 0
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                            return 5, 0, 0
                                        mem[320] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                        _5264 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5264] = 0
                                        _5459 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5459] = 0
                                        _5822 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5822] = 0
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
                                        _6389 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6389] = ext_call.return_data[0]
                                        if not ext_call.return_data[0]:
                                            return 18, 0, 0
                                        _7458 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7458] = 0
                                        if not ext_call.return_data[0]:
                                            _8236 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8236] = 0
                                            mem[352] = _8236
                                            _8551 = mem[384]
                                            _8683 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8683] = 0
                                            _8768 = mem[_8551]
                                            if mem[_8551] < 0:
                                                return 3, 0, 0
                                            _9061 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_9061] = _8768
                                            mem[384] = _9061
                                        else:
                                            if 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 3, 0, 0
                                            _8411 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8411] = 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                            mem[352] = _8411
                                            _8682 = mem[384]
                                            _8829 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8829] = 0
                                            _8928 = mem[_8682]
                                            if mem[_8682] + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                return 3, 0, 0
                                            _9137 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_9137] = _8928 + (10^18 * markets[stor6[idx]].field_2048 / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                            mem[384] = _9137
                                else:
                                    if (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) / markets[stor6[idx]].field_1792 != block.number - markets[stor6[idx]].field_256:
                                        return 3, 0, 0
                                    _3020 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3020] = (block.number * markets[stor6[idx]].field_1792) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792)
                                    _3076 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3076] = 10^18
                                    _3105 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3105] = 0
                                    _3198 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3198] = (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18
                                    _3294 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3294] = 0
                                    if not (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18:
                                        _3436 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3436] = 0
                                        mem[288] = 0 / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _4226 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4226] = 0
                                            _4370 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4370] = 0
                                            _4586 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4586] = 0
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
                                            _5087 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5087] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6084 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6084] = 0
                                            if not ext_call.return_data[0]:
                                                _6787 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6787] = 0
                                                mem[352] = _6787
                                                _7308 = mem[384]
                                                _7571 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7571] = 0
                                                _7690 = mem[_7308]
                                                if mem[_7308] < 0:
                                                    return 3, 0, 0
                                                _8172 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8172] = _7690
                                                mem[384] = _8172
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _7038 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7038] = 0
                                                mem[352] = _7038
                                                _7570 = mem[384]
                                                _7815 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7815] = 0
                                                _7931 = mem[_7570]
                                                if mem[_7570] < 0:
                                                    return 3, 0, 0
                                                _8371 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8371] = _7931
                                                mem[384] = _8371
                                        else:
                                            if 0 / borrowBalances[address(arg1)][stor6[idx]].field_0:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _5263 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5263] = 0
                                            _5458 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5458] = 0
                                            _5818 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5818] = 0
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
                                            _6385 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6385] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _7457 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7457] = 0
                                            if not ext_call.return_data[0]:
                                                _8235 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8235] = 0
                                                mem[352] = _8235
                                                _8549 = mem[384]
                                                _8680 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8680] = 0
                                                _8766 = mem[_8549]
                                                if mem[_8549] < 0:
                                                    return 3, 0, 0
                                                _9059 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9059] = _8766
                                                mem[384] = _9059
                                            else:
                                                if 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != 0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8405 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8405] = 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _8405
                                                _8679 = mem[384]
                                                _8828 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8828] = 0
                                                _8926 = mem[_8679]
                                                if mem[_8679] + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < 0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _9135 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9135] = _8926 + (0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _9135
                                    else:
                                        if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / (block.number * markets[stor6[idx]].field_1792) + (-1 * markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792) + 10^18 != markets[stor6[idx]].field_2048:
                                            return 3, 0, 0
                                        _3513 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3513] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048)
                                        mem[288] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18
                                        if not borrowBalances[address(arg1)][stor6[idx]].field_0:
                                            mem[320] = 0
                                            _4369 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4369] = 0
                                            _4533 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4533] = 0
                                            _4811 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4811] = 0
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
                                            _5262 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5262] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _6300 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6300] = 0
                                            if not ext_call.return_data[0]:
                                                _7037 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7037] = 0
                                                mem[352] = _7037
                                                _7567 = mem[384]
                                                _7812 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7812] = 0
                                                _7929 = mem[_7567]
                                                if mem[_7567] < 0:
                                                    return 3, 0, 0
                                                _8369 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8369] = _7929
                                                mem[384] = _8369
                                            else:
                                                if 0 / ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _7303 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7303] = 0
                                                mem[352] = _7303
                                                _7811 = mem[384]
                                                _8034 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8034] = 0
                                                _8170 = mem[_7811]
                                                if mem[_7811] < 0:
                                                    return 3, 0, 0
                                                _8507 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8507] = _8170
                                                mem[384] = _8507
                                        else:
                                            if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_0 != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18:
                                                return 3, 0, 0
                                            if not borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                return 5, 0, 0
                                            mem[320] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256
                                            _5457 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5457] = 0
                                            _5690 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5690] = 0
                                            _6077 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6077] = 0
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
                                            _6572 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6572] = ext_call.return_data[0]
                                            if not ext_call.return_data[0]:
                                                return 18, 0, 0
                                            _7688 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7688] = 0
                                            if not ext_call.return_data[0]:
                                                _8404 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8404] = 0
                                                mem[352] = _8404
                                                _8677 = mem[384]
                                                _8827 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8827] = 0
                                                _8924 = mem[_8677]
                                                if mem[_8677] < 0:
                                                    return 3, 0, 0
                                                _9133 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9133] = _8924
                                                mem[384] = _9133
                                            else:
                                                if (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256:
                                                    return 3, 0, 0
                                                _8542 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8542] = (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]
                                                mem[352] = _8542
                                                _8826 = mem[384]
                                                _8975 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8975] = 0
                                                _9057 = mem[_8826]
                                                if mem[_8826] + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]) < (10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0]:
                                                    return 3, 0, 0
                                                _9161 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9161] = _9057 + ((10^18 * markets[stor6[idx]].field_2048) + (block.number * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) - (markets[stor6[idx]].field_256 * markets[stor6[idx]].field_1792 * markets[stor6[idx]].field_2048) / 10^18 * borrowBalances[address(arg1)][stor6[idx]].field_0 / borrowBalances[address(arg1)][stor6[idx]].field_256 * ext_call.return_data[0])
                                                mem[384] = _9161
        s = sha3(collateralMarkets[idx], sha3(address(arg1), 4))
        s = sha3(collateralMarkets[idx], sha3(address(arg1), 3))
        s = sha3(collateralMarkets[idx], 5)
        idx = idx + 1
        continue 
    return 0, mem[mem[256]], mem[mem[384]]
}



}
