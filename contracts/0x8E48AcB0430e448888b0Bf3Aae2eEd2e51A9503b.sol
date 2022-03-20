contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 197]
}



// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function enter() payable {
    if msg.value < 10^16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}

function _fallback() payable {
    if msg.value < 10^16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}



}
