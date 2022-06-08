contract main {




// =====================  Runtime code  =====================


#
#  - sub_04fdc562(?)
#
const sub_44ee8753(?) = 18

const sub_74046cf0(?) = 10^18

const sub_f782f966(?) = 100


address contractRegistryAddress;
address principalTokenAddress;
address collateralTokenAddress;
address priceFeedAddress;
address liquidatorAddress;
mapping of struct sub_1920427b;
address owner;
mapping of uint256 sub_0525ed66;

function sub_03a896a1(?) {
    require calldata.size - 4 >= 32
    return sub_0525ed66[arg1]
}

function sub_0525ed66(?) {
    require calldata.size - 4 >= 32
    return sub_0525ed66[arg1]
}

function sub_1920427b(?) {
    require calldata.size - 4 >= 32
    return sub_1920427b[arg1].field_0, sub_1920427b[arg1].field_256
}

function liquidator() {
    return liquidatorAddress
}

function priceFeed() {
    return priceFeedAddress
}

function owner() {
    return owner
}

function contractRegistry() {
    return contractRegistryAddress
}

function collateralToken() {
    return collateralTokenAddress
}

function principalToken() {
    return principalTokenAddress
}

function _fallback() payable {
    revert
}

function sub_09cc1440(?) {
    require calldata.size - 4 >= 32
    return not sub_1920427b[arg1].field_256
}

function sub_ee733bb7(?) {
    require calldata.size - 4 >= 32
    return not not sub_1920427b[arg1].field_256
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_0992b119(?) {
    require calldata.size - 4 >= 64
    require arg1 <= arg2
    return (arg2 - arg1 / 24 * 3600)
}

function min(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 < arg2:
        return arg1
    return arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_52ddbfc1(?) {
    require calldata.size - 4 >= 64
    if not arg2:
        if arg1 >= arg1:
            return arg1
    else:
        if arg2:
            if 24 * 3600 * arg2 / arg2 == 24 * 3600:
                if arg1 + (24 * 3600 * arg2) >= arg1:
                    return (arg1 + (24 * 3600 * arg2))
    revert
}

function sub_5e929e6a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (Mask(8, 240, ext_call.return_data[0]) >> 240)
}

function sub_db2f90ae(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.tokenTransferProxy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x15dacbea with:
         gas gas_remaining wei
        args collateralTokenAddress, msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_1920427b[arg1].field_0 + arg2 >= sub_1920427b[arg1].field_0
    sub_1920427b[arg1].field_0 += arg2
}

function sub_99114d84(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg2
    if arg2 - ext_call.return_data[0] / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
        return 0
    return (Mask(120, 120, ext_call.return_data[0]) >> 120)
}

function sub_b2819322(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= block.timestamp
    if block.timestamp - ext_call.return_data[0] / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
        return (0 > sub_0525ed66[arg1])
    return (Mask(120, 120, ext_call.return_data[0]) >> 120 > sub_0525ed66[arg1])
}

function sub_2762dd8c(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(8, 248, ext_call.return_data[0]):
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            return ext_call.return_data[0]
    else:
        if Mask(8, 248, ext_call.return_data[0]) >> 248:
            if 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / Mask(8, 248, ext_call.return_data[0]) >> 248 == 24 * 3600:
                if ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248) >= ext_call.return_data[0]:
                    return (ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248))
    revert
}

