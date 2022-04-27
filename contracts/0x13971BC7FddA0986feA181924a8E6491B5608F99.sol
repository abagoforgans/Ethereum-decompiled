contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1226]




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 stor1;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function done(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function get(address arg1) {
    require ext_code.size(0x823e58949d8f755dc347a1a04b2615690d1607c)
    call 0x0823e58949d8f755dc347a1a04b2615690d1607c.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    balanceOf[address(arg1)] = ext_call.return_data[0]
}

function drop(address arg1) {
    require not stor1[address(arg1)]
    require ext_code.size(0x2c3243ef62d1ce837e74dae0a4d2b622f48906bf)
    call 0x2c3243ef62d1ce837e74dae0a4d2b622f48906bf.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), balanceOf[address(arg1)]
    require ext_call.success
    stor1[address(arg1)] = 1
}



}
