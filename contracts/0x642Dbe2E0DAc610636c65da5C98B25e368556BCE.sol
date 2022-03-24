contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
address stor1;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1 = msg.sender
    return code.data[61 len 2560]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address sub_7d27f98aAddress;
uint256 stor1;
uint256 sub_d32a27d5;
array of struct publisher;
array of uint256 sub_9eb4cb82;
array of uint256 created;

function getHash(uint256 arg1) payable {
    return uint256(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4][0 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length])
}

function sub_7d27f98a(?) payable {
    return address(sub_7d27f98aAddress)
}

function getTitle(uint256 arg1) payable {
    return uint256(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3][0 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length])
}

function getPublisher(uint256 arg1) payable {
    require arg1 < publisher.length
    return address(publisher[arg1].field_0)
}

function getCreated(uint256 arg1) payable {
    require arg1 < publisher.length
    return created[arg1]
}

function sub_9eb4cb82(?) payable {
    require arg1 < publisher.length
    return sub_9eb4cb82[arg1]
}

function sub_d32a27d5(?) payable {
    return sub_d32a27d5
}

function _fallback() payable {
    revert 
}

function setOwner(address arg1) payable {
    require msg.sender == address(stor0)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setFrontend(address arg1) payable {
    require msg.sender == address(stor0)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function getVote(uint256 arg1, address arg2) payable {
    require arg1 < publisher.length
    return ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('add', 87903029871075914254377627908054574944891091886930582284385770809450030037086, ('mul', 6, ('param', 'arg1'))))))))
}

function sub_644fd8e9(?) payable {
    if address(sub_7d27f98aAddress) != msg.sender:
        require msg.sender == address(stor0)
    require ('signextend', 0, ('param', 'arg3')) >= -1
    require ('signextend', 0, ('param', 'arg3')) <= 1
    require arg1 < publisher.length
    require address(publisher[arg1].field_0)
    sub_9eb4cb82[arg1] -= ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('add', 87903029871075914254377627908054574944891091886930582284385770809450030037086, ('mul', 6, ('param', 'arg1'))))))))
    uint8(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2][address(arg2)]) = uint8(arg3)
    sub_9eb4cb82[arg1] += ('signextend', 0, ('param', 'arg3'))
    return (sub_9eb4cb82[arg1] + ('signextend', 0, ('param', 'arg3')))
}

function sub_7a805eaa(?) payable {
    if address(sub_7d27f98aAddress) != msg.sender:
        require msg.sender == address(stor0)
    publisher.length++
    if not publisher.length <= publisher.length + 1:
        mem[0] = 3
        idx = (6 * publisher.length) + 6
        while sha3(3) + (6 * publisher.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 2].length:
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                idx = idx + 6
                continue 
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            if 31 < stor[s + sha3(mem[0]) + 2].length:
                mem[0] = s + sha3(mem[0]) + 2
                t = sha3(s + sha3(mem[0]) + 2)
                while sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            uint256(stor[s + sha3(mem[0]) + 4]) = 0
            uint256(stor[s + sha3(mem[0]) + 5]) = 0
            s = s + 6
            continue 
    sub_d32a27d5 = publisher.length + 1
    require publisher.length < publisher.length
    uint256(publisher[publisher.length].field_1280) = block.timestamp
    uint256(publisher[publisher.length].field_0) = cd[68] or Mask(96, 160, uint256(publisher[publisher.length].field_0))
    uint256(publisher[publisher.length].field_256) = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        uint256(stor[s + sha3((6 * publisher.length) + ('name', 'publisher', 3) + 1)].field_0) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while stor[(6 * publisher.length) + ('name', 'publisher', 3) + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((6 * publisher.length) + ('name', 'publisher', 3) + 1)].field_0) = 0
        idx = idx + 1
        continue 
    uint256(publisher[publisher.length].field_512) = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        uint256(stor[s + sha3((6 * publisher.length) + ('name', 'publisher', 3) + 2)].field_0) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor[(6 * publisher.length) + ('name', 'publisher', 3) + 2].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((6 * publisher.length) + ('name', 'publisher', 3) + 2)].field_0) = 0
        idx = idx + 1
        continue 
    return publisher.length
}

function entries(uint256 arg1) payable {
    require arg1 < publisher.length
    mem[288] = uint256(stor[sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
    idx = 288
    s = 0
    while stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + (floor32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length - 1) + -stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 32 % 32) + 288] = stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length
    mem[stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + (floor32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length - 1) + -stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 32 % 32) + 320] = uint256(stor[sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)])
    idx = stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + (floor32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length - 1) + -stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 32 % 32) + 320
    s = 0
    while stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + (floor32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length - 1) + -stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 32 % 32) + stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(publisher[arg1].field_0), 
           Array(len=stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length, data=mem[288 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + (floor32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length - 1) + -stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 32 % 32) + stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length + (floor32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length - 1) + -stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length + 32 % 32) + 32]),
           stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + (floor32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length - 1) + -stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 32 % 32) + 192,
           sub_9eb4cb82[arg1],
           created[arg1]
}



}
