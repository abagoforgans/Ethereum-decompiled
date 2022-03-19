contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0['rock']['rock'] = 0
    stor0['rock']['paper'] = 2
    stor0['rock']['scissors'] = 1
    stor0['paper']['rock'] = 1
    stor0['paper']['paper'] = 0
    stor0['paper']['scissors'] = 2
    stor0['scissors']['rock'] = 2
    stor0['scissors']['paper'] = 1
    stor0['scissors']['scissors'] = 0
    return code.data[326 len 1527]
}



// =====================  Runtime code  =====================


const getMyBalance = eth.balance(msg.sender)

const getContractBalance = eth.balance(this.address)


address stor1;
uint256 stor1;
address stor2;
uint256 stor2;
array of struct stor3;
array of uint256 stor4;

function _fallback() payable {
  stop
}

function AmIPlayer1() payable {
    return (msg.sender == address(stor1))
}

function AmIPlayer2() payable {
    return (address(stor2) == msg.sender)
}

function register() payable {
    require msg.value >= 5
    require address(stor1) != msg.sender
    require address(stor2) != msg.sender
    if 0 == address(stor1):
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    else:
        if 0 == address(stor2):
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
}

function play(string arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == address(stor1):
        stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
        if 0 == stor3.length:
            return -1
        if 0 == stor4.length:
            return -1
        mem[ceil32(arg1.length) + 128] = uint256(stor3.field_0)
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor3.length + 128 > idx + 32:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor3.length + 128] = 0
        _2598 = sha3(mem[ceil32(arg1.length) + 128 len stor3.length + 32])
        mem[0] = 4
        mem[ceil32(arg1.length) + 128] = uint256(stor4.field_0)
        idx = mem[64]
        s = 0
        while ceil32(arg1.length) + stor4.length + 128 > idx + 32:
            mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor4.length + 128] = _2598
        _3364 = sha3(mem[mem[64] len ceil32(arg1.length) + stor4.length + -mem[64] + 160])
        if stor[sha3(mem[mem[64] len ceil32(arg1.length) + stor4.length + -mem[64] + 160])] == 1:
            call address(stor1) with:
               value eth.balance(this.address) wei
                 gas 0 wei
            _3391 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3391] = 0
            uint8(stor3.length) = 0
            Mask(248, 0, stor3.length.field_8) = mem[_3391 + 32 len 31]
            idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
            while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            _3519 = mem[64]
            mem[64] = mem[64] + 32
            uint8(stor4.length) = 0
            Mask(248, 0, stor4.length.field_8) = mem[_3519 + 32 len 31]
        else:
            if 2 == stor[sha3(mem[mem[64] len ceil32(arg1.length) + stor4.length + -mem[64] + 160])]:
                call address(stor2) with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                _3405 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3405] = 0
                uint8(stor3.length) = 0
                Mask(248, 0, stor3.length.field_8) = mem[_3405 + 32 len 31]
                idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
                while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                _3517 = mem[64]
                mem[64] = mem[64] + 32
                uint8(stor4.length) = 0
                Mask(248, 0, stor4.length.field_8) = mem[_3517 + 32 len 31]
            else:
                call address(stor1) with:
                   value eth.balance(this.address) / 2 wei
                     gas 0 wei
                call address(stor2) with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                _3403 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3403] = 0
                uint8(stor3.length) = 0
                Mask(248, 0, stor3.length.field_8) = mem[_3403 + 32 len 31]
                idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
                while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                _3515 = mem[64]
                mem[64] = mem[64] + 32
                uint8(stor4.length) = 0
                Mask(248, 0, stor4.length.field_8) = mem[_3515 + 32 len 31]
        idx = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
        while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        address(stor1) = 0
        address(stor2) = 0
        return stor[_3364]
    if address(stor2) != msg.sender:
        if 0 == stor3.length:
            return -1
        if 0 == stor4.length:
            return -1
        mem[ceil32(arg1.length) + 128] = uint256(stor3.field_0)
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor3.length + 128 > idx + 32:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor3.length + 128] = 0
        _1441 = sha3(mem[ceil32(arg1.length) + 128 len stor3.length + 32])
        mem[0] = 4
        mem[ceil32(arg1.length) + 128] = uint256(stor4.field_0)
        idx = mem[64]
        s = 0
        while ceil32(arg1.length) + stor4.length + 128 > idx + 32:
            mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor4.length + 128] = _1441
        _2587 = sha3(mem[mem[64] len ceil32(arg1.length) + stor4.length + -mem[64] + 160])
        if stor[sha3(mem[mem[64] len ceil32(arg1.length) + stor4.length + -mem[64] + 160])] == 1:
            call address(stor1) with:
               value eth.balance(this.address) wei
                 gas 0 wei
            _2613 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2613] = 0
            uint8(stor3.length) = 0
            Mask(248, 0, stor3.length.field_8) = mem[_2613 + 32 len 31]
            idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
            while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            _3081 = mem[64]
            mem[64] = mem[64] + 32
            uint8(stor4.length) = 0
            Mask(248, 0, stor4.length.field_8) = mem[_3081 + 32 len 31]
        else:
            if 2 == stor[sha3(mem[mem[64] len ceil32(arg1.length) + stor4.length + -mem[64] + 160])]:
                call address(stor2) with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                _2733 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2733] = 0
                uint8(stor3.length) = 0
                Mask(248, 0, stor3.length.field_8) = mem[_2733 + 32 len 31]
                idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
                while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                _3079 = mem[64]
                mem[64] = mem[64] + 32
                uint8(stor4.length) = 0
                Mask(248, 0, stor4.length.field_8) = mem[_3079 + 32 len 31]
            else:
                call address(stor1) with:
                   value eth.balance(this.address) / 2 wei
                     gas 0 wei
                call address(stor2) with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                _2731 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2731] = 0
                uint8(stor3.length) = 0
                Mask(248, 0, stor3.length.field_8) = mem[_2731 + 32 len 31]
                idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
                while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                _3077 = mem[64]
                mem[64] = mem[64] + 32
                uint8(stor4.length) = 0
                Mask(248, 0, stor4.length.field_8) = mem[_3077 + 32 len 31]
        idx = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
        while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        address(stor1) = 0
        address(stor2) = 0
        return stor[_2587]
    stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
    if 0 == stor3.length:
        return -1
    if 0 == stor4.length:
        return -1
    mem[ceil32(arg1.length) + 128] = uint256(stor3.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + stor3.length + 128 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + stor3.length + 128] = 0
    _2591 = sha3(mem[ceil32(arg1.length) + 128 len stor3.length + 32])
    mem[0] = 4
    mem[ceil32(arg1.length) + 128] = uint256(stor4.field_0)
    idx = mem[64]
    s = 0
    while ceil32(arg1.length) + stor4.length + 128 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + stor4.length + 128] = _2591
    _3362 = sha3(mem[mem[64] len ceil32(arg1.length) + stor4.length + -mem[64] + 160])
    if stor[sha3(mem[mem[64] len ceil32(arg1.length) + stor4.length + -mem[64] + 160])] == 1:
        call address(stor1) with:
           value eth.balance(this.address) wei
             gas 0 wei
        _3375 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3375] = 0
        uint8(stor3.length) = 0
        Mask(248, 0, stor3.length.field_8) = mem[_3375 + 32 len 31]
        idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
        while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        _3513 = mem[64]
        mem[64] = mem[64] + 32
        uint8(stor4.length) = 0
        Mask(248, 0, stor4.length.field_8) = mem[_3513 + 32 len 31]
    else:
        if 2 == stor[sha3(mem[mem[64] len ceil32(arg1.length) + stor4.length + -mem[64] + 160])]:
            call address(stor2) with:
               value eth.balance(this.address) wei
                 gas 0 wei
            _3401 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3401] = 0
            uint8(stor3.length) = 0
            Mask(248, 0, stor3.length.field_8) = mem[_3401 + 32 len 31]
            idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
            while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            _3511 = mem[64]
            mem[64] = mem[64] + 32
            uint8(stor4.length) = 0
            Mask(248, 0, stor4.length.field_8) = mem[_3511 + 32 len 31]
        else:
            call address(stor1) with:
               value eth.balance(this.address) / 2 wei
                 gas 0 wei
            call address(stor2) with:
               value eth.balance(this.address) wei
                 gas 0 wei
            _3399 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3399] = 0
            uint8(stor3.length) = 0
            Mask(248, 0, stor3.length.field_8) = mem[_3399 + 32 len 31]
            idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
            while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            _3509 = mem[64]
            mem[64] = mem[64] + 32
            uint8(stor4.length) = 0
            Mask(248, 0, stor4.length.field_8) = mem[_3509 + 32 len 31]
    idx = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    address(stor1) = 0
    address(stor2) = 0
    return stor[_3362]
}



}
