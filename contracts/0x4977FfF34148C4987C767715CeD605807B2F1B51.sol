contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 525]




// =====================  Runtime code  =====================


const getHours = (block.timestamp / 60 / 60 % 24)


function _fallback() payable {
    if not calldata.size:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.sender == 0x9e0b3f6aad969bed5ccd1c5dac80df5d11b49e45
        emit Deposit(msg.value, calldata.size, msg.sender, msg.sender);
    else:
        if block.timestamp / 60 / 60 % 24 < 3:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.sender == 0x9e0b3f6aad969bed5ccd1c5dac80df5d11b49e45
            emit Deposit(msg.value, calldata.size, msg.sender, msg.sender);
        else:
            if block.timestamp / 60 / 60 % 24 < 5:
                call 0x9e0b3f6aad969bed5ccd1c5dac80df5d11b49e45 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Deposit(msg.value, calldata.size, msg.sender, 0x9e0b3f6aad969bed5ccd1c5dac80df5d11b49e45);
            else:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require msg.sender == 0x9e0b3f6aad969bed5ccd1c5dac80df5d11b49e45
                emit Deposit(msg.value, calldata.size, msg.sender, msg.sender);
}



}
