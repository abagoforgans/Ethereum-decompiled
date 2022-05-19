contract main {




// =====================  Runtime code  =====================


uint256 bet;
uint256 sub_efc58de6;
address stor2;

function bet() {
    return bet
}

function sub_efc58de6(?) {
    return sub_efc58de6
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor2
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function play(bytes32 arg1) payable {
    require msg.value == bet
    call stor2 with:
       value sub_efc58de6 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if bool(block.difficulty):
        if bool(block.difficulty) != 1:
            if 0 == arg1:
                call msg.sender with:
                   value 2 * msg.value - sub_efc58de6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if 'BLACK' == arg1:
                call msg.sender with:
                   value 2 * msg.value - sub_efc58de6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if bool(block.difficulty) != 1:
            if 'RED' == arg1:
                call msg.sender with:
                   value 2 * msg.value - sub_efc58de6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if 'BLACK' == arg1:
                call msg.sender with:
                   value 2 * msg.value - sub_efc58de6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
