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
    return code.data[67 len 529]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function Transfer(address arg1, address arg2, uint256 arg3) {
    require stor2
    call arg1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25050 wei
        args address(arg2), (stor2 * arg3 / stor2) - (stor1 * arg3 / stor2)
    if not ext_call.success:
        return 0
    require stor2
    call arg1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25050 wei
        args address(arg2), arg3 / stor2 * stor1
    if not ext_call.success:
        return 0
    return 1
}



}
