contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
uint256 stor1;
uint256 stor2;

function stopGame() {
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'Sender not authorized.'
    uint8(stor0.field_0) = 0
    call address(stor0.field_8) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not uint8(stor0.field_0):
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if 1000 * msg.value < 9:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            stor1++
            stor2 = eth.balance(this.address)
            if not stor1 + 1 % 999:
                call msg.sender with:
                   value 8 * stor2 / 10 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(stor0.field_8) with:
                   value 11 * stor2 / 100 wei
                     gas 2300 * is_zero(value) wei
            else:
                if not stor1 % 99:
                    call msg.sender with:
                       value 25 * 10^12 * 3600 wei
                         gas 0 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(stor0.field_8) with:
                       value 3 * 10^16 wei
                         gas 0 wei
                else:
                    if not stor1 % 9:
                        call msg.sender with:
                           value 3 * 10^16 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(stor0.field_8) with:
                           value 10^16 wei
                             gas 0 wei
}



}
