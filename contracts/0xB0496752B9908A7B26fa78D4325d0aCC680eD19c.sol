contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;

function _fallback() payable {
    mem[96 len -9248] = code.data[9658 len -9248]
    mem[64] = -9152
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    mem[0] = 3
    stor3.length = (2 * mem[mem[96] + 96]) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[410 len 9248]
}



// =====================  Runtime code  =====================


#
#  - sub_35e957a7(?)
#
address stor0;
address owner;
mapping of struct stor2;
array of uint256 name;
array of uint256 publicKey;
uint256 stor5;
address stor6;
uint256 stor6;
address sub_bfe65df7Address;
uint256 stor7;
uint256 stor8;
mapping of struct stor9;

function getName() payable {
    return name[0 len name.length]
}

function getPublicKey() payable {
    return publicKey[0 len publicKey.length]
}

function getOwner() payable {
    return owner
}

function sub_bfe65df7(?) payable {
    return address(sub_bfe65df7Address)
}

function _fallback() payable {
  stop
}

function sub_2be33682(?) payable {
    if msg.sender == stor0:
        stor5 = arg1
}

function sub_5fa1aa35(?) payable {
    if msg.sender == stor0:
        stor8 = block.timestamp
}

function sub_1f89b9b9(?) payable {
    if stor9[address(arg1)].field_0:
        stor9[address(arg1)].field_1024 = block.timestamp
}

function sub_a4145a54(?) payable {
    if stor0 == msg.sender:
        if stor9[address(arg1)].field_0 == arg1:
            stor9[address(arg1)].field_1536 = 1
}

