contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 292]




// =====================  Runtime code  =====================


address owner;
uint256 stor0;

function owner() payable {
    return address(owner)
}

function Wallet() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(address(msg.sender), msg.value);
}

function withdraw(uint256 arg1) payable {
    require msg.sender == address(owner)
    call address(owner) with:
       value arg1 wei
         gas 0 wei
    require ext_call.success
    return 1
}



}
