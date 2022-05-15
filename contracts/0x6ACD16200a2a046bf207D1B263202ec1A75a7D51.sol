contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address contractOwner;
address lastAddress;
mapping of uint256 totalHeartsByDappId;

function totals(uint256 arg1) {
    return totalHeartsByDappId[arg1]
}

function getTotalHeartsByDappId(uint256 arg1) {
    return totalHeartsByDappId[arg1]
}

function lastAddress() {
    return lastAddress
}

function contractOwner() {
    return contractOwner
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == contractOwner
    call contractOwner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function update(uint256 arg1) payable {
    require msg.value > 19 * 10^14
    totalHeartsByDappId[arg1] += msg.value
    call lastAddress with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lastAddress = msg.sender
}



}