function claimFunds() payable {
    if stor0 == msg.sender:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function blacklist(address arg1) payable {
    if stor0 == msg.sender:
        stor2[address(arg1)].field_512 = 1
        stor2[address(arg1)].field_0 = arg1 or Mask(96, 160, stor2[address(arg1)].field_0)
}

function whitelistAddress(address arg1) payable {
    if msg.sender == stor0:
        if stor2[address(arg1)].field_0 != arg1:
            stor2[address(arg1)].field_0 = arg1 or Mask(96, 160, stor2[address(arg1)].field_0)
        if stor2[address(arg1)].field_256 != 0:
            stor2[address(arg1)].field_256 = 0
}

function sub_696b92f5(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == stor0:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if msg.sender == stor0:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                if stor2[mem[(32 * idx) + 140 len 20]].field_0 != mem[(32 * idx) + 140 len 20]:
                    stor2[mem[(32 * idx) + 140 len 20]].field_0 = mem[(32 * idx) + 128]
                if stor2[mem[(32 * idx) + 140 len 20]].field_256 != 0:
                    stor2[mem[(32 * idx) + 140 len 20]].field_256 = 0
            idx = idx + 1
            continue 
}

function sub_d78b30a8(?) payable {
    if stor0 == msg.sender:
        call arg1.getTotalParticipants() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[100] = idx
            call arg1.getParticipant(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args idx
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if msg.sender == stor0:
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 2
                if stor2[address(ext_call.return_data[0])].field_0 != address(ext_call.return_data[0]):
                    stor2[address(ext_call.return_data[0])].field_0 = ext_call.return_data[0] or Mask(96, 160, stor2[address(ext_call.return_data[0])].field_0)
                if stor2[address(ext_call.return_data[0])].field_256 != 0:
                    stor2[address(ext_call.return_data[0])].field_256 = 0
            idx = idx + 1
            continue 
}

function refund(address arg1, uint256 arg2) payable {
    if msg.sender == stor0:
        call arg1.getTotalParticipants() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        s = 0
        t = 0
        t = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[100] = idx
            call arg1.getParticipant(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args idx
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            mem[0] = address(ext_call.return_data[0])
            mem[32] = sha3(address(arg1), 9) + 7
            if stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0 <= 0:
                s = s
                t = stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0
                t = ext_call.return_data[0]
                idx = idx + 1
                continue 
            call address(ext_call.return_data[0]) with:
               value stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0 * arg2 / 100 wei
                 gas 0 wei
            mem[0] = address(ext_call.return_data[0])
            mem[32] = sha3(address(arg1), 9) + 7
            stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0 = 0
            s = stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0 * arg2 / 100
            t = stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0
            t = ext_call.return_data[0]
            idx = idx + 1
            continue 
}

function sub_5a480b8f(?) payable {
    if msg.sender == stor0:
        call arg1.getTotalParticipants() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        s = 0
        t = 0
        t = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[100] = idx
            call arg1.getParticipant(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args idx
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            mem[0] = address(ext_call.return_data[0])
            mem[32] = sha3(address(arg1), 9) + 7
            if stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0 <= 0:
                s = s
                t = stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0
                t = ext_call.return_data[0]
                idx = idx + 1
                continue 
            call address(ext_call.return_data[0]) with:
               value stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0 * arg2 / 100 wei
                 gas 0 wei
            mem[0] = address(ext_call.return_data[0])
            mem[32] = sha3(address(arg1), 9) + 7
            stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0 = 0
            s = stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0 * arg2 / 100
            t = stor9[address(arg1)][7][address(ext_call.return_data[0])].field_0
            t = ext_call.return_data[0]
            idx = idx + 1
            continue 
        call arg1.leave() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
}

function sub_49a033a5(?) payable {
    if msg.sender == stor0:
        if arg4:
            if stor0 == msg.sender:
                if stor9[address(arg1)].field_0 == arg1:
                    stor9[address(arg1)].field_1536 = 1
        call arg1.0xb57b422d with:
             gas gas_remaining - 25050 wei
            args Array(len=arg3.length, data=arg3[all]), arg2
        require ext_call.success
        call arg1.getTotalParticipants() with:
             gas gas_remaining - 25050 wei
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            call arg1.getParticipant(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args idx
            require ext_call.success
            mem[ceil32(arg3.length) + 132] = arg1
            call address(ext_call.return_data[0]).0x1d2ea3b7 with:
                 gas gas_remaining - 25050 wei
                args arg1
            call arg1.0x1b7abe89 with:
                 gas gas_remaining - 25050 wei
            mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
            if 0 == ext_call.return_data[0]:
                mem[ceil32(arg3.length) + 128] = 0x20f94cfc00000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 132] = this.address
                call address(ext_call.return_data[0]).0x20f94cfc with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args this.address
                require ext_call.success
            s = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
}

function sub_1d2ea3b7(?) payable {
    if stor2[address(msg.sender)].field_0 == msg.sender:
        if stor9[address(arg1)].field_0 != arg1:
            if this.address != msg.sender:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    return stor2[address(msg.sender)].field_256
            else:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    return 0
        else:
            if bool(stor9[address(arg1)].field_1536) != 1:
                if this.address != msg.sender:
                    if bool(stor2[address(msg.sender)].field_512) != 1:
                        return stor2[address(msg.sender)].field_256
                else:
                    if bool(stor2[address(msg.sender)].field_512) != 1:
                        return 0
            else:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    return 0
    else:
        if stor9[address(arg1)].field_0 != arg1:
            if this.address != msg.sender:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    return stor5
            else:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    return 0
        else:
            if bool(stor9[address(arg1)].field_1536) != 1:
                if this.address != msg.sender:
                    if bool(stor2[address(msg.sender)].field_512) != 1:
                        return stor5
                else:
                    if bool(stor2[address(msg.sender)].field_512) != 1:
                        return 0
            else:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    return 0
    ('eq', 1, ('bool', ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor2', 2))))))
    return 2000 * 10^18
}

function sub_20f94cfc(?) payable {
    if stor2[address(msg.sender)].field_0 == msg.sender:
        if stor9[address(arg1)].field_0 != arg1:
            if this.address != msg.sender:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    require msg.value >= stor2[address(msg.sender)].field_256
                else:
                    require msg.value >= 2000 * 10^18
            else:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    require msg.value >= 0
                else:
                    require msg.value >= 2000 * 10^18
        else:
            if bool(stor9[address(arg1)].field_1536) != 1:
                if this.address != msg.sender:
                    if bool(stor2[address(msg.sender)].field_512) != 1:
                        require msg.value >= stor2[address(msg.sender)].field_256
                    else:
                        require msg.value >= 2000 * 10^18
                else:
                    if bool(stor2[address(msg.sender)].field_512) != 1:
                        require msg.value >= 0
                    else:
                        require msg.value >= 2000 * 10^18
            else:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    require msg.value >= 0
                else:
                    require msg.value >= 2000 * 10^18
    else:
        if stor9[address(arg1)].field_0 != arg1:
            if this.address != msg.sender:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    require msg.value >= stor5
                else:
                    require msg.value >= 2000 * 10^18
            else:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    require msg.value >= 0
                else:
                    require msg.value >= 2000 * 10^18
        else:
            if bool(stor9[address(arg1)].field_1536) != 1:
                if this.address != msg.sender:
                    if bool(stor2[address(msg.sender)].field_512) != 1:
                        require msg.value >= stor5
                    else:
                        require msg.value >= 2000 * 10^18
                else:
                    if bool(stor2[address(msg.sender)].field_512) != 1:
                        require msg.value >= 0
                    else:
                        require msg.value >= 2000 * 10^18
            else:
                if bool(stor2[address(msg.sender)].field_512) != 1:
                    require msg.value >= 0
                else:
                    require msg.value >= 2000 * 10^18
    stor9[address(arg1)].field_768 = block.timestamp
    if msg.value > 0:
        stor9[address(arg1)][7][address(msg.sender)].field_0 += msg.value
    if 0 == stor9[address(arg1)].field_0:
        stor9[address(arg1)].field_256 = stor9[address(stor7)].field_0
        stor9[address(arg1)].field_0 = arg1 or Mask(96, 160, stor9[address(arg1)].field_0)
        stor9[address(stor7)].field_512 = arg1 or Mask(96, 160, stor9[address(stor7)].field_512)
        uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
        if not address(stor6):
            uint256(stor6) = arg1 or Mask(96, 160, uint256(stor6))
    else:
        if not stor9[stor9[address(arg1)].field_256].field_0:
            address(stor6) = stor9[stor9[address(arg1)].field_512].field_0
            if stor9[stor9[address(arg1)].field_512].field_0 != 0:
                stor9[stor9[address(arg1)].field_512].field_256 = stor9[stor9[address(arg1)].field_256].field_0
        else:
            if 0 == stor9[stor9[address(arg1)].field_512].field_0:
                address(stor6) = stor9[stor9[address(arg1)].field_512].field_0
            else:
                stor9[stor9[address(arg1)].field_256].field_512 = stor9[stor9[address(arg1)].field_512].field_0
                stor9[stor9[address(arg1)].field_512].field_256 = stor9[stor9[address(arg1)].field_256].field_0
        stor9[address(stor7)].field_512 = arg1 or Mask(96, 160, stor9[address(stor7)].field_512)
        stor9[address(arg1)].field_256 = address(sub_bfe65df7Address)
        uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
}



}
