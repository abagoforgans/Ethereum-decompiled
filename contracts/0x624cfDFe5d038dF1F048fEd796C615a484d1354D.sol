contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[64 len 482]
}



// =====================  Runtime code  =====================


address stor0;
uint256 expiration;

function expiration() payable {
    return expiration
}

function redeem() payable {
    if stor0 != msg.sender:
    if block.timestamp <= expiration:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function lock(uint256 arg1) payable {
    if stor0 != msg.sender:
        return 0
    if arg1 <= block.timestamp:
        return 0
    if expiration:
        return 0
    expiration = arg1
    return 1
}



}
