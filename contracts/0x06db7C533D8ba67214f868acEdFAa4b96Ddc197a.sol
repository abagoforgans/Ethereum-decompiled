contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor4 = msg.sender
    stor1 = 7 * 10^14
    stor5 = 10^18
    stor3 = 0xd41d86e97a16b235bc507eecb61c95cafe9439d5
    stor2 = 2 * 10^6
    stor6 = 0
    stor0 = -3
    return code.data[269 len 1806]
}



// =====================  Runtime code  =====================


uint256 currentStage;
bool stor1;
uint256 stor1;
uint256 stor1; offset 1
uint256 priceInWei;
uint256 availableTokensOnCurrentStage;
address tokenRewardAddress;
address stor4;
uint256 stor5;
uint256 stor6;

function priceInWei() {
    return priceInWei
}

function currentStage() {
    return currentStage
}

function tokenReward() {
    return tokenRewardAddress
}

function availableTokensOnCurrentStage() {
    return availableTokensOnCurrentStage
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == stor4
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function launchSale() {
    require msg.sender == stor4
    require currentStage <= -1
    currentStage = 0
    bool(stor1.field_0) = 0
    uint255(stor1.field_1) = uint255(stor1.field_0)
    availableTokensOnCurrentStage = 2100000
    emit SaleStageUp(currentStage, priceInWei);
}

function _fallback() payable {
    require msg.value >= 10^15
    require priceInWei
    require msg.value * stor5 / priceInWei <= availableTokensOnCurrentStage * stor5
    require currentStage <= 21
    stor6 += msg.value
    require stor5
    availableTokensOnCurrentStage = availableTokensOnCurrentStage + -(msg.value * stor5 / priceInWei / stor5) - 1
    if stor6 >= 21 * 10^18:
        if currentStage == -3:
            currentStage = -2
            priceInWei = 8 * 10^14
            emit SaleStageUp(currentStage, priceInWei);
        if stor6 >= 925 * 10^14 * 3600:
            if currentStage == -2:
                currentStage = -1
                priceInWei = 10^15
                emit SaleStageUp(currentStage, priceInWei);
    if availableTokensOnCurrentStage < 1000:
        if currentStage >= 0:
            currentStage++
            bool(stor1.field_0) = 0
            uint255(stor1.field_1) = uint255(stor1.field_0)
            availableTokensOnCurrentStage = 10^6
            emit SaleStageUp(currentStage, priceInWei);
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * stor5 / priceInWei
    require ext_call.success
}



}
