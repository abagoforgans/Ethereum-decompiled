contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    require code.data[686 len 32] > 0
    require code.data[718 len 32] > 0
    require code.data[750 len 32] > 0
    require code.data[782 len 32] > 0
    stor0 = code.data[686 len 32]
    stor1 = code.data[718 len 32]
    stor2 = code.data[750 len 32]
    stor3 = code.data[782 len 32]
    return code.data[152 len 534]
}



// =====================  Runtime code  =====================


const isPricingStrategy = 1


uint256 newRateTime;
uint256 rate1;
uint256 rate2;
uint256 minimumWeiAmount;

function minimumWeiAmount() {
    return minimumWeiAmount
}

function newRateTime() {
    return newRateTime
}

function rate1() {
    return rate1
}

function rate2() {
    return rate2
}

function _fallback() payable {
    revert
}

function calculateTokenAmount(uint256 arg1) {
    if arg1 < minimumWeiAmount:
        if not arg1:
            return 0
        if arg1:
            if not 0 / arg1:
                return 0
    else:
        if block.timestamp >= newRateTime:
            if not arg1:
                return (rate2 * arg1)
            if arg1:
                if rate2 * arg1 / arg1 == rate2:
                    return (rate2 * arg1)
        else:
            if not arg1:
                return (rate1 * arg1)
            if arg1:
                if rate1 * arg1 / arg1 == rate1:
                    return (rate1 * arg1)
    revert
}



}
