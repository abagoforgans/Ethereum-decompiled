contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = block.timestamp + 300
    stor2 = 10^16
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[53 len 199]
}



// =====================  Runtime code  =====================


address stor0;
uint256 expiration;
uint256 value;

function value() payable {
    return value
}

function expiration() payable {
    return expiration
}

function _fallback() payable {
    if stor0 == msg.sender:
        if block.timestamp > expiration:
            emit Deposit(address(msg.sender), value);
            expiration = block.timestamp + 300
}



}
