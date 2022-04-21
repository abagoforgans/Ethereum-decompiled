contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = 1000
    stor4 = 18
    require not msg.value
    stor0 = code.data[1993 len 20]
    stor3 = code.data[2013 len 32]
    stor2 = msg.sender
    return code.data[216 len 1765]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == stor2
    require arg1
    stor2 = arg1
}

function changeAmount(uint256 arg1) {
    require msg.sender == stor2
    require stor2 == msg.sender
    stor1 = arg1
}

function sub_86dbcb67(?) {
    require stor2 == msg.sender
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor2, ext_call.return_data[0]
    require ext_call.success
}

function sub_1e133568(?) payable {
    require msg.value > 0
    stor1 = msg.value * stor3
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if stor1 < ext_call.return_data[0]:
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, stor1
        require ext_call.success
}



}
