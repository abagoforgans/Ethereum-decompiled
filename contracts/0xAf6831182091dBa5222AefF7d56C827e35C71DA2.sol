contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 418142 * 3600
    stor1 = 418982 * 3600
    require not msg.value
    return code.data[39 len 251]
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
