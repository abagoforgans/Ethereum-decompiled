contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const firstContractAddress = 0x6acd16200a2a046bf207d1b263202ec1a75a7d51


address stor0;
address contractOwner;
address lastAddress;
uint256 stor2;
mapping of uint256 totals;

function totals(uint256 arg1) {
    return totals[arg1]
}

function lastAddress() {
    return address(lastAddress)
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
    require msg.value >= 2 * 10^15
    require arg1 > 0
    require msg.value + totals[arg1] >= totals[arg1]
    totals[arg1] += msg.value
    call address(lastAddress) with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if 1 == bool(ext_call.success):
        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
}

function getTotalHeartsByDappId(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0x72d475db with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + totals[arg1] >= totals[arg1]
    return (ext_call.return_data[0] + totals[arg1])
}



}
