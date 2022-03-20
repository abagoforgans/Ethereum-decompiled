contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 6
    stor1 = 0
    return code.data[34 len 1227]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
array of uint256 stor4;
array of struct stor5;

function _fallback() payable {
  stop
}

function buyTicket(uint256 arg1) payable {
    if 10^18 != msg.value:
        if msg.value > 10^17:
            call msg.sender with:
               value msg.value - 10^17 wei
                 gas 0 wei
    if 10^18 == msg.value:
        uint256(stor5[address(msg.sender)].field_0)++
        if not uint256(stor5[address(msg.sender)].field_0) <= uint256(stor5[address(msg.sender)].field_0) + 1:
            idx = 2 * uint256(stor5[address(msg.sender)].field_0) + 1
            while 2 * uint256(stor5[address(msg.sender)].field_0) > idx:
                uint256(stor5[address(msg.sender)][idx].field_0) = 0
                uint256(stor5[address(msg.sender)][idx].field_256) = 0
                idx = idx + 1
                continue 
        uint256(stor5[address(msg.sender)][uint256(stor5[address(msg.sender)].field_0)].field_0) = arg1
        uint256(stor5[address(msg.sender)][uint256(stor5[address(msg.sender)].field_0)].field_256) = msg.value
        stor1.length++
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + code.data[1195 len 32] + 1
            while code.data[1195 len 32] + stor2.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        stor2[stor2.length] = msg.sender or Mask(96, 160, stor2[stor2.length])
    if stor1.length >= stor0:
        s = 0
        idx = 0
        while idx < stor0:
            require idx < stor2.length
            mem[32] = 5
            require 0 < uint256(stor5[address(stor[code.data[1195 len 32] + idx])].field_0)
            stor4.length++
            if not stor4.length > stor4.length + 1:
                mem[0] = 4
                stor4[stor4.length] = uint256(stor5[address(stor[code.data[1195 len 32] + idx])].field_0)
                s = sha3(sha3(address(stor[code.data[1195 len 32] + idx]), 5))
                idx = idx + 1
                continue 
            t = stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64
            while stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > t:
                uint256(stor[t]) = 0
                t = t + 1
                continue 
            mem[0] = 4
            stor4[stor4.length] = uint256(stor5[address(stor[code.data[1195 len 32] + idx])].field_0)
            t = sha3(sha3(address(stor[code.data[1195 len 32] + idx]), 5))
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor0:
            require idx < stor2.length
            mem[32] = 5
            uint256(stor5[address(stor[code.data[1195 len 32] + idx])].field_0) = 0
            mem[0] = sha3(address(stor[code.data[1195 len 32] + idx]), 5)
            s = sha3(sha3(address(stor[code.data[1195 len 32] + idx]), 5))
            while sha3(sha3(address(stor[code.data[1195 len 32] + idx]), 5)) + (2 * uint256(stor5[address(stor[code.data[1195 len 32] + idx])].field_0)) > s:
                uint256(stor[s]) = 0
                stor1[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        stor3 = 0
        s = 0
        while s < stor0:
            require s < stor4.length
            mem[0] = 4
            stor3 += stor4[s]
            s = s + 1
            continue 
        require mulmod(stor3, 0, stor0) < stor2.length
        call address(stor[code.data[1195 len 32] + mulmod(stor3, 0, stor0)]) with:
           value 5 * 10^18 wei
             gas 0 wei
        call 0x2179987247aba70dc8a5bb0feafd4ef4b8f83797 with:
           value 2 * 10^17 wei
             gas 0 wei
        if 7 == mulmod(block.timestamp + stor3, 0, 50):
            require mulmod(stor3, 0, stor0) < stor2.length
            call address(stor[code.data[1195 len 32] + mulmod(stor3, 0, stor0)]) with:
               value eth.balance(this.address) - 10^18 wei
                 gas 0 wei
        stor1.length = 0
        stor3 = 0
        stor4.length = 0
        idx = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
        while stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        stor2.length = 0
        idx = code.data[1195 len 32]
        while code.data[1195 len 32] + stor2.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
}



}
