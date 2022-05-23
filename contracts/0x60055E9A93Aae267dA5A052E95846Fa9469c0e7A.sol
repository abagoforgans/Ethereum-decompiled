contract main {




// =====================  Runtime code  =====================


const getCurrencySymbol = 'ETH'

const getCurrencyAddress = 0

const getCurrencyDenominated = 'USD'


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address makerDAOAddress;
uint256 manualPrice;

function owner() {
    return owner
}

function manualPrice() {
    return manualPrice
}

function makerDAO() {
    return makerDAOAddress
}

function manualOverride() {
    return bool(uint8(stor1.field_160))
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setManualPrice(uint256 arg1) {
    require msg.sender == owner
    emit LogSetManualPrice(manualPrice, arg1, block.timestamp);
    manualPrice = arg1
}

function changeMakerDAO(address arg1) {
    require msg.sender == owner
    emit LogChangeMakerDAO(address(arg1), makerDAOAddress, block.timestamp);
    makerDAOAddress = arg1
}

function setManualOverride(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
    emit LogSetManualOverride(arg1, block.timestamp);
}

function getPrice() {
    if uint8(stor1.field_160):
        return manualPrice
    require ext_code.size(makerDAOAddress)
    call makerDAOAddress.peek() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MakerDAO Oracle returning invalid value'
    return ext_call.return_data[0]
}



}
