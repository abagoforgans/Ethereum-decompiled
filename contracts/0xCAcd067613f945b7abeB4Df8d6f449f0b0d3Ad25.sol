contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[13888 len 20]
    stor1 = code.data[13920 len 20]
    return code.data[106 len 13770]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_c2d8b1ec(?) {
    require 0 < ('cd', 196).length
    require msg.sender == address(('cd', 196)[0])
    create contract with 0 wei
                    code: code.data[7399 len 6328], address(cd[4]), cd[36], cd[68], cd[100], cd[132], cd[164], Array(len=stor1, data=('cd', 196).length, call.data[cd[196] + 36 len 32 * ('cd', 196).length]), cd[228], cd[260], address(cd[292])
    require create.new_address
    require ext_code.size(stor0)
    call stor0.register(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), cd[324]
    require ext_call.success
}

function sub_75ea9f40(?) {
    require 0 < ('cd', 260).length
    require msg.sender == address(('cd', 260)[0])
    create contract with 0 wei
                    code: code.data[1164 len 6235], address(cd[4]), address(cd[36]), address(cd[68]), cd[100], cd[132], cd[164], cd[196], cd[228], Array(len=stor1, data=('cd', 260).length, call.data[cd[260] + 36 len 32 * ('cd', 260).length]), cd[292], cd[324], address(cd[356])
    require create.new_address
    require ext_code.size(stor0)
    call stor0.register(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), cd[388]
    require ext_call.success
}



}
