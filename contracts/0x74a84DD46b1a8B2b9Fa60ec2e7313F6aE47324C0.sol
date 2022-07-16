contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;

function _fallback() payable {
    revert
}

function sendTransfer(address arg1, uint256 arg2) {
    require msg.sender == stor0
    require arg1 != stor0
    if eth.balance(this.address) >= arg2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getEth(uint256 arg1) {
    require msg.sender == stor0
    if arg1 <= 0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if eth.balance(this.address) >= arg1:
            call stor0 with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
