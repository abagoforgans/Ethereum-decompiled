contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)


uint256 sub_f8816045;

function sub_f8816045(?) {
    return sub_f8816045
}

function sub_3a1ba406(?) {
    require 0x880401ff266a0887f35369bcd04555451daea7f3 == msg.sender
    require arg1 <= sub_f8816045
    sub_f8816045 -= arg1
}

function sub_1b078f70(?) payable {
    call 0x880401ff266a0887f35369bcd04555451daea7f3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not msg.value:
        require sub_f8816045 >= sub_f8816045
    else:
        require 99 * msg.value / msg.value == 99
        require (99 * msg.value / 100) + sub_f8816045 >= sub_f8816045
        sub_f8816045 += 99 * msg.value / 100
    if not msg.value:
        if not msg.value:
            emit 0x5fdd118c: 0, 0, sub_f8816045, block.timestamp, msg.sender
        else:
            require msg.value / msg.value == 1
            emit 0x5fdd118c: 0, msg.value / 100, sub_f8816045, block.timestamp, msg.sender
    else:
        require 99 * msg.value / msg.value == 99
        if not msg.value:
            emit 0x5fdd118c: 99 * msg.value / 100, 0, sub_f8816045, block.timestamp, msg.sender
        else:
            require msg.value / msg.value == 1
            emit 0x5fdd118c: 99 * msg.value / 100, msg.value / 100, sub_f8816045, block.timestamp, msg.sender
}



}
