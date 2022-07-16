contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
  stop
}

function sub_0839deef(?) {
    require calldata.size - 4 >= 32
    stor3 = arg1
}

function sub_295bd7e6(?) {
    require calldata.size - 4 >= 32
    stor1 = arg1
}

function returnFunds() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6eab9af0(?) {
    if stor1 > stor3:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor3 > stor1:
            call stor4 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor1 = 0
    stor3 = 0
}



}
