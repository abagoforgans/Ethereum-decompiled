contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor6;
address stor7;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;

function _fallback() payable {
    stor10 = 5000
    stor11 = 40000
    stor12 = 110
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 80000
    stor19 = 10
    require not msg.value
    if ext_code.size(0xe4d58f4645df8b865dbf2dae788836aedbbd2f63) > 0:
        bool(stor1.length) = 0
        stor1.length.field_1 = 11
        stor1.length.field_8 = 'eth_mainnet' / 256
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
        stor0 = 0xe4d58f4645df8b865dbf2dae788836aedbbd2f63
    else:
        if ext_code.size(0x11f3514e4605b14daa29eb17e785f8efb9a14aae) <= 0:
            create contract with 0 wei
                            code: code.data[10527 len 202]
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
            stor0 = 0x11f3514e4605b14daa29eb17e785f8efb9a14aae
    stor6 = msg.sender
    stor7 = msg.sender
    return code.data[731 len 9796]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