function sub_977a5e64(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x79dd4b7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only DebtKernel can call the registerTermStart method.'
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_1920427b[arg1].field_256:
        emit 0xf64a83c5 
        emit 0x4 
        return 0
    require ext_code.size(collateralTokenAddress)
    call collateralTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(120, 0, ext_call.return_data[0]):
        emit 0xf64a83c5 
        emit 0x1 
        return 0
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.tokenTransferProxy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(collateralTokenAddress)
    call collateralTokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg2), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(120, 0, ext_call.return_data[0]):
        emit 0xf64a83c5 
        emit 0x1 
        return 0
    sub_1920427b[arg1].field_0 = Mask(120, 0, ext_call.return_data[0])
    sub_1920427b[arg1].field_120 = 0
    sub_1920427b[arg1].field_256 = arg2
    emit 0x195d2e78: Mask(120, 0, ext_call.return_data[0]), arg1, arg2
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.tokenTransferProxy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x15dacbea with:
         gas gas_remaining wei
        args collateralTokenAddress, address(arg2), address(this.address), Mask(120, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_f2494eaf(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(8, 248, ext_call.return_data[0]):
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.debtRegistry() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.debtRegistry() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if 0 / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
                    if sub_0525ed66[arg1] <= 0:
                        return -sub_0525ed66[arg1]
                else:
                    if sub_0525ed66[arg1] <= Mask(120, 120, ext_call.return_data[0]) >> 120:
                        return ((Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1])
    else:
        if Mask(8, 248, ext_call.return_data[0]) >> 248:
            if 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / Mask(8, 248, ext_call.return_data[0]) >> 248 == 24 * 3600:
                if ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248) >= ext_call.return_data[0]:
                    require ext_code.size(contractRegistryAddress)
                    call contractRegistryAddress.debtRegistry() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(contractRegistryAddress)
                    call contractRegistryAddress.debtRegistry() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248):
                        if 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
                            if sub_0525ed66[arg1] <= 0:
                                return -sub_0525ed66[arg1]
                        else:
                            if sub_0525ed66[arg1] <= Mask(120, 120, ext_call.return_data[0]) >> 120:
                                return ((Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1])
    revert
}

