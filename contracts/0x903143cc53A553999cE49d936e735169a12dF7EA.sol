contract main {




// =====================  Runtime code  =====================


address stor0;
address owner;
uint256 stor2;
uint256 stor3;

function owner() {
    return owner
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    call stor0 with:
         gas 70000 wei
    require ext_call.success
}

function empty() {
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function deposit(uint256 arg1) payable {
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    call stor0 with:
       value arg1 wei
         gas 70000 wei
    require ext_call.success
    stor2 += arg1
    stor3 = block.number
    emit 0xe61a310d: arg1 + stor2, block.number
}

function topup() payable {
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    call stor0 with:
       value (block.number * 4 * stor2 / 100) - (stor3 * 4 * stor2 / 100) / 5900 wei
         gas 70000 wei
    require ext_call.success
    stor2 += (block.number * 4 * stor2 / 100) - (stor3 * 4 * stor2 / 100) / 5900
    stor3 = block.number
    emit 0xe61a310d: ((block.number * 4 * stor2 / 100) - (stor3 * 4 * stor2 / 100) / 5900) + stor2, block.number
}



}
