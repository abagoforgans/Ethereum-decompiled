contract main {




// =====================  Runtime code  =====================


mapping of address sub_ce0234d8;
mapping of uint256 sub_3ba34a6f;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;

function sub_3ba34a6f(?) {
    return sub_3ba34a6f[arg1]
}

function sub_ce0234d8(?) {
    return sub_ce0234d8[arg1]
}

function sub_1e1565b3(?) payable {
    if 0 >= msg.value:
        revert with 0, 'must supply eth'
    require (msg.value / 2) + stor2 >= stor2
    stor2 += msg.value / 2
    require (msg.value / 2) + stor3 >= stor3
    stor3 += msg.value / 2
    return 1
}

function sub_efc6419f(?) {
    require 0x8af29a1303e122df47bee2e82906b98c3821c4d3 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.value <= 0:
        revert with 0, 'must supply eth'
    call stor4 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor5 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function foundationDeposit() payable {
    if 0 >= msg.value:
        revert with 0, 'must supply eth'
    call stor4 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor5 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdrawProfits() {
    require sub_3ba34a6f[msg.sender] <= 2
    if sub_3ba34a6f[msg.sender] != 1:
        require sub_3ba34a6f[msg.sender] <= 2
        if sub_3ba34a6f[msg.sender] == 2:
            require stor3 >= 0
            stor3 = 0
            if stor3:
                call msg.sender with:
                   value stor3 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require sub_3ba34a6f[msg.sender] <= 2
                emit LogWithdraw(sub_3ba34a6f[msg.sender], stor3, msg.sender);
    else:
        require stor2 >= 0
        stor2 = 0
        require sub_3ba34a6f[msg.sender] <= 2
        if sub_3ba34a6f[msg.sender] != 2:
            if stor2:
                call msg.sender with:
                   value stor2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require sub_3ba34a6f[msg.sender] <= 2
                emit LogWithdraw(sub_3ba34a6f[msg.sender], stor2, msg.sender);
        else:
            require stor3 + stor2 >= stor2
            stor3 = 0
            if stor3 + stor2:
                call msg.sender with:
                   value stor3 + stor2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require sub_3ba34a6f[msg.sender] <= 2
                emit LogWithdraw(sub_3ba34a6f[msg.sender], stor3 + stor2, msg.sender);
}



}