function sub_5f0280ba(?) {
    require calldata.size - 4 >= 160
    if arg3 != principalTokenAddress:
        return 0
    require sub_0525ed66[arg1] + arg2 >= sub_0525ed66[arg1]
    sub_0525ed66[arg1] += arg2
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(8, 248, ext_call.return_data[0]):
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        if 0 / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
            if sub_0525ed66[arg1] >= 0:
                if sub_1920427b[arg1].field_256:
                    sub_1920427b[arg1].field_0 = 0
                    require ext_code.size(collateralTokenAddress)
                    call collateralTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_1920427b[arg1].field_256, sub_1920427b[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    sub_1920427b[arg1].field_0 = 0
                    sub_1920427b[arg1].field_256 = 0
                    sub_1920427b[arg1].field_512 = 0
        else:
            if sub_0525ed66[arg1] >= Mask(120, 120, ext_call.return_data[0]) >> 120:
                if sub_1920427b[arg1].field_256:
                    sub_1920427b[arg1].field_0 = 0
                    require ext_code.size(collateralTokenAddress)
                    call collateralTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_1920427b[arg1].field_256, sub_1920427b[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    sub_1920427b[arg1].field_0 = 0
                    sub_1920427b[arg1].field_256 = 0
                    sub_1920427b[arg1].field_512 = 0
    else:
        require Mask(8, 248, ext_call.return_data[0]) >> 248
        require 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / Mask(8, 248, ext_call.return_data[0]) >> 248 == 24 * 3600
        require ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248) >= ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248)
        if 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
            if sub_0525ed66[arg1] >= 0:
                if sub_1920427b[arg1].field_256:
                    sub_1920427b[arg1].field_0 = 0
                    require ext_code.size(collateralTokenAddress)
                    call collateralTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_1920427b[arg1].field_256, sub_1920427b[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    sub_1920427b[arg1].field_0 = 0
                    sub_1920427b[arg1].field_256 = 0
                    sub_1920427b[arg1].field_512 = 0
        else:
            if sub_0525ed66[arg1] >= Mask(120, 120, ext_call.return_data[0]) >> 120:
                if sub_1920427b[arg1].field_256:
                    sub_1920427b[arg1].field_0 = 0
                    require ext_code.size(collateralTokenAddress)
                    call collateralTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_1920427b[arg1].field_256, sub_1920427b[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    sub_1920427b[arg1].field_0 = 0
                    sub_1920427b[arg1].field_256 = 0
                    sub_1920427b[arg1].field_512 = 0
    return 1
}

function sub_c9912594(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(priceFeedAddress)
    call priceFeedAddress.0x57de26a4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(8, 248, ext_call.return_data[0]):
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.debtRegistry() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.debtRegistry() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if 0 / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
                    if sub_0525ed66[arg1] <= 0:
                        if not -sub_0525ed66[arg1]:
                            if sub_1920427b[arg1].field_0:
                                return (0 / sub_1920427b[arg1].field_0)
                        else:
                            if -sub_0525ed66[arg1]:
                                if -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / -sub_0525ed66[arg1] == ext_call.return_data[0]:
                                    if 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / 100 == -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18:
                                        if sub_1920427b[arg1].field_0:
                                            return (100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / sub_1920427b[arg1].field_0)
                else:
                    if sub_0525ed66[arg1] <= Mask(120, 120, ext_call.return_data[0]) >> 120:
                        if not (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1]:
                            if sub_1920427b[arg1].field_0:
                                return (0 / sub_1920427b[arg1].field_0)
                        else:
                            if (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1]:
                                if (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1] == ext_call.return_data[0]:
                                    if 100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / 100 == (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18:
                                        if sub_1920427b[arg1].field_0:
                                            return (100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / sub_1920427b[arg1].field_0)
    else:
        if Mask(8, 248, ext_call.return_data[0]) >> 248:
            if 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / Mask(8, 248, ext_call.return_data[0]) >> 248 == 24 * 3600:
                if ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248) >= ext_call.return_data[0]:
                    require ext_code.size(contractRegistryAddress)
                    call contractRegistryAddress.debtRegistry() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(contractRegistryAddress)
                    call contractRegistryAddress.debtRegistry() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248):
                        if 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
                            if sub_0525ed66[arg1] <= 0:
                                if not -sub_0525ed66[arg1]:
                                    if sub_1920427b[arg1].field_0:
                                        return (0 / sub_1920427b[arg1].field_0)
                                else:
                                    if -sub_0525ed66[arg1]:
                                        if -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / -sub_0525ed66[arg1] == ext_call.return_data[0]:
                                            if 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / 100 == -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18:
                                                if sub_1920427b[arg1].field_0:
                                                    return (100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / sub_1920427b[arg1].field_0)
                        else:
                            if sub_0525ed66[arg1] <= Mask(120, 120, ext_call.return_data[0]) >> 120:
                                if not (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1]:
                                    if sub_1920427b[arg1].field_0:
                                        return (0 / sub_1920427b[arg1].field_0)
                                else:
                                    if (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1]:
                                        if (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1] == ext_call.return_data[0]:
                                            if 100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / 100 == (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18:
                                                if sub_1920427b[arg1].field_0:
                                                    return (100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / sub_1920427b[arg1].field_0)
    revert
}

function sub_00dc41e6(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(priceFeedAddress)
    call priceFeedAddress.0x57de26a4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(8, 248, ext_call.return_data[0]):
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        if 0 / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
            require sub_0525ed66[arg1] <= 0
            if not -sub_0525ed66[arg1]:
                require sub_1920427b[arg1].field_0
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.debtRegistry() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0)
            require -sub_0525ed66[arg1]
            require -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / -sub_0525ed66[arg1] == ext_call.return_data[0]
            require 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / 100 == -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18
            require sub_1920427b[arg1].field_0
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.debtRegistry() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / sub_1920427b[arg1].field_0)
    else:
        require Mask(8, 248, ext_call.return_data[0]) >> 248
        require 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / Mask(8, 248, ext_call.return_data[0]) >> 248 == 24 * 3600
        require ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248) >= ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248)
        if 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
            require sub_0525ed66[arg1] <= 0
            if not -sub_0525ed66[arg1]:
                require sub_1920427b[arg1].field_0
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.debtRegistry() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0)
            require -sub_0525ed66[arg1]
            require -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / -sub_0525ed66[arg1] == ext_call.return_data[0]
            require 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / 100 == -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18
            require sub_1920427b[arg1].field_0
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.debtRegistry() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / sub_1920427b[arg1].field_0)
    require sub_0525ed66[arg1] <= Mask(120, 120, ext_call.return_data[0]) >> 120
    if not (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1]:
        require sub_1920427b[arg1].field_0
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0)
    require (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1]
    require (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1] == ext_call.return_data[0]
    require 100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / 100 == (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18
    require sub_1920427b[arg1].field_0
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / sub_1920427b[arg1].field_0)
}

