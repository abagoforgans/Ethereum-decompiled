contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1537 len 20]
    stor2 = code.data[1557 len 32]
    stor3 = code.data[1589 len 32]
    stor4 = code.data[1621 len 32]
    return code.data[132 len 1393]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddr;
uint256 ratio;
uint256 minEth;
uint256 sub_bbe44917;

function tokenAddr() {
    return tokenAddr
}

function ratio() {
    return ratio
}

function owner() {
    return owner
}

function sub_bbe44917(?) {
    return sub_bbe44917
}

function minEth() {
    return minEth
}

function sub_4c93c1e2(?) {
    require owner == msg.sender
    sub_bbe44917 = arg1
}

function setRatio(uint256 arg1) {
    require owner == msg.sender
    ratio = arg1
}

function setMinEth(uint256 arg1) {
    require owner == msg.sender
    minEth = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdrawEther(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_f377e2f4(?) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    require ext_call.success
}

function withdrawToken(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddr)
    call tokenAddr.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    require ext_call.success
}

function _fallback() payable {
    require msg.value >= minEth
    require block.timestamp < sub_bbe44917
    if msg.value:
        require msg.value
        require ratio * msg.value / msg.value == ratio
    require ratio * msg.value > 0
    require ext_code.size(tokenAddr)
    call tokenAddr.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ratio * msg.value
    require ext_call.success
    emit LogBuy(msg.value, ratio * msg.value, msg.sender);
}



}
