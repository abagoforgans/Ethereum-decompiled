contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;

function _fallback() payable {
    revert
}

function buy() payable {
    require msg.sender == stor2
    require ext_code.size(stor1)
    call stor1.buy(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function exit() {
    require msg.sender == stor2
    require ext_code.size(stor1)
    call stor1.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_85a44229(?) {
    require ext_code.size(stor1)
    call stor1.myDividends(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 + arg2 + ext_call.return_data[0] > arg1
    return 1
}

function run() payable {
    require msg.sender == stor2
    create contract with callvalue wei
                    code: code.data[1613 len 2006]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