function sub_31da4165(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(priceFeedAddress)
    call priceFeedAddress.0x57de26a4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(8, 248, ext_call.return_data[0]):
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        if 0 / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
            require sub_0525ed66[arg1] <= 0
            if not -sub_0525ed66[arg1]:
                require sub_1920427b[arg1].field_0
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.debtRegistry() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0:
                    return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0)
            else:
                require -sub_0525ed66[arg1]
                require -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / -sub_0525ed66[arg1] == ext_call.return_data[0]
                require 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / 100 == -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18
                require sub_1920427b[arg1].field_0
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.debtRegistry() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / sub_1920427b[arg1].field_0:
                    return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / sub_1920427b[arg1].field_0)
        else:
            require sub_0525ed66[arg1] <= Mask(120, 120, ext_call.return_data[0]) >> 120
            if not (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1]:
                require sub_1920427b[arg1].field_0
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.debtRegistry() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0:
                    return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0)
            else:
                require (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1]
                require (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1] == ext_call.return_data[0]
                require 100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / 100 == (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18
                require sub_1920427b[arg1].field_0
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.debtRegistry() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / sub_1920427b[arg1].field_0:
                    return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / sub_1920427b[arg1].field_0)
    else:
        require Mask(8, 248, ext_call.return_data[0]) >> 248
        require 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / Mask(8, 248, ext_call.return_data[0]) >> 248 == 24 * 3600
        require ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248) >= ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtRegistry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0] + (24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248)
        if 24 * 3600 * Mask(8, 248, ext_call.return_data[0]) >> 248 / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
            require sub_0525ed66[arg1] <= 0
            if not -sub_0525ed66[arg1]:
                require sub_1920427b[arg1].field_0
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.debtRegistry() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0:
                    return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0)
            else:
                require -sub_0525ed66[arg1]
                require -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / -sub_0525ed66[arg1] == ext_call.return_data[0]
                require 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / 100 == -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18
                require sub_1920427b[arg1].field_0
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.debtRegistry() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / sub_1920427b[arg1].field_0:
                    return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * -1 * sub_0525ed66[arg1] * ext_call.return_data[0] / 10^18 / sub_1920427b[arg1].field_0)
        else:
            require sub_0525ed66[arg1] <= Mask(120, 120, ext_call.return_data[0]) >> 120
            if not (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1]:
                require sub_1920427b[arg1].field_0
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.debtRegistry() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0:
                    return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 0 / sub_1920427b[arg1].field_0)
            else:
                require (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1]
                require (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / (Mask(120, 120, ext_call.return_data[0]) >> 120) - sub_0525ed66[arg1] == ext_call.return_data[0]
                require 100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / 100 == (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18
                require sub_1920427b[arg1].field_0
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.debtRegistry() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / sub_1920427b[arg1].field_0:
                    return (Mask(8, 240, ext_call.return_data[0]) >> 240 < 100 * (Mask(120, 120, ext_call.return_data[0]) >> 120 * ext_call.return_data[0]) - (sub_0525ed66[arg1] * ext_call.return_data[0]) / 10^18 / sub_1920427b[arg1].field_0)
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTermsContractParameters(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtRegistry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getIssuanceBlockTimestamp(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= block.timestamp
    if block.timestamp - ext_call.return_data[0] / 24 * 3600 < Mask(8, 248, ext_call.return_data[0]) >> 248:
        return (0 > sub_0525ed66[arg1])
    return (Mask(120, 120, ext_call.return_data[0]) >> 120 > sub_0525ed66[arg1])
}



}
