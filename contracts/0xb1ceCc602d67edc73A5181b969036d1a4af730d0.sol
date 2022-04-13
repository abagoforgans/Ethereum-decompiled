contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor6;
address stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;

function _fallback() payable {
    stor9 = 5000
    stor10 = 40000
    stor11 = 110
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 80000
    stor18 = 10
    require not msg.value
    if ext_code.size(0xd6024614f11aa0bf185c6b91a5faa38df6bc8fe3) > 0:
        bool(stor1.length) = 0
        stor1.length.field_1 = 11
        stor1.length.field_8 = 'eth_mainnet' / 256
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
        stor0 = 0xd6024614f11aa0bf185c6b91a5faa38df6bc8fe3
    else:
        if ext_code.size(0x7a6bd2488bf655fff6fc4ac6659701d31e81289d) <= 0:
            create contract with 0 wei
                            code: code.data[14148 len 197]
            require create.new_address
            stor0 = address(create.new_address)
        else:
            bool(stor1.length) = 0
            stor1.length.field_1 = 12
            stor1.length.field_8 = 'eth_ropsten3' / 256
            idx = 0
            while stor1.length + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            stor0 = 0x7a6bd2488bf655fff6fc4ac6659701d31e81289d
    stor6 = msg.sender
    stor7 = msg.sender
    return code.data[788 len 13360]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
