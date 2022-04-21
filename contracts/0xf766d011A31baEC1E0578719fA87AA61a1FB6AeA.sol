contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[5858 len 32]
    stor3 = 1
    stor1 = 0
    return code.data[223 len 5635]
}



// =====================  Runtime code  =====================


address owner;
address sub_623af43eAddress;
uint256 minDuration;
uint8 stor3;
mapping of struct sub_3d6597ce;

function MinDuration() {
    return minDuration
}

function sub_3d6597ce(?) {
    return sub_3d6597ce[stor1].field_0
}

function sub_623af43e(?) {
    return sub_623af43eAddress
}

function isApproved(address arg1) {
    return bool(sub_3d6597ce[address(arg1)].field_1536)
}

function isLocked() {
    return bool(stor3)
}

function Owner() {
    return owner
}

function sub_b64bc975(?) {
    return sub_3d6597ce[arg1].field_0, 
           sub_3d6597ce[arg1].field_256,
           sub_3d6597ce[arg1].field_512,
           sub_3d6597ce[arg1].field_768,
           sub_3d6597ce[arg1].field_1024,
           sub_3d6597ce[arg1].field_1280,
           bool(sub_3d6597ce[arg1].field_1536)
}

function sub_c18b5a84(?) {
    return bool(stor3)
}

function sub_c9198220(?) {
    return sub_3d6597ce[stor1].field_256
}

function _fallback() payable {
    revert
}

function Lock() {
    if sub_623af43eAddress != msg.sender:
        require owner == msg.sender
    stor3 = 1
    emit 0x48abc732 
}

function Approve(address arg1) {
    require msg.sender == owner
    sub_3d6597ce[address(arg1)].field_1536 = 1
    sub_623af43eAddress = arg1
    emit 0x4160605f: arg1
}

function sub_f7e9fe69(?) {
    require msg.sender == owner
    require not sub_623af43eAddress
    require sub_3d6597ce[address(arg1)].field_1536
    sub_623af43eAddress = arg1
    emit 0x6da8ddb6: arg1
}

function Unlock() {
    if sub_623af43eAddress == msg.sender:
        sub_3d6597ce[stor1].field_1280 = block.timestamp
    else:
        require owner == msg.sender
        if sub_623af43eAddress == msg.sender:
            sub_3d6597ce[stor1].field_1280 = block.timestamp
    stor3 = 0
    emit 0xa751db60 
}

