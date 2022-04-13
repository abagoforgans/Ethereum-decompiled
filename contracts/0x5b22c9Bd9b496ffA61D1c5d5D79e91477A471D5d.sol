contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    require code.data[1706 len 20]
    stor0 = msg.sender
    stor1 = code.data[1706 len 20]
    stor3 = code.data[1758 len 32]
    if code.data[1726 len 32]:
        require code.data[1726 len 32]
        require code.data[1758 len 32] * code.data[1726 len 32] / code.data[1726 len 32] == code.data[1758 len 32]
    require code.data[1758 len 32] * code.data[1726 len 32] == (100 * code.data[1758 len 32] * code.data[1726 len 32] / 100) + (code.data[1758 len 32] * code.data[1726 len 32] % 100)
    stor2 = code.data[1726 len 32] + (code.data[1758 len 32] * code.data[1726 len 32] / 100)
    return code.data[323 len 1371]
}



// =====================  Runtime code  =====================


address owner;
address proxyAddress;
uint256 minimumValue;
uint256 fee;
uint256 total;

function proxyAddress() {
    return proxyAddress
}

function total() {
    return total
}

function minimumValue() {
    return minimumValue
}

function owner() {
    return owner
}

function fee() {
    return fee
}

function changeFee(uint256 arg1) {
    require owner == msg.sender
    fee = arg1
}

function sub_c3269673(?) {
    require owner == msg.sender
    minimumValue = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function changeProxy(address arg1) {
    require owner == msg.sender
    require arg1
    proxyAddress = arg1
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= total
    total -= arg2
    if arg1:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if msg.value:
        require msg.value
        require fee * msg.value / msg.value == fee
    require fee * msg.value == (100 * fee * msg.value / 100) + (fee * msg.value % 100)
    total = msg.value - (fee * msg.value / 100) + total
    call owner with:
       value fee * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if minimumValue < total:
        total = 0
        call proxyAddress with:
           value total wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
