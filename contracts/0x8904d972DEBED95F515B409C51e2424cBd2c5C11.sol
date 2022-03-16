contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint256 stor8;

function _fallback() payable {
    mem[96 len -4329] = code.data[4694 len -4329]
    mem[64] = -4233
    stor0 = tx.origin or Mask(96, 160, stor0)
    stor5.length = mem[mem[96] + 96]
    mem[0] = 5
    if not mem[mem[96] + 96]:
        idx = 0
        while stor5.length + 31 / 32 > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor5[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, mem[mem[96] + 96] + 31) >> 5
        while stor5.length + 31 / 32 > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    stor1 = mem[128]
    stor2 = mem[160]
    stor3 = mem[192]
    stor4 = mem[224]
    stor8 = block.timestamp
    return code.data[365 len 4329]
}



// =====================  Runtime code  =====================


address buyerAddress;
address merchantAddress;
address adminAddress;
uint256 fee;
uint256 stor4;
array of struct stor5;
uint256 status;
uint256 received;
uint256 timestamp;
uint256 stor9;
array of struct messageTimestamp;
array of struct stor11;

function getTimestamp() payable {
    return timestamp
}

function getMessagesCount() payable {
    return messageTimestamp.length
}

function getStatus() payable {
    return status
}

function getReceived() payable {
    return received
}

function getMessageTimestamp(uint256 arg1) payable {
    require arg1 < messageTimestamp.length
    return uint256(messageTimestamp[arg1].field_512)
}

function getBuyer() payable {
    return buyerAddress
}

function getAdmin() payable {
    return adminAddress
}

function getMerchant() payable {
    return merchantAddress
}

function getFee() payable {
    return fee
}

function getMessageSender(uint256 arg1) payable {
    require arg1 < messageTimestamp.length
    return address(messageTimestamp[arg1].field_0)
}

function _fallback() payable {
    received += msg.value
}

function sub_a79af2ce(?) payable {
    if stor5.length:
        mem[160] = uint256(stor5.field_0)
        idx = 160
        s = 0
        while stor5.length + 128 > idx:
            mem[idx + 32] = uint256(stor5[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor5.length, data=mem[160 len stor5.length])
}

function sub_16328e80(?) payable {
    require arg1 < messageTimestamp.length
    if uint256(messageTimestamp[arg1].field_256):
        mem[160] = uint256(stor[sha3((3 * arg1) + ('name', 'messageTimestamp', 10) + 1)].field_0)
        idx = 160
        s = 0
        while uint256(messageTimestamp[arg1].field_256) + 128 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'messageTimestamp', 10) + 1)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(messageTimestamp[arg1].field_256), data=mem[160 len uint256(messageTimestamp[arg1].field_256)])
}

function sub_792568ec(?) payable {
    status = arg1
    stor11.length++
    if not stor11.length <= stor11.length + 1:
        idx = (3 * stor11.length) + 3
        while 3 * stor11.length > idx:
            address(stor11[idx].field_0) = 0
            uint256(stor11[idx].field_256) = 0
            uint256(stor11[idx].field_512) = 0
            idx = idx + 1
            continue 
    require stor11.length < stor11.length
    uint256(stor11[stor11.length].field_0) = tx.origin or Mask(96, 160, uint256(stor11[stor11.length].field_0))
    uint256(stor11[stor11.length].field_256) = arg1
    uint256(stor11[stor11.length].field_512) = block.timestamp
}

function sub_195984ac(?) payable {
    if not status:
        if tx.origin == merchantAddress:
            stor9 = block.timestamp
            status = 2
            stor11.length++
            if not stor11.length <= stor11.length + 1:
                idx = (3 * stor11.length) + 3
                while 3 * stor11.length > idx:
                    address(stor11[idx].field_0) = 0
                    uint256(stor11[idx].field_256) = 0
                    uint256(stor11[idx].field_512) = 0
                    idx = idx + 1
                    continue 
            require stor11.length < stor11.length
            uint256(stor11[stor11.length].field_0) = tx.origin or Mask(96, 160, uint256(stor11[stor11.length].field_0))
            uint256(stor11[stor11.length].field_256) = 2
            uint256(stor11[stor11.length].field_512) = block.timestamp
}

