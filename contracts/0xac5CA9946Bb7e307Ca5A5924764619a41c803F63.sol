contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    require not stor7
    require code.data[1772 len 32] >= block.timestamp
    require code.data[1772 len 32] < code.data[1804 len 32]
    stor5 = code.data[1772 len 32]
    stor6 = code.data[1804 len 32]
    require code.data[1644 len 32] > 0
    require code.data[1644 len 32] > code.data[1708 len 32]
    stor1 = code.data[1644 len 32]
    require code.data[1676 len 32] < code.data[1708 len 32]
    require code.data[1708 len 32] > 0
    stor3 = code.data[1676 len 32]
    stor4 = code.data[1708 len 32]
    require code.data[1740 len 32] > 0
    stor2 = code.data[1740 len 32]
    stor7 = block.timestamp
    emit InitializedTier(code.data[1644 len 32], code.data[1676 len 32], stor4, code.data[1772 len 32], code.data[1804 len 32]);
    return code.data[399 len 1245]
}



// =====================  Runtime code  =====================


const IS_TIER_CONTRACT_MAGIC_NUMBER = 4919


address controllerAddress;
uint256 cap;
uint256 exchangeRate;
uint256 minInvestorCap;
uint256 maxInvestorCap;
uint256 startTime;
uint256 endTime;
uint256 initializedTime;
uint256 finalizedTime;
uint256 totalInvestedWei;

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function exchangeRate() {
    return exchangeRate
}

function maxInvestorCap() {
    return maxInvestorCap
}

function startTime() {
    return startTime
}

function totalInvestedWei() {
    return totalInvestedWei
}

function minInvestorCap() {
    return minInvestorCap
}

function controller() {
    return controllerAddress
}

function initializedTime() {
    return initializedTime
}

function finalizedTime() {
    return finalizedTime
}

function _fallback() {
    revert
}

function isCapReached() {
    return (totalInvestedWei == cap)
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function finalize() {
    require controllerAddress == msg.sender
    require not finalizedTime
    if cap != totalInvestedWei:
        if block.timestamp <= endTime:
            require controllerAddress == msg.sender
    finalizedTime = block.timestamp
}

function increaseInvestedWei(uint256 arg1) {
    require controllerAddress == msg.sender
    require not finalizedTime
    require arg1 + totalInvestedWei >= totalInvestedWei
    totalInvestedWei += arg1
    emit IncreaseInvestedWeiAmount(arg1, arg1 + totalInvestedWei);
}



}
