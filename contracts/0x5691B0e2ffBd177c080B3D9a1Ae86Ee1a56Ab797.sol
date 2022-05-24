contract main {




// =====================  Runtime code  =====================


mapping of uint256 sub_1ee4b5d6;
address stor1;
address sub_65bfd612Address;

function sub_1ee4b5d6(?) {
    return sub_1ee4b5d6[arg1]
}

function sub_65bfd612(?) {
    return sub_65bfd612Address
}

function die() {
    if stor1 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function deposit() payable {
    sub_1ee4b5d6[msg.sender] = msg.value
}

function refund() {
    sub_1ee4b5d6[msg.sender] = 0
    if sub_1ee4b5d6[msg.sender] <= eth.balance(this.address):
        call msg.sender with:
           value sub_1ee4b5d6[msg.sender] wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6247f206(?) {
    require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
    call 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.getCurrentRoundInfo() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    if ext_call.return_data[236 len 20] == msg.sender:
        call msg.sender with:
           value 40000 * block.gasprice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
        call 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.0xc7e284b8 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if arg2 <= sub_1ee4b5d6[msg.sender]:
                sub_1ee4b5d6[msg.sender] -= arg2
                call msg.sender with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
            else:
                sub_1ee4b5d6[msg.sender] = 0
                call msg.sender with:
                   value sub_1ee4b5d6[msg.sender] wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
