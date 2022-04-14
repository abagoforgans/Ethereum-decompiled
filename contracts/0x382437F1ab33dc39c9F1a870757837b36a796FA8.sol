contract main {


// =======================  Init code  ======================


uint8 stor0;
array of address stor1;
uint8 stor5;
uint256 stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor0 = 1
    mem[96] = 0x81c08d7daad149720d9aa17dd5bf1a9b864b1d79
    mem[128] = 0xf0af3a591d8055086483a7d81e0750b0af426f25
    mem[160] = 0x6d5d1e18ecfb06a4b686bbeba65081c6006693ca
    mem[192] = 0xc891a4c2f6a634bcad2aef0481fc7880ac404d35
    stor1.length = 4
    s = 0
    idx = 96
    while 224 > idx:
        stor1[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while stor1.length > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor8 = 4
    stor9 = 5
    stor10 = 6
    stor11 = 39400
    stor12 = 13980
    stor6 = msg.value
    stor7 = msg.sender
    return code.data[676 len 6463]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