function sub_72557e8f(?) {
    require msg.sender == sub_623af43eAddress
    require sub_3d6597ce[stor1].field_512 > 0
    sub_3d6597ce[stor1].field_768 = 0
    sub_3d6597ce[stor1].field_1024 = 0
    sub_3d6597ce[stor1].field_512 = 0
    if not sub_3d6597ce[stor1].field_1536:
        call sub_623af43eAddress with:
           value sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512 + sub_3d6597ce[stor1].field_768 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512 + sub_3d6597ce[stor1].field_768
    else:
        if sub_3d6597ce[stor1].field_1280:
            call sub_623af43eAddress with:
               value sub_3d6597ce[stor1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024
        else:
            if block.timestamp < sub_3d6597ce[stor1].field_0:
                if sub_3d6597ce[stor1].field_768 <= 0:
                    call sub_623af43eAddress with:
                       value sub_3d6597ce[stor1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024
                else:
                    call sub_623af43eAddress with:
                       value sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512
            else:
                if block.timestamp <= sub_3d6597ce[stor1].field_0:
                    call sub_623af43eAddress with:
                       value sub_3d6597ce[stor1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024
                else:
                    if sub_3d6597ce[stor1].field_768 <= 0:
                        call sub_623af43eAddress with:
                           value sub_3d6597ce[stor1].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024
                    else:
                        call sub_623af43eAddress with:
                           value sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512
    emit 0xb15f14da: sub_623af43eAddress
}

function sub_9654ae8e(?) {
    if sub_623af43eAddress != msg.sender:
        require owner == msg.sender
    sub_623af43eAddress = 0
    require sub_3d6597ce[stor1].field_512 > 0
    sub_3d6597ce[stor1].field_768 = 0
    sub_3d6597ce[stor1].field_1024 = 0
    sub_3d6597ce[stor1].field_512 = 0
    if not sub_3d6597ce[stor1].field_1536:
        call sub_623af43eAddress with:
           value sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512 + sub_3d6597ce[stor1].field_768 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512 + sub_3d6597ce[stor1].field_768
    else:
        if sub_3d6597ce[stor1].field_1280:
            call sub_623af43eAddress with:
               value sub_3d6597ce[stor1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024
        else:
            if block.timestamp < sub_3d6597ce[stor1].field_0:
                if sub_3d6597ce[stor1].field_768 <= 0:
                    call sub_623af43eAddress with:
                       value sub_3d6597ce[stor1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024
                else:
                    call sub_623af43eAddress with:
                       value sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512
            else:
                if block.timestamp <= sub_3d6597ce[stor1].field_0:
                    call sub_623af43eAddress with:
                       value sub_3d6597ce[stor1].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024
                else:
                    if sub_3d6597ce[stor1].field_768 <= 0:
                        call sub_623af43eAddress with:
                           value sub_3d6597ce[stor1].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024
                    else:
                        call sub_623af43eAddress with:
                           value sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x4bf75763: sub_623af43eAddress, sub_3d6597ce[stor1].field_512, sub_3d6597ce[stor1].field_768, sub_3d6597ce[stor1].field_1024, sub_3d6597ce[stor1].field_1024 + sub_3d6597ce[stor1].field_512
    emit 0xad6c5386: sub_623af43eAddress
}

function sub_6ff89fd1(?) {
    require msg.sender == owner
    require sub_3d6597ce[address(arg1)].field_512 > 0
    sub_3d6597ce[address(arg1)].field_768 = 0
    sub_3d6597ce[address(arg1)].field_1024 = 0
    sub_3d6597ce[address(arg1)].field_512 = 0
    if not sub_3d6597ce[address(arg1)].field_1536:
        call arg1 with:
           value sub_3d6597ce[address(arg1)].field_1024 + sub_3d6597ce[address(arg1)].field_512 + sub_3d6597ce[address(arg1)].field_768 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x4bf75763: address(arg1), sub_3d6597ce[address(arg1)].field_512, sub_3d6597ce[address(arg1)].field_768, sub_3d6597ce[address(arg1)].field_1024, sub_3d6597ce[address(arg1)].field_1024 + sub_3d6597ce[address(arg1)].field_512 + sub_3d6597ce[address(arg1)].field_768
    else:
        if sub_3d6597ce[address(arg1)].field_1280:
            call arg1 with:
               value sub_3d6597ce[address(arg1)].field_1024 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x4bf75763: address(arg1), sub_3d6597ce[address(arg1)].field_512, sub_3d6597ce[address(arg1)].field_768, sub_3d6597ce[address(arg1)].field_1024, sub_3d6597ce[address(arg1)].field_1024
        else:
            if block.timestamp < sub_3d6597ce[address(arg1)].field_0:
                if sub_3d6597ce[address(arg1)].field_768 <= 0:
                    call arg1 with:
                       value sub_3d6597ce[address(arg1)].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x4bf75763: address(arg1), sub_3d6597ce[address(arg1)].field_512, sub_3d6597ce[address(arg1)].field_768, sub_3d6597ce[address(arg1)].field_1024, sub_3d6597ce[address(arg1)].field_1024
                else:
                    call arg1 with:
                       value sub_3d6597ce[address(arg1)].field_1024 + sub_3d6597ce[address(arg1)].field_512 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x4bf75763: address(arg1), sub_3d6597ce[address(arg1)].field_512, sub_3d6597ce[address(arg1)].field_768, sub_3d6597ce[address(arg1)].field_1024, sub_3d6597ce[address(arg1)].field_1024 + sub_3d6597ce[address(arg1)].field_512
            else:
                if block.timestamp <= sub_3d6597ce[address(arg1)].field_0:
                    call arg1 with:
                       value sub_3d6597ce[address(arg1)].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x4bf75763: address(arg1), sub_3d6597ce[address(arg1)].field_512, sub_3d6597ce[address(arg1)].field_768, sub_3d6597ce[address(arg1)].field_1024, sub_3d6597ce[address(arg1)].field_1024
                else:
                    if sub_3d6597ce[address(arg1)].field_768 <= 0:
                        call arg1 with:
                           value sub_3d6597ce[address(arg1)].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x4bf75763: address(arg1), sub_3d6597ce[address(arg1)].field_512, sub_3d6597ce[address(arg1)].field_768, sub_3d6597ce[address(arg1)].field_1024, sub_3d6597ce[address(arg1)].field_1024
                    else:
                        call arg1 with:
                           value sub_3d6597ce[address(arg1)].field_1024 + sub_3d6597ce[address(arg1)].field_512 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x4bf75763: address(arg1), sub_3d6597ce[address(arg1)].field_512, sub_3d6597ce[address(arg1)].field_768, sub_3d6597ce[address(arg1)].field_1024, sub_3d6597ce[address(arg1)].field_1024 + sub_3d6597ce[address(arg1)].field_512
    emit 0x14a0fb6d: arg1
}

function sub_78730de9(?) payable {
    require arg1 < arg2
    require arg4 > 0
    require arg4 + arg3 < msg.value
    if sub_3d6597ce[address(msg.sender)].field_512 > 0:
        require sub_3d6597ce[address(msg.sender)].field_512 > 0
        sub_3d6597ce[address(msg.sender)].field_768 = 0
        sub_3d6597ce[address(msg.sender)].field_1024 = 0
        sub_3d6597ce[address(msg.sender)].field_512 = 0
        if not sub_3d6597ce[address(msg.sender)].field_1536:
            call msg.sender with:
               value sub_3d6597ce[address(msg.sender)].field_1024 + sub_3d6597ce[address(msg.sender)].field_512 + sub_3d6597ce[address(msg.sender)].field_768 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x4bf75763: address(msg.sender), sub_3d6597ce[address(msg.sender)].field_512, sub_3d6597ce[address(msg.sender)].field_768, sub_3d6597ce[address(msg.sender)].field_1024, sub_3d6597ce[address(msg.sender)].field_1024 + sub_3d6597ce[address(msg.sender)].field_512 + sub_3d6597ce[address(msg.sender)].field_768
        else:
            if sub_3d6597ce[address(msg.sender)].field_1280:
                call msg.sender with:
                   value sub_3d6597ce[address(msg.sender)].field_1024 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x4bf75763: address(msg.sender), sub_3d6597ce[address(msg.sender)].field_512, sub_3d6597ce[address(msg.sender)].field_768, sub_3d6597ce[address(msg.sender)].field_1024, sub_3d6597ce[address(msg.sender)].field_1024
            else:
                if block.timestamp < sub_3d6597ce[address(msg.sender)].field_0:
                    if sub_3d6597ce[address(msg.sender)].field_768 <= 0:
                        call msg.sender with:
                           value sub_3d6597ce[address(msg.sender)].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x4bf75763: address(msg.sender), sub_3d6597ce[address(msg.sender)].field_512, sub_3d6597ce[address(msg.sender)].field_768, sub_3d6597ce[address(msg.sender)].field_1024, sub_3d6597ce[address(msg.sender)].field_1024
                    else:
                        call msg.sender with:
                           value sub_3d6597ce[address(msg.sender)].field_1024 + sub_3d6597ce[address(msg.sender)].field_512 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x4bf75763: address(msg.sender), sub_3d6597ce[address(msg.sender)].field_512, sub_3d6597ce[address(msg.sender)].field_768, sub_3d6597ce[address(msg.sender)].field_1024, sub_3d6597ce[address(msg.sender)].field_1024 + sub_3d6597ce[address(msg.sender)].field_512
                else:
                    if block.timestamp <= sub_3d6597ce[address(msg.sender)].field_0:
                        call msg.sender with:
                           value sub_3d6597ce[address(msg.sender)].field_1024 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x4bf75763: address(msg.sender), sub_3d6597ce[address(msg.sender)].field_512, sub_3d6597ce[address(msg.sender)].field_768, sub_3d6597ce[address(msg.sender)].field_1024, sub_3d6597ce[address(msg.sender)].field_1024
                    else:
                        if sub_3d6597ce[address(msg.sender)].field_768 <= 0:
                            call msg.sender with:
                               value sub_3d6597ce[address(msg.sender)].field_1024 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0x4bf75763: address(msg.sender), sub_3d6597ce[address(msg.sender)].field_512, sub_3d6597ce[address(msg.sender)].field_768, sub_3d6597ce[address(msg.sender)].field_1024, sub_3d6597ce[address(msg.sender)].field_1024
                        else:
                            call msg.sender with:
                               value sub_3d6597ce[address(msg.sender)].field_1024 + sub_3d6597ce[address(msg.sender)].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0x4bf75763: address(msg.sender), sub_3d6597ce[address(msg.sender)].field_512, sub_3d6597ce[address(msg.sender)].field_768, sub_3d6597ce[address(msg.sender)].field_1024, sub_3d6597ce[address(msg.sender)].field_1024 + sub_3d6597ce[address(msg.sender)].field_512
    sub_3d6597ce[address(msg.sender)].field_0 = arg1
    sub_3d6597ce[address(msg.sender)].field_256 = arg2
    sub_3d6597ce[address(msg.sender)].field_512 = msg.value - arg3 - arg4
    sub_3d6597ce[address(msg.sender)].field_768 = arg3
    sub_3d6597ce[address(msg.sender)].field_1024 = arg4
    sub_3d6597ce[address(msg.sender)].field_1280 = 0
    sub_3d6597ce[address(msg.sender)].field_1536 = 0
    emit 0xee4b3cbf: msg.sender, sub_3d6597ce[address(msg.sender)].field_512, arg3, arg4, sub_3d6597ce[address(msg.sender)].field_512 + arg3 + arg4
}



}
