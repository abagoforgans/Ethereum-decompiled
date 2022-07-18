contract main {




// =====================  Runtime code  =====================


mapping of struct acc;
address stor1;
uint256 minSum;

function Acc(address arg1) {
    return acc[arg1].field_0, acc[arg1].field_256
}

function MinSum() {
    return minSum
}

function _fallback() payable {
    acc[msg.sender].field_256 += msg.value
    if 0 > block.timestamp:
        acc[msg.sender].field_0 = 0
    else:
        acc[msg.sender].field_0 = block.timestamp
    require ext_code.size(stor1)
    call stor1.0x4c2f04a4 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), msg.value, 96, 3, 'Put'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function Put(uint256 arg1) payable {
    acc[msg.sender].field_256 += msg.value
    if arg1 > block.timestamp:
        acc[msg.sender].field_0 = arg1
    else:
        acc[msg.sender].field_0 = block.timestamp
    require ext_code.size(stor1)
    call stor1.0x4c2f04a4 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), msg.value, 96, 3, 'Put'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function Collect(uint256 arg1) payable {
    if acc[msg.sender].field_256 >= minSum:
        if acc[msg.sender].field_256 >= arg1:
            if block.timestamp > acc[msg.sender].field_0:
                call msg.sender with:
                   value arg1 wei
                     gas gas_remaining wei
                if ext_call.success:
                    acc[msg.sender].field_256 -= arg1
                    require ext_code.size(stor1)
                    call stor1.0x4c2f04a4 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), arg1, 96, 7, 'Collect'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
