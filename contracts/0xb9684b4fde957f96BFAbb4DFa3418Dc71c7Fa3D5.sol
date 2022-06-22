contract main {




// =====================  Runtime code  =====================


#
#  - EIP712_ORDER_TYPE()
#  - sub_884dad2e(?)
#  - EIP712_DOMAIN_TYPEHASH()
#
const FEE_RATE_BASE = 100000

const REBATE_RATE_BASE = 100

const DISCOUNT_RATE_BASE = 100

const SUPPORTED_ORDER_VERSION = 2


uint256 DOMAIN_SEPARATOR;
mapping of uint8 stor1;
mapping of uint8 stor2;
address owner;
address hotTokenAddress;
uint8 stor5; offset 248
uint256 discountConfig;
uint256 stor5; offset 3
address proxyAddress;
mapping of uint256 filled;
mapping of uint8 stor8;
mapping of uint8 stor94016462341529263992973300703505836447124515720866237249808556977844150528;

function proxyAddress() {
    return proxyAddress
}

function filled(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return filled[arg1]
}

function cancelled(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function relayerDelegates(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor1[arg1][arg2])
}

function DOMAIN_SEPARATOR() {
    return DOMAIN_SEPARATOR
}

function discountConfig() {
    return discountConfig
}

function owner() {
    return owner
}

function hotTokenAddress() {
    return hotTokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function exitIncentiveSystem() {
    stor2[msg.sender] = 1
    emit RelayerExit(msg.sender);
}

function joinIncentiveSystem() {
    stor2[msg.sender] = 0
    emit RelayerJoin(msg.sender);
}

function isParticipant(address arg1) {
    require calldata.size - 4 >= 32
    return not bool(stor2[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function revokeDelegate(address arg1) {
    require calldata.size - 4 >= 32
    stor1[msg.sender][address(arg1)] = 0
    emit RelayerRevokeDelegate(msg.sender, arg1);
}

function approveDelegate(address arg1) {
    require calldata.size - 4 >= 32
    stor1[msg.sender][address(arg1)] = 1
    emit RelayerApproveDelegate(msg.sender, arg1);
}

function changeDiscountConfig(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    discountConfig = arg1
}

function canMatchOrdersFrom(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 == msg.sender:
        return True
    return (bool(stor1[address(arg1)][msg.sender]) == 1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'INVALID_OWNER'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b6b3618e(?) {
    require calldata.size - 4 >= 256
    if arg1 != msg.sender:
        revert with 0, 'INVALID_TRADER', 0
    stor8[0][stor0][sha3(('map', 55789471410271211156783208843632763914663886127140597874453177569465674848731016607200685547283577733583427636616916910300096462249433704164511131780207640841954034494052963309907626109044922340402999005328864084424101092223726737379618645700097042810194508380323788305247294728230975830285896872294681048114, ('name', 'stor3536', 94016462341529263992973300703505836447124515720866237249808556977844150528)), address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, arg7, arg8)] = 1
    emit Cancel(sha3(0, DOMAIN_SEPARATOR, sha3(sha3(0x4f726465722861646472657373207472616465722c616464726573732072656c617965722c616464726573732062617365546f6b656e2c616464726573732071756f7465546f6b656e2c75696e743235362062617365546f6b656e416d6f756e742c75696e743235362071756f7465546f6b656e416d6f756e742c75696e7432, 0x353620676173546f6b656e416d6f756e742c62797465733332206461746100), address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, arg7, arg8)));
}

function getDiscountedRate(address arg1) {
    require calldata.size - 4 >= 32
    call hotTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.return_data[0]:
        return 100
    idx = 0
    s = 0
    while idx < uint8(stor5.field_248):
        if ext_call.return_data[0] / 10^18 >= Mask(32, 224, discountConfig * 2^(8 * (5 * idx) + 2)) >> 224:
            idx = idx + 1
            s = Mask(32, 224, discountConfig * 2^(8 * (5 * idx) + 2)) >> 224
            continue 
        if Mask(8, 248, discountConfig * 2^(8 * (5 * idx) + 6)) >> 248:
            if Mask(8, 248, discountConfig * 2^(8 * (5 * idx) + 6)) >> 248 > 100:
                revert with 0, 'DISCOUNT_ERROR'
            return (Mask(8, 248, discountConfig * 2^(8 * (5 * idx) + 6)) >> 248)
        if Mask(8, -(('type', 256, ('field', 3, ('stor', ('name', 'stor5', 5)))), 0) + 256, 1) << (('type', 256, ('field', 3, ('stor', ('name', 'stor5', 5)))), 0) - 256 > 100:
            revert with 0, 'DISCOUNT_ERROR'
        return (Mask(8, -(('type', 256, ('field', 3, ('stor', ('name', 'stor5', 5)))), 0) + 256, 1) << (('type', 256, ('field', 3, ('stor', ('name', 'stor5', 5)))), 0) - 256)
    if Mask(8, -(('type', 256, ('field', 3, ('stor', ('name', 'stor5', 5)))), 0) + 256, 1) << (('type', 256, ('field', 3, ('stor', ('name', 'stor5', 5)))), 0) - 256 > 100:
        revert with 0, 'DISCOUNT_ERROR'
    return (Mask(8, -(('type', 256, ('field', 3, ('stor', ('name', 'stor5', 5)))), 0) + 256, 1) << (('type', 256, ('field', 3, ('stor', ('name', 'stor5', 5)))), 0) - 256)
}



}