function dispute() payable {
    if tx.origin == buyerAddress:
        if status == 2:
            if block.timestamp - stor9 <= stor4:
                if adminAddress:
                    status = 4
                    stor11.length++
                    if not stor11.length <= stor11.length + 1:
                        idx = (3 * stor11.length) + 3
                        while 3 * stor11.length > idx:
                            address(stor11[idx].field_0) = 0
                            uint256(stor11[idx].field_256) = 0
                            uint256(stor11[idx].field_512) = 0
                            idx = idx + 1
                            continue 
                    require stor11.length < stor11.length
                    uint256(stor11[stor11.length].field_0) = tx.origin or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                    uint256(stor11[stor11.length].field_256) = 4
                    uint256(stor11[stor11.length].field_512) = block.timestamp
}

function resolve(uint256 arg1) payable {
    if status == 4:
        if tx.origin == adminAddress:
            if arg1 > 0:
                call buyerAddress with:
                   value arg1 wei
                     gas 0 wei
            if eth.balance(this.address) - arg1 > 0:
                call merchantAddress with:
                   value eth.balance(this.address) - arg1 wei
                     gas 0 wei
            status = 5
            stor11.length++
            if not stor11.length <= stor11.length + 1:
                idx = (3 * stor11.length) + 3
                while 3 * stor11.length > idx:
                    address(stor11[idx].field_0) = 0
                    uint256(stor11[idx].field_256) = 0
                    uint256(stor11[idx].field_512) = 0
                    idx = idx + 1
                    continue 
            require stor11.length < stor11.length
            uint256(stor11[stor11.length].field_0) = tx.origin or Mask(96, 160, uint256(stor11[stor11.length].field_0))
            uint256(stor11[stor11.length].field_256) = 5
            uint256(stor11[stor11.length].field_512) = block.timestamp
}

function cancel() payable {
    if not status:
        if tx.origin == buyerAddress:
            call buyerAddress with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if ext_call.success:
                status = 1
                stor11.length++
                if not stor11.length <= stor11.length + 1:
                    idx = (3 * stor11.length) + 3
                    while 3 * stor11.length > idx:
                        address(stor11[idx].field_0) = 0
                        uint256(stor11[idx].field_256) = 0
                        uint256(stor11[idx].field_512) = 0
                        idx = idx + 1
                        continue 
                require stor11.length < stor11.length
                uint256(stor11[stor11.length].field_0) = tx.origin or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                uint256(stor11[stor11.length].field_256) = 1
                uint256(stor11[stor11.length].field_512) = block.timestamp
        else:
            if tx.origin == merchantAddress:
                call buyerAddress with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                if ext_call.success:
                    status = 1
                    stor11.length++
                    if not stor11.length <= stor11.length + 1:
                        idx = (3 * stor11.length) + 3
                        while 3 * stor11.length > idx:
                            address(stor11[idx].field_0) = 0
                            uint256(stor11[idx].field_256) = 0
                            uint256(stor11[idx].field_512) = 0
                            idx = idx + 1
                            continue 
                    require stor11.length < stor11.length
                    uint256(stor11[stor11.length].field_0) = tx.origin or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                    uint256(stor11[stor11.length].field_256) = 1
                    uint256(stor11[stor11.length].field_512) = block.timestamp
}

