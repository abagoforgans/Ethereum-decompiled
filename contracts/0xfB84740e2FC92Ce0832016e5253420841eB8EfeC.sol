contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[71 len 642]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
}

function donate(address arg1) payable {
    balanceOf[address(arg1)] += msg.value
}

function withdraw() {
    if balanceOf[address(msg.sender)] > 0:
        balanceOf[address(msg.sender)] = 0
        call msg.sender with:
           value balanceOf[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function recover(address arg1) {
    require owner == msg.sender
    if balanceOf[address(arg1)] > 0:
        balanceOf[address(arg1)] = 0
        call msg.sender with:
           value balanceOf[address(arg1)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
