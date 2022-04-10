contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 1
    stor2 = 100
    require not msg.value
    stor0 = msg.sender
    return code.data[67 len 656]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 count;

function getCount() {
    return count
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_474b2d52(?) payable {
    require msg.value
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function Transfer(address arg1, address arg2, uint256 arg3) {
    require stor2
    call arg1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25050 wei
        args address(arg2), (stor2 * arg3 / stor2) - (stor1 * arg3 / stor2)
    if not ext_call.success:
        count = 0
    else:
        require stor2
        call arg1 with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args address(this.address), arg3 / stor2 * stor1
        if not ext_call.success:
            count = 0
        else:
            count = 1
}



}