function finalize() payable {
    if status == 2:
        if tx.origin == buyerAddress:
            if merchantAddress != tx.origin:
                call merchantAddress with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                if ext_call.success:
                    status = 3
                    stor11.length++
                    if not stor11.length <= stor11.length + 1:
                        idx = (3 * stor11.length) + 3
                        while 3 * stor11.length > idx:
                            address(stor11[idx].field_0) = 0
                            uint256(stor11[idx].field_256) = 0
                            uint256(stor11[idx].field_512) = 0
                            idx = idx + 1
                            continue 
                    require stor11.length < stor11.length
                    uint256(stor11[stor11.length].field_0) = tx.origin or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                    uint256(stor11[stor11.length].field_256) = 3
                    uint256(stor11[stor11.length].field_512) = block.timestamp
            else:
                if block.timestamp - stor9 >= stor4:
                    call merchantAddress with:
                       value eth.balance(this.address) wei
                         gas 0 wei
                    if ext_call.success:
                        status = 3
                        stor11.length++
                        if not stor11.length <= stor11.length + 1:
                            idx = (3 * stor11.length) + 3
                            while 3 * stor11.length > idx:
                                address(stor11[idx].field_0) = 0
                                uint256(stor11[idx].field_256) = 0
                                uint256(stor11[idx].field_512) = 0
                                idx = idx + 1
                                continue 
                        require stor11.length < stor11.length
                        uint256(stor11[stor11.length].field_0) = tx.origin or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                        uint256(stor11[stor11.length].field_256) = 3
                        uint256(stor11[stor11.length].field_512) = block.timestamp
        else:
            if tx.origin == merchantAddress:
                if block.timestamp - stor9 >= stor4:
                    call merchantAddress with:
                       value eth.balance(this.address) wei
                         gas 0 wei
                    if ext_call.success:
                        status = 3
                        stor11.length++
                        if not stor11.length <= stor11.length + 1:
                            idx = (3 * stor11.length) + 3
                            while 3 * stor11.length > idx:
                                address(stor11[idx].field_0) = 0
                                uint256(stor11[idx].field_256) = 0
                                uint256(stor11[idx].field_512) = 0
                                idx = idx + 1
                                continue 
                        require stor11.length < stor11.length
                        uint256(stor11[stor11.length].field_0) = tx.origin or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                        uint256(stor11[stor11.length].field_256) = 3
                        uint256(stor11[stor11.length].field_512) = block.timestamp
}

