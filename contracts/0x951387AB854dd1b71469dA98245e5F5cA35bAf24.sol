contract main {




// =====================  Runtime code  =====================


uint256 stor1;

function _fallback() payable {
  stop
}

function sub_14fc3d98(?) {
    require calldata.size - 4 >= 96
    require arg1 < 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg2 < 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg3 < 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg1 > 0xf000000000000000000000000000000000000000000000000000000000000001
    require arg2 > 0xf000000000000000000000000000000000000000000000000000000000000001
    require arg3 > 0xf000000000000000000000000000000000000000000000000000000000000001
    if stor1 == (arg3 * arg3 * arg3) + (arg2 * arg2 * arg2) + (arg1 * arg1 * arg1):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    else:
        return 0
}



}
