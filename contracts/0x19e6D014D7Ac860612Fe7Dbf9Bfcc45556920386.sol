contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x411a0e6060901d65c7206d66802ab37ffc87c229
    stor1 = 0x411a0e6060901d65c7206d66802ab37ffc87c229
    require not msg.value
    return code.data[95 len 2713]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
array of struct inbox;

function getInbox(address arg1, uint256 arg2) {
    return inbox[address(arg1)][arg2][0 len inbox[address(arg1)][arg2].length].field_0
}

function _fallback() payable {
    revert
}

function markRead(uint256 arg1) {
    if 1 == bool(uint8(inbox[address(msg.sender)].field_512)):
        if ext_code.size(stor1):
            call stor1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, stor0, arg1
            if ext_call.success:
    else:
        if ext_code.size(stor1):
            call stor1.0x4420e486 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            if ext_call.success:
                if ext_code.size(stor1):
                    call stor1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor0, arg1
                    if ext_call.success:
    revert
}

function markAllRead() {
    if 1 == bool(uint8(inbox[address(msg.sender)].field_512)):
        if ext_code.size(stor1):
            call stor1.0xf8b2cb4f with:
                 gas gas_remaining - 710 wei
                args msg.sender
            if ext_call.success:
                if ext_code.size(stor1):
                    call stor1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor0, ext_call.return_data[0]
                    if ext_call.success:
    else:
        if ext_code.size(stor1):
            call stor1.0x4420e486 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            if ext_call.success:
                if ext_code.size(stor1):
                    call stor1.0xf8b2cb4f with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    if ext_call.success:
                        if ext_code.size(stor1):
                            call stor1.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, stor0, ext_call.return_data[0]
                            if ext_call.success:
    revert
}

function sendMessage(address arg1, string arg2) {
    require ext_code.size(stor1)
    if bool(uint8(inbox[address(msg.sender)].field_512)) != 1:
        call stor1.0x4420e486 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
    call stor1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor0, address(arg1), 1
    require ext_call.success
    inbox[address(arg1)].field_0++
    if not inbox[address(arg1)].field_0 <= inbox[address(arg1)].field_0 + 1:
        mem[0] = sha3(address(arg1), 2)
        idx = inbox[address(arg1)].field_0 + 1
        while sha3(sha3(address(arg1), 2)) + inbox[address(arg1)].field_0 > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    inbox[address(arg1)][inbox[address(arg1)].field_0][].field_0 = Array(len=arg2.length, data=arg2[all])
    inbox[address(arg1)].field_256++
}

function deleteMessage(uint256 arg1) {
    if 1 == bool(uint8(inbox[address(msg.sender)].field_512)):
        if arg1 < inbox[address(msg.sender)].field_0:
            bool(inbox[address(msg.sender)][arg1].field_0) = 0
            uint255(inbox[address(msg.sender)][arg1].field_1) = 0
            Mask(248, 0, inbox[address(msg.sender)][arg1].field_8) = mem[128 len 31]
            idx = 0
            while inbox[address(msg.sender)][arg1].length + 31 / 32 > idx:
                inbox[address(msg.sender)][arg1 + idx].field_0 = 0
                idx = idx + 1
                continue 
            if ext_code.size(stor1):
                call stor1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor0, 1
                if ext_call.success:
    else:
        if ext_code.size(stor1):
            call stor1.0x4420e486 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            if ext_call.success:
                if arg1 < inbox[address(msg.sender)].field_0:
                    bool(inbox[address(msg.sender)][arg1].field_0) = 0
                    uint255(inbox[address(msg.sender)][arg1].field_1) = 0
                    Mask(248, 0, inbox[address(msg.sender)][arg1].field_8) = uint32(msg.sender), 0
                    idx = 0
                    while inbox[address(msg.sender)][arg1].length + 31 / 32 > idx:
                        inbox[address(msg.sender)][arg1 + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ext_code.size(stor1):
                        call stor1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, stor0, 1
                        if ext_call.success:
    revert
}

function deleteAllMessages() payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(stor1)
    if 1 == bool(uint8(inbox[address(msg.sender)].field_512)):
        call stor1.0xf8b2cb4f with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        mem[100] = msg.sender
        mem[132] = stor0
        mem[164] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, stor0, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        mem[0] = msg.sender
        mem[32] = 2
        idx = 0
        while idx < inbox[address(msg.sender)].field_256:
            _39 = mem[64]
            mem[64] = mem[64] + 32
            mem[_39] = 0
            mem[32] = 2
            require idx < inbox[address(msg.sender)].field_0
            mem[0] = idx + sha3(sha3(address(msg.sender), 2))
            bool(inbox[address(msg.sender)][idx].field_0) = 0
            uint255(inbox[address(msg.sender)][idx].field_1) = 0
            Mask(248, 0, inbox[address(msg.sender)][idx].field_8) = mem[_39 + 32 len 31]
            s = sha3(mem[0])
            while sha3(idx + sha3(sha3(address(msg.sender), 2))) + (inbox[address(msg.sender)][idx].length + 31 / 32) > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 2
                s = s + 1
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            idx = idx + 1
            continue 
    else:
        call stor1.0x4420e486 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0xf8b2cb4f with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        mem[100] = msg.sender
        mem[132] = stor0
        mem[164] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, stor0, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        mem[0] = msg.sender
        mem[32] = 2
        idx = 0
        while idx < inbox[address(msg.sender)].field_256:
            _41 = mem[64]
            mem[64] = mem[64] + 32
            mem[_41] = 0
            mem[32] = 2
            require idx < inbox[address(msg.sender)].field_0
            mem[0] = idx + sha3(sha3(address(msg.sender), 2))
            bool(inbox[address(msg.sender)][idx].field_0) = 0
            uint255(inbox[address(msg.sender)][idx].field_1) = 0
            Mask(248, 0, inbox[address(msg.sender)][idx].field_8) = mem[_41 + 32 len 31]
            s = sha3(mem[0])
            while sha3(idx + sha3(sha3(address(msg.sender), 2))) + (inbox[address(msg.sender)][idx].length + 31 / 32) > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 2
                s = s + 1
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            idx = idx + 1
            continue 
}



}
