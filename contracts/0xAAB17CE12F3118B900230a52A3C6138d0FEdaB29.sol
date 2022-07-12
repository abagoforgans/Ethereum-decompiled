contract main {




// =====================  Runtime code  =====================


const sub_26d5002b(?) = ext_call.return_data[0]


address stor0;
mapping of uint256 sub_10086338;

function sub_10086338(?) {
    require calldata.size - 4 >= 32
    return sub_10086338[arg1]
}

function _fallback() payable {
    revert
}

function sub_7182549a(?) {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function play(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
    staticcall 0x3cb0021808442ad5efb61197966aef72a1def96.balanceOf(address arg1) with:
            gas gas_remaining wei
           args 0x5fc95c91ef6c3e2d8970cc70c6a16ad550afa7f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        call arg3 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if ext_call.return_data[0] <= arg2:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            call arg3 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
