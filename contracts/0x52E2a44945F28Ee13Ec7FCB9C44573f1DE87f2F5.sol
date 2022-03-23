contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = block.timestamp + code.data[979 len 32]
    stor0 = code.data[1011 len 32]
    stor1 = code.data[1043 len 32]
    return code.data[134 len 845]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
uint256 deadline;
mapping of uint256 stor3;

function getDeadline() payable {
    return deadline
}

function _fallback() payable {
  stop
}

function contribute() payable {
    if block.timestamp <= deadline:
        stor3[address(msg.sender)] += msg.value
        emit 0x370510fa: msg.sender, msg.value
}

function claim() payable {
    if block.timestamp > deadline:
        if eth.balance(this.address) >= stor0:
            call stor1 with:
               value eth.balance(this.address) wei
                 gas 0 wei
            emit 0xee8bd262 
}

function refund() payable {
    if block.timestamp > deadline:
        if eth.balance(this.address) < stor0:
            call msg.sender with:
               value stor3[address(msg.sender)] wei
                 gas 0 wei
            emit 0xa1060800: msg.sender
            stor3[address(msg.sender)] = 0
}



}
