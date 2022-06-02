contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of address stor4;
mapping of uint256 stor5;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    require msg.value + stor2 >= stor2
    stor2 += msg.value
    if stor3 > msg.value + stor2:
    require stor1
    idx = 0
    while idx < stor1:
        call stor4[idx] with:
           value stor5[idx] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = idx
        mem[32] = 5
        require stor5[idx] <= stor2
        stor2 -= stor5[idx]
        idx = idx + 1
        continue 
    selfdestruct(stor0)
}



}
