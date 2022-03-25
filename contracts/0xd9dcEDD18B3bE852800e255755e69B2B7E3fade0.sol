contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 410942 * 3600
    stor1 = 411782 * 3600
    return code.data[35 len 141]
}



// =====================  Runtime code  =====================


const getNow = block.timestamp


uint256 eventStart;
uint256 eventEnd;

function getEventStart() {
    return eventStart
}

function getEventEnd() {
    return eventEnd
}

function _fallback() payable {
    revert 
}

function getVotingStart() {
    return (eventStart + (168 * 24 * 3600))
}

function getTradingStart() {
    return (eventStart + (168 * 24 * 3600))
}



}
