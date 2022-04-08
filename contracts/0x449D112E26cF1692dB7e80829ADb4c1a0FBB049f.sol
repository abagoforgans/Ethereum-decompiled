contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = code.data[682 len 32]
    return code.data[53 len 629]
}



// =====================  Runtime code  =====================


uint256 result;

function getResult() {
    return result
}

function _fallback() payable {
    revert
}

function addToNumber(uint256 arg1) {
    result += arg1
    emit 0xae3addfc: arg1
    return result
}

function substractNumber(uint256 arg1) {
    result -= arg1
    emit 0x439edab7: arg1
    return result
}

function multiplyWithNumber(uint256 arg1) {
    result = arg1 * result
    emit 0xa895b6fc: arg1
    return result
}

function divideByNumber(uint256 arg1) {
    require arg1
    result = result / arg1
    emit 0xed0bc239: arg1
    return result
}



}
