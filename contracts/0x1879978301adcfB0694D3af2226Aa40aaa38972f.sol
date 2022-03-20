contract main {


// =======================  Init code  ======================


const _fallback = code.data[63 len 352]




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 stor1;

function _fallback() payable {
    if stor1 <= 0:
        if msg.value < 10^18:
            emit code.data[320 len 32]: 3
        else:
            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
            stor1 = block.timestamp
            emit code.data[320 len 32]: 2
    else:
        if block.timestamp - stor1 <= 24 * 3600:
            if msg.value < 10^18:
                emit code.data[320 len 32]: 3
            else:
                uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                stor1 = block.timestamp
                emit code.data[320 len 32]: 2
        else:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            if eth.balance(this.address) <= 0:
                emit code.data[320 len 32]: 5
            else:
                call address(stor0) with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                emit code.data[320 len 32]: 4
}



}