function addMessage(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    if tx.origin == buyerAddress:
        mem[ceil32(arg1.length) + 128] = tx.origin
        messageTimestamp.length++
        if not messageTimestamp.length > messageTimestamp.length + 1:
            require messageTimestamp.length < messageTimestamp.length
            uint256(messageTimestamp[messageTimestamp.length].field_0) = tx.origin or Mask(96, 160, uint256(messageTimestamp[messageTimestamp.length].field_0))
        else:
            mem[0] = 10
            idx = (3 * messageTimestamp.length) + 3
            while sha3(10) + (3 * messageTimestamp.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (uint256(stor[s + sha3(mem[0]) + 1]) + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 2]) = 0
                s = s + 1
                continue 
            require messageTimestamp.length < messageTimestamp.length
            uint256(messageTimestamp[messageTimestamp.length].field_0) = tx.origin
        uint256(messageTimestamp[messageTimestamp.length].field_256) = arg1.length
        if not arg1.length:
            idx = 0
            while uint256(messageTimestamp[messageTimestamp.length].field_256) + 31 / 32 > idx:
                uint256(stor[idx + sha3((3 * messageTimestamp.length) + ('name', 'messageTimestamp', 10) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while arg1.length + 128 > idx:
                uint256(stor[s + sha3((3 * messageTimestamp.length) + ('name', 'messageTimestamp', 10) + 1)].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while uint256(messageTimestamp[messageTimestamp.length].field_256) + 31 / 32 > idx:
                uint256(stor[idx + sha3((3 * messageTimestamp.length) + ('name', 'messageTimestamp', 10) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(messageTimestamp[messageTimestamp.length].field_512) = block.timestamp
    else:
        if tx.origin == merchantAddress:
            mem[ceil32(arg1.length) + 128] = tx.origin
            messageTimestamp.length++
            if not messageTimestamp.length > messageTimestamp.length + 1:
                require messageTimestamp.length < messageTimestamp.length
                uint256(messageTimestamp[messageTimestamp.length].field_0) = tx.origin or Mask(96, 160, uint256(messageTimestamp[messageTimestamp.length].field_0))
            else:
                mem[0] = 10
                idx = (3 * messageTimestamp.length) + 3
                while sha3(10) + (3 * messageTimestamp.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(s + sha3(mem[0]) + 1)
                    while sha3(s + sha3(mem[0]) + 1) + (uint256(stor[s + sha3(mem[0]) + 1]) + 31 / 32) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint256(stor[s + sha3(mem[0]) + 2]) = 0
                    s = s + 1
                    continue 
                require messageTimestamp.length < messageTimestamp.length
                uint256(messageTimestamp[messageTimestamp.length].field_0) = tx.origin
            uint256(messageTimestamp[messageTimestamp.length].field_256) = arg1.length
            if not arg1.length:
                idx = 0
                while uint256(messageTimestamp[messageTimestamp.length].field_256) + 31 / 32 > idx:
                    uint256(stor[idx + sha3((3 * messageTimestamp.length) + ('name', 'messageTimestamp', 10) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while arg1.length + 128 > idx:
                    uint256(stor[s + sha3((3 * messageTimestamp.length) + ('name', 'messageTimestamp', 10) + 1)].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg1.length + 31) >> 5
                while uint256(messageTimestamp[messageTimestamp.length].field_256) + 31 / 32 > idx:
                    uint256(stor[idx + sha3((3 * messageTimestamp.length) + ('name', 'messageTimestamp', 10) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(messageTimestamp[messageTimestamp.length].field_512) = block.timestamp
        else:
            if tx.origin == adminAddress:
                mem[ceil32(arg1.length) + 128] = tx.origin
                messageTimestamp.length++
                if not messageTimestamp.length > messageTimestamp.length + 1:
                    require messageTimestamp.length < messageTimestamp.length
                    uint256(messageTimestamp[messageTimestamp.length].field_0) = tx.origin or Mask(96, 160, uint256(messageTimestamp[messageTimestamp.length].field_0))
                else:
                    mem[0] = 10
                    idx = (3 * messageTimestamp.length) + 3
                    while sha3(10) + (3 * messageTimestamp.length) > idx + sha3(mem[0]):
                        address(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(s + sha3(mem[0]) + 1)
                        while sha3(s + sha3(mem[0]) + 1) + (uint256(stor[s + sha3(mem[0]) + 1]) + 31 / 32) > s + sha3(mem[0]):
                            uint256(stor[s + sha3(mem[0])]) = 0
                            s = s + 1
                            continue 
                        uint256(stor[s + sha3(mem[0]) + 2]) = 0
                        s = s + 1
                        continue 
                    require messageTimestamp.length < messageTimestamp.length
                    uint256(messageTimestamp[messageTimestamp.length].field_0) = tx.origin
                uint256(messageTimestamp[messageTimestamp.length].field_256) = arg1.length
                if not arg1.length:
                    idx = 0
                    while uint256(messageTimestamp[messageTimestamp.length].field_256) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((3 * messageTimestamp.length) + ('name', 'messageTimestamp', 10) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while arg1.length + 128 > idx:
                        uint256(stor[s + sha3((3 * messageTimestamp.length) + ('name', 'messageTimestamp', 10) + 1)].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg1.length + 31) >> 5
                    while uint256(messageTimestamp[messageTimestamp.length].field_256) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((3 * messageTimestamp.length) + ('name', 'messageTimestamp', 10) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(messageTimestamp[messageTimestamp.length].field_512) = block.timestamp
}



}
