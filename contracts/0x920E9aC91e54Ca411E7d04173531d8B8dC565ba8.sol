contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = code.data[1083 len 32]
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[69 len 1014]
}



// =====================  Runtime code  =====================


address owner;
address nexiumAddress;
array of address paid;
mapping of uint256 paid;

function nexium() {
    return nexiumAddress
}

function owner() {
    return owner
}

function paid(address arg1) {
    return paid[arg1]
}

function paidAddress(uint256 arg1) {
    require arg1 < paid.length
    return address(paid[arg1])
}

function _fallback() {
    revert 
}

function withdrawNexiums(address arg1) {
    require owner == msg.sender
    require ext_code.size(nexiumAddress)
    call nexiumAddress.balanceOf(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(nexiumAddress)
    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
}

function payDiff(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 > paid[address(arg1)]
    if not paid[address(arg1)]:
        paid.length++
        if not paid.length <= paid.length + 1:
            idx = paid.length + 1
            while paid.length > idx:
                uint256(paid[idx]) = 0
                idx = idx + 1
                continue 
        require paid.length < paid.length
        uint256(paid[paid.length]) = msg.sender or Mask(96, 160, uint256(paid[paid.length]))
    require ext_code.size(nexiumAddress)
    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2 - paid[address(arg1)]
    require ext_call.success
    require ext_call.return_data[0]
    paid[address(arg1)] = arg2
    emit Paid(arg1);
}



}
