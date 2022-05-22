contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 totalPaid;
uint256 stor4;

function totalPaid() {
    return totalPaid
}

function _fallback() payable {
    revert
}

function payJosh() {
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, (28935185185185 * block.timestamp) - (28935185185185 * stor4) - totalPaid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalPaid = (28935185185185 * block.timestamp) - (28935185185185 * stor4)
}

function withdraw() {
    if stor0 != msg.sender:
        require msg.sender == stor1
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, (28935185185185 * block.timestamp) - (28935185185185 * stor4) - totalPaid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalPaid = (28935185185185 * block.timestamp) - (28935185185185 * stor4)
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
